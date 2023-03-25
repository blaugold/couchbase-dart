#include <Message_Errors.hpp>

namespace couchbase::dart
{

bool writeError(MessageBuffer &buffer, const std::error_code &ec)
{
    buffer.writeBool(!!ec);
    if (ec) {
        write_cbpp(buffer, ec);
        return true;
    }
    return false;
}

} // namespace couchbase::dart
