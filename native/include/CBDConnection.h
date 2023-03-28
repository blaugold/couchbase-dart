#pragma once
#include "CBDMessageBuffer.h"
#include "dart_api_dl.h"
#include "stdbool.h"
#include "stddef.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CBDConnection_ *CBDConnection;

CBDConnection CBDConnection_Create(Dart_Port_DL port);

void CBDConnection_Destroy(CBDConnection connection);

void CBDConnection_Open(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_Close(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_OpenBucket(CBDConnection connection,
                              CBDMessageBuffer request);

void CBDConnection_Diagnostics(CBDConnection connection,
                               CBDMessageBuffer request);

void CBDConnection_Ping(CBDConnection connection, CBDMessageBuffer request);

#ifdef __cplusplus
} // extern "C"
#endif
