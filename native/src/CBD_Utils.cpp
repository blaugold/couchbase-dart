#include <CBD_Utils.hpp>

namespace couchbase::dart
{

void callReadStringCallback(const std::string &string,
                            CBD_ReadStringCallback callback)
{
    callback(string.data(), string.size());
}

std::error_code *copyToHeap(const std::error_code &ec)
{
    if (!ec) {
        return nullptr;
    }

    return new std::error_code(ec);
}
} // namespace couchbase::dart
