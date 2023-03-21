#pragma once
#include "CBD_Base.h"
#include "dart_api_dl.h"
#include "stdbool.h"
#include "stddef.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CBDConnection_ CBDConnection;

CBDConnection *CBDConnection_Create(Dart_Port_DL port);

void CBDConnection_Destroy(CBDConnection *connection);

void CBDConnection_Open(CBDConnection *connection, CBDBuffer *connectionString,
                        CBDClusterCredentials *credentials,
                        CBD_Callback callback);

void CBDConnection_Close(CBDConnection *connection, CBD_Callback callback);

#ifdef __cplusplus
} // extern "C"
#endif
