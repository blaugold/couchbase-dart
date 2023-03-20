#include <CBD_Base.hpp>

namespace couchbase::dart
{
std::string CBDBuffer_ToString(CBDBuffer *buffer)
{
    return std::string((char *)buffer->data, buffer->size);
}

CBDBuffer *CBDBuffer_FromString(const std::string_view &str)
{
    auto *buffer = CBDBuffer_Create(str.size());
    memcpy((void *)buffer->data, str.data(), str.size());
    return buffer;
}

CBDErrorCode *CBDErrorCode_FromCpp(const std::error_code &ec)
{
    if (!ec) {
        return nullptr;
    }

    return CBDErrorCode_Create(ec.value(), CBDBuffer_FromString(ec.message()));
}

couchbase::core::cluster_credentials
CBDClusterCredentials_ToCpp(CBDClusterCredentials *credentials)
{
    couchbase::core::cluster_credentials result;
    result.username = CBDBuffer_ToString(credentials->username);
    result.password = CBDBuffer_ToString(credentials->password);
    return result;
}
} // namespace couchbase::dart
