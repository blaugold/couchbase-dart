#pragma once
#include <asio/io_context.hpp>
#include <core/cluster.hxx>
#include <memory>
#include <thread>

namespace couchbase::dart
{

class Connection
{

public:
    Connection();
    void asyncDestroy();

private:
    ~Connection();

    asio::io_context _io;
    std::thread _ioThread;
    std::shared_ptr<couchbase::core::cluster> _cluster;
};
}; // namespace couchbase::dart
