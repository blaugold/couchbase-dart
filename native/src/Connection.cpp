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

Connection::~Connection()
{
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

void Connection::callCallback(CBD_Callback callback, void *response)
{
    Dart_CObject callback_;
    callback_.type = Dart_CObject_kInt64;
    callback_.value.as_int64 = callback;

    Dart_CObject response_;
    response_.type = Dart_CObject_kInt64;
    response_.value.as_int64 = reinterpret_cast<int64_t>(response);

    Dart_CObject *messageValues[] = {&callback_, &response_};
    Dart_CObject message;
    message.type = Dart_CObject_kArray;
    message.value.as_array.length = 2;
    message.value.as_array.values = messageValues;

    Dart_PostCObject_DL(_port, &message);
}

void Connection::open(std::string connectionString,
                      couchbase::core::cluster_credentials *credentials,
                      CBD_Callback callback)
{
    auto connectionStringInfo =
        couchbase::core::utils::parse_connection_string(connectionString);

    _cluster->open(couchbase::core::origin(*credentials, connectionStringInfo),
                   [this, callback](std::error_code ec) mutable {
                       this->callCallback(callback, copyToHeap(ec));
                   });
}

void Connection::close(CBD_Callback callback)
{
    _cluster->close(
        [this, callback]() mutable { this->callCallback(callback, nullptr); });
}

void Connection::openBucket(std::string bucketName, CBD_Callback callback)
{
    _cluster->open_bucket(bucketName,
                          [this, callback](std::error_code ec) mutable {
                              this->callCallback(callback, copyToHeap(ec));
                          });
}
}; // namespace couchbase::dart
