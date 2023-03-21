
#include <CBD_Base.h>
#include <Connection.hpp>
#include <core/origin.hxx>
#include <dart_api_dl.h>
#include <string>

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

void CBDConnection_Open(Connection *connection, char *connectionStringBuf,
                        size_t connectionStringSize,
                        couchbase::core::cluster_credentials *credentials,
                        CBD_Callback callback)
{
    connection->open(std::string(connectionStringBuf, connectionStringSize),
                     credentials, callback);
}

void CBDConnection_Close(Connection *connection, CBD_Callback callback)
{
    connection->close(callback);
}

void CBDConnection_OpenBucket(Connection *connection, char *bucketNameBuf,
                              size_t bucketNameSize, CBD_Callback callback)
{
    connection->openBucket(std::string(bucketNameBuf, bucketNameSize),
                           callback);
}
}