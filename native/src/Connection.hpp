#pragma once
#include <CBD_Base.h>
#include <asio/io_context.hpp>
#include <core/cluster.hxx>
#include <dart_api_dl.h>
#include <memory>
#include <thread>

namespace couchbase::dart
{

class Connection
{

public:
    Connection(Dart_Port_DL port);

    void asyncDestroy();

    void open(CBDBuffer *connectionString, CBDClusterCredentials *credentials,
              CBD_Callback callback);

private:
    ~Connection();

    void callCallback(CBD_Callback callback, void *response);

    Dart_Port_DL _port;
    asio::io_context _io;
    std::thread _ioThread;
    std::shared_ptr<couchbase::core::cluster> _cluster;
};
}; // namespace couchbase::dart
