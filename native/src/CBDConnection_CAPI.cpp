
#include <CBD_Base.h>
#include <Connection.hpp>
#include <dart_api_dl.h>

extern "C" {

using namespace couchbase::dart;

Connection *CBDConnection_Create(Dart_Port_DL port)
{
    return new Connection(port);
}

void CBDConnection_Destroy(Connection *connection)
{
    connection->destroy();
}

void CBDConnection_Open(Connection *connection, CBDBuffer *connectionString,
                        CBDClusterCredentials *credentials,
                        CBD_Callback callback)
{
    connection->open(connectionString, credentials, callback);
}

void CBDConnection_Close(Connection *connection, CBD_Callback callback)
{
    connection->close(callback);
}
}