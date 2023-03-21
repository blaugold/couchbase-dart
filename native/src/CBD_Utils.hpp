#pragma once
#include <CBD_Base.h>
#include <system_error>

namespace couchbase::dart
{

void callReadStringCallback(const std::string &string,
                            CBD_ReadStringCallback callback);

std::error_code *copyToHeap(const std::error_code &ec);

} // namespace couchbase::dart
