#pragma once
#include "stdbool.h"
#include "stddef.h"
#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef int64_t CBD_Callback;

typedef struct {
    const void *data;
    size_t size;
} CBDBuffer;

CBDBuffer *CBDBuffer_Create(size_t size);

void CBDBuffer_Destroy(CBDBuffer *buffer);

typedef struct {
    int code;
    CBDBuffer *message;
} CBDErrorCode;

CBDErrorCode *CBDErrorCode_Create(int code, CBDBuffer *message);

void CBDErrorCode_Destroy(CBDErrorCode *errorCode);

typedef struct {
    CBDBuffer *username;
    CBDBuffer *password;
} CBDClusterCredentials;

CBDClusterCredentials *CBDClusterCredentials_Create();

void CBDClusterCredentials_Destroy(const CBDClusterCredentials *credentials);

#ifdef __cplusplus
} // extern "C"
#endif
