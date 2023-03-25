#pragma once

#include <Message.hpp>
#include <cstddef>
#include <cstdint>
#include <cstring>

namespace couchbase::dart
{

// Integral types

template <typename T>
struct message_codec_t<T, typename std::enable_if_t<std::is_integral_v<T>>> {
    static inline T read(MessageBuffer &buffer)
    {
        if constexpr (std::is_same_v<T, bool>) {
            return buffer.readBool();
        } else {
            return static_cast<T>(buffer.readInt64());
        }
    }

    static inline void write(MessageBuffer &buffer, const T value)
    {
        if constexpr (std::is_same_v<T, bool>) {
            buffer.writeBool(value);
        } else {
            buffer.writeInt64(static_cast<int64_t>(value));
        }
    }
};

// Floating point types

template <>
struct message_codec_t<float> {
    static inline float read(MessageBuffer &buffer)
    {
        return buffer.readFloat();
    }

    static inline void write(MessageBuffer &buffer, const float value)
    {
        buffer.writeFloat(value);
    }
};

template <>
struct message_codec_t<double> {
    static inline double read(MessageBuffer &buffer)
    {
        return buffer.readDouble();
    }

    static inline void write(MessageBuffer &buffer, const double value)
    {
        buffer.writeDouble(value);
    }
};

// Enum types

template <typename T>
struct message_codec_t<T, std::enable_if_t<std::is_enum_v<T>>> {
    static inline T read(MessageBuffer &buffer)
    {
        return static_cast<T>(buffer.readInt64());
    }

    static inline void write(MessageBuffer &buffer, const T value)
    {
        buffer.writeInt64(static_cast<int64_t>(value));
    }
};

// std::string

template <>
struct message_codec_t<std::string> {
    static inline std::string read(MessageBuffer &buffer)
    {
        return buffer.readString();
    }

    static inline void write(MessageBuffer &buffer, const std::string &value)
    {
        buffer.writeString(value);
    }
};

// std::chrono::seconds

template <>
struct message_codec_t<std::chrono::seconds> {
    static inline std::chrono::seconds read(MessageBuffer &buffer)
    {
        return std::chrono::duration_cast<std::chrono::seconds>(
            buffer.readInt64() * std::chrono::microseconds(1));
    }

    static inline void write(MessageBuffer &buffer,
                             const std::chrono::seconds value)
    {
        buffer.writeInt64(std::chrono::microseconds(value).count());
    }
};

// std::chrono::milliseconds

template <>
struct message_codec_t<std::chrono::milliseconds> {
    static inline std::chrono::milliseconds read(MessageBuffer &buffer)
    {
        return std::chrono::duration_cast<std::chrono::milliseconds>(
            buffer.readInt64() * std::chrono::microseconds(1));
    }

    static inline void write(MessageBuffer &buffer,
                             const std::chrono::milliseconds value)
    {
        buffer.writeInt64(std::chrono::microseconds(value).count());
    }
};

// std::chrono::microseconds

template <>
struct message_codec_t<std::chrono::microseconds> {
    static inline std::chrono::microseconds read(MessageBuffer &buffer)
    {
        return std::chrono::microseconds(buffer.readInt64());
    }

    static inline void write(MessageBuffer &buffer,
                             const std::chrono::microseconds value)
    {
        buffer.writeInt64(value.count());
    }
};

// std::chrono::nanoseconds

template <>
struct message_codec_t<std::chrono::nanoseconds> {
    static inline std::chrono::nanoseconds read(MessageBuffer &buffer)
    {
        return std::chrono::nanoseconds(buffer.readInt64() *
                                        std::chrono::microseconds(1));
    }

    static inline void write(MessageBuffer &buffer,
                             const std::chrono::nanoseconds value)
    {
        buffer.writeInt64(
            std::chrono::duration_cast<std::chrono::microseconds>(value)
                .count());
    }
};

// std::monostate

template <>
struct message_codec_t<std::monostate> {
    static inline std::monostate read(MessageBuffer &buffer)
    {
        return std::monostate();
    }

    static inline void write(MessageBuffer &buffer, const std::monostate value)
    {
        // Nothing to do
    }
};

// std::optional

template <typename T>
struct message_codec_t<std::optional<T>> {
    static inline std::optional<T> read(MessageBuffer &buffer)
    {
        if (!buffer.readBool()) {
            return std::optional<T>();
        }
        return read_cbpp<T>(buffer);
    }

    static inline void write(MessageBuffer &buffer,
                             const std::optional<T> &value)
    {
        buffer.writeBool(!!value);
        if (value)
            write_cbpp<T>(buffer, value.value());
    }
};

// std::vector

template <typename T>
struct message_codec_t<std::vector<T>> {
    static inline std::vector<T> read(MessageBuffer &buffer)
    {
        std::vector<T> result;
        auto size = buffer.readUInt64();
        result.reserve(size);
        for (size_t i = 0; i < size; i++) {
            result.push_back(read_cbpp<T>(buffer));
        }
        return result;
    }

