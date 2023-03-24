#include <CBD_Utils.hpp>

namespace couchbase::dart
{

void writeCommonError(MessageBuffer &buffer, const std::error_code &ec)
{
    buffer.writeInt64(ec.value());
    buffer.writeString(ec.message());
}

void writeOptionalCommonError(MessageBuffer &buffer, const std::error_code &ec)
{
    buffer.writeBool(!!ec);
    if (ec) {
        writeCommonError(buffer, ec);
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
