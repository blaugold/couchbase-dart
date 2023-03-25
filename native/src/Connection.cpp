#include <Connection.hpp>
#include <Message_Basic.hpp>
#include <Message_Errors.hpp>
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
    Response response(this, request);

    auto connectionString =
        couchbase::core::utils::parse_connection_string(request->readString());
    auto credentials =
        read_cbpp<couchbase::core::cluster_credentials>(*request);
    auto origin = couchbase::core::origin(credentials, connectionString);

    _cluster->open(origin, [response](std::error_code ec) mutable {
        response.complete(
            [ec](MessageBuffer &response) { writeError(response, ec); });
    });
}

void Connection::close(MessageBuffer *request)
{
    Response response(this, request);

    _cluster->close([response]() mutable {
        response.complete([](MessageBuffer &response) {});
    });
}

void Connection::openBucket(MessageBuffer *request)
{
    Response response(this, request);

    auto bucketName = request->readString();

    _cluster->open_bucket(bucketName, [response](std::error_code ec) mutable {
        response.complete(
            [ec](MessageBuffer &response) { writeError(response, ec); });
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
