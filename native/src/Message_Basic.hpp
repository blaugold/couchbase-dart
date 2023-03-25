#pragma once

#include <MessageCodec.hpp>
#include <Message_CPP_Types.hpp>
#include <core/cluster.hxx>
#include <core/query_context.hxx>

namespace couchbase::dart
{

// couchbase::core::json_string

template <>
struct message_codec_t<couchbase::core::json_string> {
    static inline couchbase::core::json_string read(MessageBuffer &buffer)
    {
        return couchbase::core::json_string(buffer.readString());
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::json_string &value)
    {
        buffer.writeString(value.str());
    }
};

// couchbase::core::cluster_credentials

template <>
struct message_codec_t<couchbase::core::cluster_credentials> {
    static inline couchbase::core::cluster_credentials
    read(MessageBuffer &buffer)
    {
        couchbase::core::cluster_credentials value;
        read_cbpp(value.username, buffer);
        read_cbpp(value.password, buffer);
        read_cbpp(value.certificate_path, buffer);
        read_cbpp(value.key_path, buffer);
        read_cbpp(value.allowed_sasl_mechanisms, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::cluster_credentials &value)
    {
        write_cbpp(buffer, value.username);
        write_cbpp(buffer, value.password);
        write_cbpp(buffer, value.certificate_path);
        write_cbpp(buffer, value.key_path);
        write_cbpp(buffer, value.allowed_sasl_mechanisms);
    }
};

// couchbase::core::io::dns::dns_config

template <>
struct message_codec_t<couchbase::core::io::dns::dns_config> {
    static inline couchbase::core::io::dns::dns_config
    read(MessageBuffer &buffer)
    {
        return couchbase::core::io::dns::dns_config(
            read_cbpp<std::string>(buffer), read_cbpp<std::uint16_t>(buffer),
            read_cbpp<std::chrono::milliseconds>(buffer));
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::io::dns::dns_config &value)
    {
        write_cbpp(buffer, value.nameserver());
        write_cbpp(buffer, value.port());
        write_cbpp(buffer, value.timeout());
    }
};

// couchbase::core::document_id

template <>
struct message_codec_t<couchbase::core::document_id> {
    static inline couchbase::core::document_id read(MessageBuffer &buffer)
    {
        return couchbase::core::document_id(
            read_cbpp<std::string>(buffer), read_cbpp<std::string>(buffer),
            read_cbpp<std::string>(buffer), read_cbpp<std::string>(buffer));
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::document_id &value)
    {
        write_cbpp(buffer, value.bucket());
        write_cbpp(buffer, value.scope());
        write_cbpp(buffer, value.collection());
        write_cbpp(buffer, value.key());
    }
};

// couchbase::cas

template <>
struct message_codec_t<couchbase::cas> {
    static inline couchbase::cas read(MessageBuffer &buffer)
    {
        return couchbase::cas(read_cbpp<uint64_t>(buffer));
    }

    static inline void write(MessageBuffer &buffer, const couchbase::cas &value)
    {
        write_cbpp(buffer, value.value());
    }
};

// couchbase::mutation_token

template <>
struct message_codec_t<couchbase::mutation_token> {
    static inline couchbase::mutation_token read(MessageBuffer &buffer)
    {
        return couchbase::mutation_token(
            read_cbpp<uint64_t>(buffer), read_cbpp<uint64_t>(buffer),
            read_cbpp<uint16_t>(buffer), read_cbpp<std::string>(buffer));
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::mutation_token &value)
    {
        write_cbpp(buffer, value.partition_uuid());
        write_cbpp(buffer, value.sequence_number());
        write_cbpp(buffer, value.partition_id());
        write_cbpp(buffer, value.bucket_name());
    }
};

// couchbase::core::query_context

template <>
struct message_codec_t<couchbase::core::query_context> {
    static inline couchbase::core::query_context read(MessageBuffer &buffer)
    {
        return couchbase::core::query_context(read_cbpp<std::string>(buffer),
                                              read_cbpp<std::string>(buffer));
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::query_context &value)
    {
        write_cbpp(buffer, value.bucket_name());
        write_cbpp(buffer, value.scope_name());
    }
};

} // namespace couchbase::dart
