
#include <Connection.hpp>
#include <MessageBuffer.hpp>

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

void CBDConnection_Open(Connection *connection, MessageBuffer *request)
{
    connection->open(request);
}

void CBDConnection_Close(Connection *connection, MessageBuffer *request)
{
    connection->close(request);
}

void CBDConnection_OpenBucket(Connection *connection, MessageBuffer *request)
{
    connection->openBucket(request);
}
}