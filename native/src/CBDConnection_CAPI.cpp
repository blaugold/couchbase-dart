
#include <Connection.hpp>

extern "C" {

using namespace couchbase::dart;

Connection *CBDConnection_Create()
{
    return new Connection();
}

void CBDConnection_Destroy(Connection *connection)
{
    connection->asyncDestroy();
}
}