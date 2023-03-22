#include <CBD_Utils.hpp>
#include <Connection.hpp>
#include <dart_api_dl.h>
#include <iostream>

namespace couchbase::dart
{

Connection::Connection(Dart_Port_DL port)
    : _port(port)
    , _cluster(couchbase::core::cluster::create(_io))
{
    _ioThread = std::thread([this]() { _io.run(); });
}

void Connection::destroy()
{
    _cluster->close([this]() mutable {
        // We have to run this on a separate thread since the callback itself is
        // actually running from within the io context.
        std::thread([this]() {
            _ioThread.join();
            delete this;
        }).detach();
    });
}

void Connection::open(MessageBuffer *request)
{
    auto requestId = request->readInt64();
    auto connectionString =
        couchbase::core::utils::parse_connection_string(request->readString());
    auto credentials = readClusterCredentials(*request);

    _cluster->open(couchbase::core::origin(credentials, connectionString),
                   [this, request, requestId](std::error_code ec) mutable {
                       request->reset();
                       writeOptionalErrorCode(*request, ec);
                       request->reset();
                       this->completeRequest(requestId);
                   });
}

void Connection::close(MessageBuffer *request)
{
    auto requestId = request->readInt64();

    _cluster->close([this, request, requestId]() mutable {
        request->reset();
        this->completeRequest(requestId);
    });
}

void Connection::openBucket(MessageBuffer *request)
{
    auto requestId = request->readInt64();
    auto bucketName = request->readString();

    _cluster->open_bucket(
        bucketName, [this, request, requestId](std::error_code ec) mutable {
            request->reset();
            writeOptionalErrorCode(*request, ec);
            request->reset();
            this->completeRequest(requestId);
        });
}

Connection::~Connection()
{
}

void Connection::completeRequest(int64_t requestId)
{
    Dart_PostInteger_DL(_port, requestId);
}

}; // namespace couchbase::dart
