#pragma once
#include "stddef.h"
#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef int64_t CBD_Callback;

typedef void (*CBD_ReadStringCallback)(const char *buf, size_t size);

#ifdef __cplusplus
} // extern "C"
#endif
