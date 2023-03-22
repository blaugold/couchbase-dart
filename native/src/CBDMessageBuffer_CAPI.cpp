
#include <MessageBuffer.hpp>

extern "C" {

using namespace couchbase::dart;

MessageBuffer *CBDMessageBuffer_Create(size_t initialCapacity)
{
    return new MessageBuffer(initialCapacity);
}

void CBDMessageBuffer_Destroy(MessageBuffer *buffer)
{
    delete buffer;
}

void CBDMessageBuffer_Reset(MessageBuffer *buffer)
{
    buffer->reset();
}

void CBDMessageBuffer_WriteBool(MessageBuffer *buffer, bool value)
{
    buffer->writeBool(value);
}

void CBDMessageBuffer_WriteUInt8(MessageBuffer *buffer, uint8_t value)
{
    buffer->writeUInt8(value);
}

void CBDMessageBuffer_WriteInt8(MessageBuffer *buffer, int8_t value)
{
    buffer->writeInt8(value);
}

void CBDMessageBuffer_WriteUInt16(MessageBuffer *buffer, uint16_t value)
{
    buffer->writeUInt16(value);
}

void CBDMessageBuffer_WriteInt16(MessageBuffer *buffer, int16_t value)
{
    buffer->writeInt16(value);
}

void CBDMessageBuffer_WriteUInt32(MessageBuffer *buffer, uint32_t value)
{
    buffer->writeUInt32(value);
}

void CBDMessageBuffer_WriteInt32(MessageBuffer *buffer, int32_t value)
{
    buffer->writeInt32(value);
}

void CBDMessageBuffer_WriteUInt64(MessageBuffer *buffer, uint64_t value)
{
    buffer->writeUInt64(value);
}

void CBDMessageBuffer_WriteInt64(MessageBuffer *buffer, int64_t value)
{
    buffer->writeInt64(value);
}

void CBDMessageBuffer_WriteDouble(MessageBuffer *buffer, double value)
{
    buffer->writeDouble(value);
}

void *CBDMessageBuffer_Allocate(MessageBuffer *buffer, size_t size)
{
    return buffer->allocate(size);
}

bool CBDMessageBuffer_ReadBool(MessageBuffer *buffer)
{
    return buffer->readBool();
}

uint8_t CBDMessageBuffer_ReadUInt8(MessageBuffer *buffer)
{
    return buffer->readUInt8();
}

int8_t CBDMessageBuffer_ReadInt8(MessageBuffer *buffer)
{
    return buffer->readInt8();
}

uint16_t CBDMessageBuffer_ReadUInt16(MessageBuffer *buffer)
{
    return buffer->readUInt16();
}

int16_t CBDMessageBuffer_ReadInt16(MessageBuffer *buffer)
{
    return buffer->readInt16();
}

uint32_t CBDMessageBuffer_ReadUInt32(MessageBuffer *buffer)
{
    return buffer->readUInt32();
}

int32_t CBDMessageBuffer_ReadInt32(MessageBuffer *buffer)
{
    return buffer->readInt32();
}

uint64_t CBDMessageBuffer_ReadUInt64(MessageBuffer *buffer)
{
    return buffer->readUInt64();
}

int64_t CBDMessageBuffer_ReadInt64(MessageBuffer *buffer)
{
    return buffer->readInt64();
}

double CBDMessageBuffer_ReadDouble(MessageBuffer *buffer)
{
    return buffer->readDouble();
}

Slice CBDMessageBuffer_ReadData(MessageBuffer *buffer)
{
    return buffer->readData();
}

} // extern "C"
