#pragma once

#include <MessageBuffer.hpp>

namespace couchbase::dart
{

template <typename T, typename Enabled = void>
struct message_codec_t;

template <typename T>
static inline T read_cbpp(MessageBuffer &buffer)
{
    return message_codec_t<T>::read(buffer);
};

template <typename T>
static inline void read_cbpp(T &cppObj, MessageBuffer &buffer)
{
    cppObj = message_codec_t<T>::read(buffer);
};

template <typename T>
static inline void write_cbpp(MessageBuffer &buffer, const T &cppObj)
{
    return message_codec_t<T>::write(buffer, cppObj);
};

} // namespace couchbase::dart
