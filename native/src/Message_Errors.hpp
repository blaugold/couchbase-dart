#pragma once

#include <MessageCodec.hpp>
#include <Message_Basic.hpp>
#include <Message_CPP_Types.hpp>
#include <core/cluster.hxx>
#include <core/operations/management/error_utils.hxx>
#include <stdexcept>

namespace couchbase::dart
{

bool writeError(MessageBuffer &buffer, const std::error_code &ec);

template <typename T>
bool writeErrorContext(MessageBuffer &buffer, T ctx)
{
    buffer.writeBool(!!ctx.ec());
    if (ctx.ec()) {
        write_cbpp(buffer, ctx);
        return true;
    }
    return false;
}

template <typename T>
bool writeCoreErrorContext(MessageBuffer &buffer, T ctx)
{
    buffer.writeBool(!!ctx.ec);
    if (ctx.ec) {
        write_cbpp(buffer, ctx);
        return true;
    }
    return false;
}

// std::error_code

template <>
struct message_codec_t<std::error_code> {
    static inline void write(MessageBuffer &buffer,
                             const std::error_code &value)
    {
        write_cbpp(buffer, static_cast<int64_t>(value.value()));
        if (value)
            write_cbpp(buffer, value.message());
        else
            write_cbpp(buffer, std::string());
    }

    static inline std::error_code read(MessageBuffer &buffer)
    {
        throw std::runtime_error(
            "std::error_code should not be read from a MessageBuffer");
    }
};

// couchbase::key_value_extended_error_info

template <>
struct message_codec_t<couchbase::key_value_extended_error_info> {
    static inline void
    write(MessageBuffer &buffer,
          const couchbase::key_value_extended_error_info &value)
    {
        write_cbpp(buffer, value.reference());
        write_cbpp(buffer, value.context());
    }
};

// couchbase::key_value_error_context

template <>
struct message_codec_t<couchbase::key_value_error_context> {
    static inline void write(MessageBuffer &buffer,
                             const couchbase::key_value_error_context &value)
    {
        write_cbpp(buffer, value.ec());
        write_cbpp(buffer, value.id());
        write_cbpp(buffer, value.opaque());
        write_cbpp(buffer, value.cas());
        write_cbpp(buffer, value.status_code());
        write_cbpp(buffer, value.extended_error_info());
        write_cbpp(buffer, value.last_dispatched_to());
        write_cbpp(buffer, value.last_dispatched_from());
        write_cbpp(buffer, value.retry_attempts());
        write_cbpp(buffer, value.retry_reasons());
    }
};

// couchbase::subdocument_error_context

template <>
struct message_codec_t<couchbase::subdocument_error_context> {
    static inline void write(MessageBuffer &buffer,
                             const couchbase::subdocument_error_context &value)
    {
        write_cbpp(buffer, value.ec());
        write_cbpp(buffer, value.id());
        write_cbpp(buffer, value.opaque());
        write_cbpp(buffer, value.cas());
        write_cbpp(buffer, value.status_code());
        write_cbpp(buffer, value.extended_error_info());
        write_cbpp(buffer, value.last_dispatched_to());
        write_cbpp(buffer, value.last_dispatched_from());
        write_cbpp(buffer, value.retry_attempts());
        write_cbpp(buffer, value.retry_reasons());
        write_cbpp(buffer, value.first_error_path());
        write_cbpp(buffer, value.first_error_index());
        write_cbpp(buffer, value.deleted());
    }
};

// couchbase::core::error_context::view

template <>
struct message_codec_t<couchbase::core::error_context::view> {
    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::error_context::view &value)
    {
        write_cbpp(buffer, value.ec);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.design_document_name);
        write_cbpp(buffer, value.view_name);
        write_cbpp(buffer, value.query_string);
        write_cbpp(buffer, value.method);
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.http_status);
        write_cbpp(buffer, value.http_body);
        write_cbpp(buffer, value.last_dispatched_to);
        write_cbpp(buffer, value.last_dispatched_from);
        write_cbpp(buffer, value.retry_attempts);
        write_cbpp(buffer, value.retry_reasons);
    }
};

// couchbase::core::error_context::query

template <>
struct message_codec_t<couchbase::core::error_context::query> {
    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::error_context::query &value)
    {
        auto ec = value.ec;
        if (ec) {
            auto maybeEc = couchbase::core::operations::management::
                translate_query_error_code(value.first_error_code,
                                           value.first_error_message, 0);
            if (maybeEc.has_value()) {
                ec = maybeEc.value();
            }
        }

        write_cbpp(buffer, ec);
        write_cbpp(buffer, value.first_error_code);
        write_cbpp(buffer, value.first_error_message);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.statement);
        write_cbpp(buffer, value.parameters);
        write_cbpp(buffer, value.method);
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.http_status);
        write_cbpp(buffer, value.http_body);
        write_cbpp(buffer, value.last_dispatched_to);
        write_cbpp(buffer, value.last_dispatched_from);
        write_cbpp(buffer, value.retry_attempts);
        write_cbpp(buffer, value.retry_reasons);
    }
};

// couchbase::core::error_context::search

template <>
struct message_codec_t<couchbase::core::error_context::search> {
    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::error_context::search &value)
    {
        auto ec = value.ec;
        if (ec) {
            auto maybeEc = couchbase::core::operations::management::
                translate_search_error_code(value.http_status, value.http_body);
            if (maybeEc.has_value()) {
                ec = maybeEc.value();
            }
        }

        write_cbpp(buffer, value.ec);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.query);
        write_cbpp(buffer, value.parameters);
        write_cbpp(buffer, value.method);
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.http_status);
        write_cbpp(buffer, value.http_body);
        write_cbpp(buffer, value.last_dispatched_to);
        write_cbpp(buffer, value.last_dispatched_from);
        write_cbpp(buffer, value.retry_attempts);
        write_cbpp(buffer, value.retry_reasons);
    }
};

// couchbase::core::error_context::analytics

template <>
struct message_codec_t<couchbase::core::error_context::analytics> {
    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::error_context::analytics &value)
    {
        auto ec = value.ec;
        if (ec) {
            auto maybeEc = couchbase::core::operations::management::
                translate_analytics_error_code(value.first_error_code,
                                               value.first_error_message);
            if (maybeEc.has_value()) {
                ec = maybeEc.value();
            }
        }

        write_cbpp(buffer, value.ec);
        write_cbpp(buffer, value.first_error_code);
        write_cbpp(buffer, value.first_error_message);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.statement);
        write_cbpp(buffer, value.parameters);
        write_cbpp(buffer, value.method);
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.http_status);
        write_cbpp(buffer, value.http_body);
        write_cbpp(buffer, value.last_dispatched_to);
        write_cbpp(buffer, value.last_dispatched_from);
        write_cbpp(buffer, value.retry_attempts);
        write_cbpp(buffer, value.retry_reasons);
    }
};

// couchbase::core::error_context::http

template <>
struct message_codec_t<couchbase::core::error_context::http> {
    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::error_context::http &value)
    {
        write_cbpp(buffer, value.ec);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.method);
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.http_status);
        write_cbpp(buffer, value.http_body);
        write_cbpp(buffer, value.last_dispatched_to);
        write_cbpp(buffer, value.last_dispatched_from);
        write_cbpp(buffer, value.retry_attempts);
        write_cbpp(buffer, value.retry_reasons);
    }
};

} // namespace couchbase::dart
