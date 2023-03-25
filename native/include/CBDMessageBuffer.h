#pragma once
#include "stdbool.h"
#include "stddef.h"
#include "stdint.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    void *data;
    size_t length;
} CBDSlice;

typedef struct CBDMessageBuffer_ *CBDMessageBuffer;

CBDMessageBuffer CBDMessageBuffer_Create(size_t initialCapacity);

void CBDMessageBuffer_Destroy(CBDMessageBuffer buffer);

void CBDMessageBuffer_Reset(CBDMessageBuffer buffer);

// Writing

void CBDMessageBuffer_WriteBool(CBDMessageBuffer buffer, bool value);

void CBDMessageBuffer_WriteUInt8(CBDMessageBuffer buffer, uint8_t value);

void CBDMessageBuffer_WriteInt8(CBDMessageBuffer buffer, int8_t value);

void CBDMessageBuffer_WriteUInt16(CBDMessageBuffer buffer, uint16_t value);

void CBDMessageBuffer_WriteInt16(CBDMessageBuffer buffer, int16_t value);

void CBDMessageBuffer_WriteUInt32(CBDMessageBuffer buffer, uint32_t value);

void CBDMessageBuffer_WriteInt32(CBDMessageBuffer buffer, int32_t value);

void CBDMessageBuffer_WriteUInt64(CBDMessageBuffer buffer, uint64_t value);

void CBDMessageBuffer_WriteInt64(CBDMessageBuffer buffer, int64_t value);

void CBDMessageBuffer_WriteFloat(CBDMessageBuffer buffer, float value);

void CBDMessageBuffer_WriteDouble(CBDMessageBuffer buffer, double value);

void *CBDMessageBuffer_Allocate(CBDMessageBuffer buffer, size_t size);

// Reading

bool CBDMessageBuffer_ReadBool(CBDMessageBuffer buffer);

uint8_t CBDMessageBuffer_ReadUInt8(CBDMessageBuffer buffer);

int8_t CBDMessageBuffer_ReadInt8(CBDMessageBuffer buffer);

uint16_t CBDMessageBuffer_ReadUInt16(CBDMessageBuffer buffer);

int16_t CBDMessageBuffer_ReadInt16(CBDMessageBuffer buffer);

uint32_t CBDMessageBuffer_ReadUInt32(CBDMessageBuffer buffer);

int32_t CBDMessageBuffer_ReadInt32(CBDMessageBuffer buffer);

uint64_t CBDMessageBuffer_ReadUInt64(CBDMessageBuffer buffer);

int64_t CBDMessageBuffer_ReadInt64(CBDMessageBuffer buffer);

float CBDMessageBuffer_ReadFloat(CBDMessageBuffer buffer);

double CBDMessageBuffer_ReadDouble(CBDMessageBuffer buffer);

CBDSlice CBDMessageBuffer_ReadData(CBDMessageBuffer buffer);

#ifdef __cplusplus
} // extern "C"
#endif
