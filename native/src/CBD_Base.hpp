#pragma once
#include <CBD_Base.h>
#include <core/origin.hxx>
#include <string>

namespace couchbase::dart
{
std::string CBDBuffer_ToString(CBDBuffer *buffer);

CBDBuffer *CBDBuffer_FromString(const std::string_view &str);

CBDErrorCode *CBDErrorCode_FromCpp(const std::error_code &ec);

couchbase::core::cluster_credentials
CBDClusterCredentials_ToCpp(CBDClusterCredentials *credentials);
} // namespace couchbase::dart
