#include <CBD_Utils.hpp>

namespace couchbase::dart
{

void writeErrorCode(MessageBuffer &buffer, const std::error_code &ec)
{
    buffer.writeInt64(ec.value());
    buffer.writeString(ec.message());
}

void writeOptionalErrorCode(MessageBuffer &buffer, const std::error_code &ec)
{
    buffer.writeBool(!!ec);
    if (ec) {
        writeErrorCode(buffer, ec);
    }
}

couchbase::core::cluster_credentials
readClusterCredentials(MessageBuffer &buffer)
{
    couchbase::core::cluster_credentials credentials;
    credentials.username = buffer.readString();
    credentials.password = buffer.readString();
    return credentials;
}

} // namespace couchbase::dart
