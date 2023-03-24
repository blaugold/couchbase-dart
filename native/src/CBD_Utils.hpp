#pragma once
#include <MessageBuffer.hpp>
#include <core/origin.hxx>
#include <system_error>

namespace couchbase::dart
{

void writeCommonError(MessageBuffer &buffer, const std::error_code &ec);

void writeOptionalCommonError(MessageBuffer &buffer, const std::error_code &ec);

couchbase::core::cluster_credentials
readClusterCredentials(MessageBuffer &buffer);

} // namespace couchbase::dart
