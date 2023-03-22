#pragma once
#include <MessageBuffer.hpp>
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

    void destroy();

    void open(MessageBuffer *request);

    void close(MessageBuffer *request);

    void openBucket(MessageBuffer *request);

private:
    ~Connection();

    void completeRequest(int64_t requestId);

    Dart_Port_DL _port;
    asio::io_context _io;
    std::thread _ioThread;
    std::shared_ptr<couchbase::core::cluster> _cluster;
};
}; // namespace couchbase::dart
