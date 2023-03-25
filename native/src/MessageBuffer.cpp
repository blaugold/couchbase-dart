#include <MessageBuffer.hpp>

#include <cstdlib>
#include <cstring>
#include <sstream>
#include <string>
#include <iostream>

namespace couchbase::dart
{

std::string Slice::toString() const
{
    return std::string((const char *)data, length);
}

MessageBuffer::MessageBuffer(size_t initialCapacity)
{
    _start = (uint8_t *)malloc(initialCapacity);
    if (_start == nullptr) {
        throw std::bad_alloc();
    }
    _end = _start;
    _position = _start;
    _capacity = initialCapacity;
}

MessageBuffer::~MessageBuffer()
{
    free(_start);
}

void MessageBuffer::reset()
{
    _end = _position;
    _position = _start;
}

void MessageBuffer::writeBool(bool value)
{
    ensureCapacity(sizeof(bool));
    *((bool *)_position) = value;
    _position += sizeof(bool);
}

void MessageBuffer::writeUInt8(uint8_t value)
{
    ensureCapacity(sizeof(uint8_t));
    *((uint8_t *)_position) = value;
    _position += sizeof(uint8_t);
}

void MessageBuffer::writeInt8(int8_t value)
{
    ensureCapacity(sizeof(int8_t));
    *((int8_t *)_position) = value;
    _position += sizeof(int8_t);
}

void MessageBuffer::writeUInt16(uint16_t value)
{
    ensureCapacity(sizeof(uint16_t));
    *((uint16_t *)_position) = value;
    _position += sizeof(uint16_t);
}

void MessageBuffer::writeInt16(int16_t value)
{
    ensureCapacity(sizeof(int16_t));
    *((int16_t *)_position) = value;
    _position += sizeof(int16_t);
}

void MessageBuffer::writeUInt32(uint32_t value)
{
    ensureCapacity(sizeof(uint32_t));
    *((uint32_t *)_position) = value;
    _position += sizeof(uint32_t);
}

void MessageBuffer::writeInt32(int32_t value)
{
    ensureCapacity(sizeof(int32_t));
    *((int32_t *)_position) = value;
    _position += sizeof(int32_t);
}

void MessageBuffer::writeUInt64(uint64_t value)
{
    ensureCapacity(sizeof(uint64_t));
    *((uint64_t *)_position) = value;
    _position += sizeof(uint64_t);
}

void MessageBuffer::writeInt64(int64_t value)
{
    ensureCapacity(sizeof(int64_t));
    *((int64_t *)_position) = value;
    _position += sizeof(int64_t);
}

void MessageBuffer::writeFloat(float value)
{
    ensureCapacity(sizeof(float));
    *((float *)_position) = value;
    _position += sizeof(float);
}

void MessageBuffer::writeDouble(double value)
{
    ensureCapacity(sizeof(double));
    *((double *)_position) = value;
    _position += sizeof(double);
}

void *MessageBuffer::allocate(size_t size)
{
    writeUInt64(size);
    ensureCapacity(size);
    auto result = _position;
    _position += size;
    return result;
}

void MessageBuffer::writeData(const Slice value)
{
    std::memcpy(allocate(value.length), value.data, value.length);
}

void MessageBuffer::writeString(const std::string &value)
{
    writeData({value.data(), value.length()});
}

bool MessageBuffer::readBool()
{
    checkCanRead(sizeof(bool));
    bool value = *((bool *)_position);
    _position += sizeof(bool);
    return value;
}

uint8_t MessageBuffer::readUInt8()
{
    checkCanRead(sizeof(uint8_t));
    uint8_t value = *((uint8_t *)_position);
    _position += sizeof(uint8_t);
    return value;
}

int8_t MessageBuffer::readInt8()
{
    checkCanRead(sizeof(int8_t));
    int8_t value = *((int8_t *)_position);
    _position += sizeof(int8_t);
    return value;
}

uint16_t MessageBuffer::readUInt16()
{
    checkCanRead(sizeof(uint16_t));
    uint16_t value = *((uint16_t *)_position);
    _position += sizeof(uint16_t);
    return value;
}

int16_t MessageBuffer::readInt16()
{
    checkCanRead(sizeof(int16_t));
    int16_t value = *((int16_t *)_position);
    _position += sizeof(int16_t);
    return value;
}

uint32_t MessageBuffer::readUInt32()
{
    checkCanRead(sizeof(uint32_t));
    uint32_t value = *((uint32_t *)_position);
    _position += sizeof(uint32_t);
    return value;
}

int32_t MessageBuffer::readInt32()
{
    checkCanRead(sizeof(int32_t));
    int32_t value = *((int32_t *)_position);
    _position += sizeof(int32_t);
    return value;
}

uint64_t MessageBuffer::readUInt64()
{
    checkCanRead(sizeof(uint64_t));
    uint64_t value = *((uint64_t *)_position);
    _position += sizeof(uint64_t);
    return value;
}

int64_t MessageBuffer::readInt64()
{
    checkCanRead(sizeof(int64_t));
    int64_t value = *((int64_t *)_position);
    _position += sizeof(int64_t);
    return value;
}

float MessageBuffer::readFloat()
{
    checkCanRead(sizeof(float));
    float value = *((float *)_position);
    _position += sizeof(float);
    return value;
}

double MessageBuffer::readDouble()
{
    checkCanRead(sizeof(double));
    double value = *((double *)_position);
    _position += sizeof(double);
    return value;
}

Slice MessageBuffer::readData()
{
    uint64_t length = readUInt64();
    checkCanRead(length);
    Slice slice = {_position, length};
    _position += length;
    return slice;
}

std::string MessageBuffer::readString()
{
    return readData().toString();
}

size_t MessageBuffer::size() const
{
    return _end - _start;
}

size_t MessageBuffer::offset() const
{
    return _position - _start;
}

size_t MessageBuffer::remainingCapacity() const
{
    return _capacity - offset();
}

void MessageBuffer::ensureCapacity(size_t additionalCapacity)
{
    if (remainingCapacity() >= additionalCapacity) {
        return;
    }

    size_t oldLength = offset();
    size_t newLength = oldLength + additionalCapacity;
    size_t newCapacity = _capacity * 2;
    if (newCapacity < newLength) {
        newCapacity = newLength * 2;
    }

    auto newStart = (uint8_t *)realloc(_start, newCapacity);
    if (newStart == nullptr) {
        throw std::bad_alloc();
    }

    _start = newStart;
    _position = _start + oldLength;
    _capacity = newCapacity;
}

void MessageBuffer::checkCanRead(size_t bytesToRead) const
{
    if (offset() + bytesToRead > size()) {
        std::ostringstream oss;
        oss << "Cannot read " << bytesToRead << " bytes from MessageBuffer of size "
            << size() << " at offset " << offset() << ".";
        std::string message = oss.str();
        std::cerr << message << std::endl;
        throw std::out_of_range(message);
    }
}

}; // namespace couchbase::dart