    static inline void write(MessageBuffer &buffer, const std::vector<T> &value)
    {
        buffer.writeUInt64(value.size());
        for (const auto &item : value) {
            write_cbpp<T>(buffer, item);
        }
    }
};

// std::array

template <typename T, size_t N>
struct message_codec_t<std::array<T, N>> {
    static inline std::array<T, N> read(MessageBuffer &buffer)
    {
        std::array<T, N> result;
        for (size_t i = 0; i < N; i++) {
            result[i] = read_cbpp<T>(buffer);
        }
        return result;
    }

    static inline void write(MessageBuffer &buffer,
                             const std::array<T, N> &value)
    {
        for (const auto &item : value) {
            write_cbpp<T>(buffer, item);
        }
    }
};

// std::set

template <typename T>
struct message_codec_t<std::set<T>> {
    static inline std::set<T> read(MessageBuffer &buffer)
    {
        std::set<T> result;
        auto size = buffer.readUInt64();
        for (size_t i = 0; i < size; i++) {
            result.insert(read_cbpp<T>(buffer));
        }
        return result;
    }

    static inline void write(MessageBuffer &buffer, const std::set<T> &value)
    {
        buffer.writeUInt64(value.size());
        for (const auto &item : value) {
            write_cbpp<T>(buffer, item);
        }
    }
};

// std::map<string, ...>

template <typename T, typename... Args>
struct message_codec_t<std::map<std::string, T, Args...>> {
    static inline std::map<std::string, T, Args...> read(MessageBuffer &buffer)
    {
        std::map<std::string, T, Args...> result;
        auto size = buffer.readUInt64();
        for (size_t i = 0; i < size; i++) {
            auto key = buffer.readString();
            result[key] = read_cbpp<T>(buffer);
        }
        return result;
    }

    static inline void write(MessageBuffer &buffer,
                             const std::map<std::string, T, Args...> &value)
    {
        buffer.writeUInt64(value.size());
        for (const auto &item : value) {
            buffer.writeString(item.first);
            write_cbpp<T>(buffer, item.second);
        }
    }
};

// std::map<enum, ...>

template <typename K, typename T>
struct message_codec_t<std::map<K, T>,
                       typename std::enable_if_t<std::is_enum_v<K>>> {
    static inline std::map<K, T> read(MessageBuffer &buffer)
    {
        std::map<K, T> result;
        auto size = buffer.readUInt64();
        for (size_t i = 0; i < size; i++) {
            auto key = static_cast<K>(buffer.readUInt64());
            result[key] = read_cbpp<T>(buffer);
        }
        return result;
    }

    static inline void write(MessageBuffer &buffer, const std::map<K, T> &value)
    {
        buffer.writeUInt64(value.size());
        for (const auto &item : value) {
            buffer.writeUInt64(static_cast<uint64_t>(item.first));
            write_cbpp<T>(buffer, item.second);
        }
    }
};

// std::variant

template <typename... Types>
struct message_codec_t<std::variant<Types...>> {
    template <size_t I = 0>
    static inline std::variant<Types...> read(MessageBuffer &buffer,
                                              int16_t index = -1)
    {
        using V = std::variant<Types...>;

        if (index == -1) {
            index = buffer.readUInt8();
        }

        if constexpr (I < std::variant_size_v<V>) {
            using VT = std::variant_alternative_t<I, V>;

            if (index == I) {
                return std::variant<Types...>(read_cbpp<VT>(buffer));
            }

            return read<I + 1>(buffer, index);
        }

        throw std::runtime_error("Invalid variant type");
    }

    template <size_t I = 0>
    static inline void write(MessageBuffer &buffer,
                             const std::variant<Types...> &value)
    {
        using V = std::variant<Types...>;

        if constexpr (I < std::variant_size_v<V>) {
            using VT = std::variant_alternative_t<I, V>;

            if (std::holds_alternative<VT>(value)) {
                buffer.writeUInt8(I);
                write(buffer, std::get<VT>(value));
                return;
            }

            return write<I + 1>(buffer, value);
        }

        throw std::runtime_error("Invalid variant type");
    }
};

// std::vector<std::byte>

template <>
struct message_codec_t<std::vector<std::byte>> {
    static inline std::vector<std::byte> read(MessageBuffer &buffer)
    {
        auto slice = buffer.readData();
        std::vector<std::byte> result(slice.length);
        std::memcpy(result.data(), slice.data, slice.length);
        return result;
    }

    static inline void write(MessageBuffer &buffer,
                             const std::vector<std::byte> &value)
    {
        buffer.writeData({value.data(), value.size()});
    }
};

} // namespace couchbase::dart
