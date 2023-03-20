
#include <CBD_Base.h>
#include <stdlib.h>

extern "C" {
CBDBuffer *CBDBuffer_Create(size_t size)
{
    CBDBuffer *buffer = (CBDBuffer *)malloc(sizeof(CBDBuffer));
    buffer->data = malloc(size);
    buffer->size = size;
    return buffer;
}

void CBDBuffer_Destroy(CBDBuffer *buffer)
{
    free((void *)buffer->data);
    free(buffer);
}

CBDErrorCode *CBDErrorCode_Create(int code, CBDBuffer *message)
{
    CBDErrorCode *errorCode = (CBDErrorCode *)malloc(sizeof(CBDErrorCode));
    errorCode->code = code;
    errorCode->message = message;
    return errorCode;
}

void CBDErrorCode_Destroy(CBDErrorCode *errorCode)
{
    CBDBuffer_Destroy(errorCode->message);
    free(errorCode);
}

CBDClusterCredentials *CBDClusterCredentials_Create()
{
    return (CBDClusterCredentials *)calloc(1, sizeof(CBDClusterCredentials));
}

void CBDClusterCredentials_Destroy(const CBDClusterCredentials *credentials)
{
    if (credentials->username)
        CBDBuffer_Destroy(credentials->username);
    if (credentials->password)
        CBDBuffer_Destroy(credentials->password);
    free((void *)credentials);
}
}