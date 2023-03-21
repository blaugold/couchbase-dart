#pragma once
#include "CBD_Base.h"
#include "CBD_Basic.h"
#include "dart_api_dl.h"
#include "stdbool.h"
#include "stddef.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CBDConnection_ CBDConnection;

CBDConnection *CBDConnection_Create(Dart_Port_DL port);

void CBDConnection_Destroy(CBDConnection *connection);

void CBDConnection_Open(CBDConnection *connection, char *connectionStringBuf,
                        size_t connectionStringSize,
                        CBDClusterCredentials credentials,
                        CBD_Callback callback);

void CBDConnection_Close(CBDConnection *connection, CBD_Callback callback);

void CBDConnection_OpenBucket(CBDConnection *connection, char *bucketNameBuf,
                              size_t bucketNameSize, CBD_Callback callback);

#ifdef __cplusplus
} // extern "C"
#endif
