#pragma once
#include <MessageBuffer.hpp>
#include <core/origin.hxx>
#include <system_error>

namespace couchbase::dart
{

void writeErrorCode(MessageBuffer &buffer, const std::error_code &ec);

void writeOptionalErrorCode(MessageBuffer &buffer, const std::error_code &ec);

couchbase::core::cluster_credentials
readClusterCredentials(MessageBuffer &buffer);


} // namespace couchbase::dart
