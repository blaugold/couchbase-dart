#pragma once

#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

namespace couchbase::dart
{

struct Slice {
    const void *data;
    size_t length;

    std::string toString() const;
};

class MessageBuffer
{

public:
    MessageBuffer(size_t initialCapacity = 1024);

    ~MessageBuffer();

    void reset();

    // Writing

    void writeBool(bool value);

    void writeUInt8(uint8_t value);

    void writeInt8(int8_t value);

    void writeUInt16(uint16_t value);

    void writeInt16(int16_t value);

    void writeUInt32(uint32_t value);

    void writeInt32(int32_t value);

    void writeUInt64(uint64_t value);

    void writeInt64(int64_t value);

    void writeFloat(float value);

    void writeDouble(double value);

    void *allocate(size_t size);

    void writeData(const Slice value);

    void writeString(const std::string &value);

    // Reading

    bool readBool();

    uint8_t readUInt8();

    int8_t readInt8();

    uint16_t readUInt16();

    int16_t readInt16();

    uint32_t readUInt32();

    int32_t readInt32();

    int64_t readInt64();

    uint64_t readUInt64();

    float readFloat();

    double readDouble();

    Slice readData();

    std::string readString();

private:
    size_t size() const;

    size_t offset() const;

    size_t remainingCapacity() const;

    void ensureCapacity(size_t additionalCapacity);

    void checkCanRead(size_t bytesToRead) const;

    uint8_t *_start;
    uint8_t *_end;
    uint8_t *_position;
    size_t _capacity;
};

} // namespace couchbase::dart
