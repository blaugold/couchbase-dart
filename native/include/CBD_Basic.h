#pragma once
#include "CBD_Base.h"
#include "stdbool.h"
#include "stddef.h"
#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct CBDErrorCode_ *CBDErrorCode;

void CBDErrorCode_Destroy(CBDErrorCode errorCode);

int CBDErrorCode_Code(CBDErrorCode errorCode);

void CBDErrorCode_Message(CBDErrorCode errorCode,
                          CBD_ReadStringCallback callback);

typedef struct CBDClusterCredentials_ *CBDClusterCredentials;

CBDClusterCredentials CBDClusterCredentials_Create();

void CBDClusterCredentials_Destroy(CBDClusterCredentials credentials);

void CBDClusterCredentials_SetUsername(CBDClusterCredentials credentials,
                                       char *buf, size_t size);

void CBDClusterCredentials_SetPassword(CBDClusterCredentials credentials,
                                       char *buf, size_t size);

#ifdef __cplusplus
} // extern "C"
#endif
