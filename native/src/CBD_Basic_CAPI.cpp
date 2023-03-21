
#include <CBD_Base.h>
#include <CBD_Utils.hpp>
#include <core/origin.hxx>
#include <stdlib.h>
#include <system_error>

extern "C" {

using namespace couchbase::dart;

void CBDErrorCode_Destroy(std::error_code *errorCode)
{
    delete errorCode;
}

int CBDErrorCode_Code(std::error_code *errorCode)
{
    return errorCode->value();
}

void CBDErrorCode_Message(std::error_code *errorCode,
                          CBD_ReadStringCallback callback)
{
    std::string message = errorCode->message();
    callReadStringCallback(message, callback);
}

couchbase::core::cluster_credentials *CBDClusterCredentials_Create()
{
    return new couchbase::core::cluster_credentials();
}

void CBDClusterCredentials_Destroy(
    couchbase::core::cluster_credentials *credentials)
{
    delete credentials;
}

void CBDClusterCredentials_SetUsername(
    couchbase::core::cluster_credentials *credentials, char *buf, size_t size)
{
    credentials->username = std::string(buf, size);
}

void CBDClusterCredentials_SetPassword(
    couchbase::core::cluster_credentials *credentials, char *buf, size_t size)
{
    credentials->password = std::string(buf, size);
}
}