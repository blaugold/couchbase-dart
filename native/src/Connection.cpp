#include <Connection.hpp>

namespace couchbase::dart
{

Connection::Connection()
    : _cluster(couchbase::core::cluster::create(_io))
{
    _ioThread = std::thread([this]() { _io.run(); });
}

Connection::~Connection()
{
}

void Connection::asyncDestroy()
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

}; // namespace couchbase::dart
