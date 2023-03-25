// GENERATED CODE - DO NOT MODIFY BY HAND
#pragma once

#include <MessageCodec.hpp>
#include <Message_Basic.hpp>
#include <Message_CPP_Types.hpp>
#include <Message_Errors.hpp>

#include <core/cluster.hxx>
#include <core/operations/management/analytics.hxx>
#include <core/operations/management/bucket.hxx>
#include <core/operations/management/bucket_describe.hxx>
#include <core/operations/management/cluster_describe.hxx>
#include <core/operations/management/cluster_developer_preview_enable.hxx>
#include <core/operations/management/collections.hxx>
#include <core/operations/management/eventing.hxx>
#include <core/operations/management/freeform.hxx>
#include <core/operations/management/query.hxx>
#include <core/operations/management/search.hxx>
#include <core/operations/management/user.hxx>
#include <core/operations/management/view.hxx>
#include <core/range_scan_orchestrator_options.hxx>
#include <core/scan_options.hxx>

namespace couchbase::dart
{
template <>
struct message_codec_t<couchbase::core::management::analytics::dataset> {
    static inline couchbase::core::management::analytics::dataset
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::analytics::dataset value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.bucket_name, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::analytics::dataset &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.bucket_name);
    }
};

template <>
struct message_codec_t<couchbase::core::management::analytics::index> {
    static inline couchbase::core::management::analytics::index
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::analytics::index value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.dataset_name, buffer);
        read_cbpp(value.is_primary, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::analytics::index &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.dataset_name);
        write_cbpp(buffer, value.is_primary);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::analytics::azure_blob_external_link> {
    static inline couchbase::core::management::analytics::
        azure_blob_external_link
        read(MessageBuffer &buffer)
    {
        couchbase::core::management::analytics::azure_blob_external_link value;
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.dataverse, buffer);
        read_cbpp(value.connection_string, buffer);
        read_cbpp(value.account_name, buffer);
        read_cbpp(value.account_key, buffer);
        read_cbpp(value.shared_access_signature, buffer);
        read_cbpp(value.blob_endpoint, buffer);
        read_cbpp(value.endpoint_suffix, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::analytics::azure_blob_external_link
              &value)
    {
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.dataverse);
        write_cbpp(buffer, value.connection_string);
        write_cbpp(buffer, value.account_name);
        write_cbpp(buffer, value.account_key);
        write_cbpp(buffer, value.shared_access_signature);
        write_cbpp(buffer, value.blob_endpoint);
        write_cbpp(buffer, value.endpoint_suffix);
    }
};

template <>
struct message_codec_t<couchbase::core::management::analytics::
                           couchbase_link_encryption_settings> {
    static inline couchbase::core::management::analytics::
        couchbase_link_encryption_settings
        read(MessageBuffer &buffer)
    {
        couchbase::core::management::analytics::
            couchbase_link_encryption_settings value;
        read_cbpp(value.level, buffer);
        read_cbpp(value.certificate, buffer);
        read_cbpp(value.client_certificate, buffer);
        read_cbpp(value.client_key, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::management::analytics::
                                 couchbase_link_encryption_settings &value)
    {
        write_cbpp(buffer, value.level);
        write_cbpp(buffer, value.certificate);
        write_cbpp(buffer, value.client_certificate);
        write_cbpp(buffer, value.client_key);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::analytics::couchbase_remote_link> {
    static inline couchbase::core::management::analytics::couchbase_remote_link
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::analytics::couchbase_remote_link value;
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.dataverse, buffer);
        read_cbpp(value.hostname, buffer);
        read_cbpp(value.username, buffer);
        read_cbpp(value.password, buffer);
        read_cbpp(value.encryption, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::analytics::couchbase_remote_link
              &value)
    {
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.dataverse);
        write_cbpp(buffer, value.hostname);
        write_cbpp(buffer, value.username);
        write_cbpp(buffer, value.password);
        write_cbpp(buffer, value.encryption);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::analytics::s3_external_link> {
    static inline couchbase::core::management::analytics::s3_external_link
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::analytics::s3_external_link value;
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.dataverse, buffer);
        read_cbpp(value.access_key_id, buffer);
        read_cbpp(value.secret_access_key, buffer);
        read_cbpp(value.session_token, buffer);
        read_cbpp(value.region, buffer);
        read_cbpp(value.service_endpoint, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::analytics::s3_external_link &value)
    {
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.dataverse);
        write_cbpp(buffer, value.access_key_id);
        write_cbpp(buffer, value.secret_access_key);
        write_cbpp(buffer, value.session_token);
        write_cbpp(buffer, value.region);
        write_cbpp(buffer, value.service_endpoint);
    }
};

template <>
struct message_codec_t<couchbase::core::management::cluster::bucket_settings> {
    static inline couchbase::core::management::cluster::bucket_settings
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::cluster::bucket_settings value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.uuid, buffer);
        read_cbpp(value.bucket_type, buffer);
        read_cbpp(value.ram_quota_mb, buffer);
        read_cbpp(value.max_expiry, buffer);
        read_cbpp(value.compression_mode, buffer);
        read_cbpp(value.minimum_durability_level, buffer);
        read_cbpp(value.num_replicas, buffer);
        read_cbpp(value.replica_indexes, buffer);
        read_cbpp(value.flush_enabled, buffer);
        read_cbpp(value.eviction_policy, buffer);
        read_cbpp(value.conflict_resolution_type, buffer);
        read_cbpp(value.storage_backend, buffer);
        read_cbpp(value.capabilities, buffer);
        read_cbpp(value.nodes, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::cluster::bucket_settings &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.uuid);
        write_cbpp(buffer, value.bucket_type);
        write_cbpp(buffer, value.ram_quota_mb);
        write_cbpp(buffer, value.max_expiry);
        write_cbpp(buffer, value.compression_mode);
        write_cbpp(buffer, value.minimum_durability_level);
        write_cbpp(buffer, value.num_replicas);
        write_cbpp(buffer, value.replica_indexes);
        write_cbpp(buffer, value.flush_enabled);
        write_cbpp(buffer, value.eviction_policy);
        write_cbpp(buffer, value.conflict_resolution_type);
        write_cbpp(buffer, value.storage_backend);
        write_cbpp(buffer, value.capabilities);
        write_cbpp(buffer, value.nodes);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::cluster::bucket_settings::node> {
    static inline couchbase::core::management::cluster::bucket_settings::node
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::cluster::bucket_settings::node value;
        read_cbpp(value.hostname, buffer);
        read_cbpp(value.status, buffer);
        read_cbpp(value.version, buffer);
        read_cbpp(value.services, buffer);
        read_cbpp(value.ports, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::cluster::bucket_settings::node
              &value)
    {
        write_cbpp(buffer, value.hostname);
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.version);
        write_cbpp(buffer, value.services);
        write_cbpp(buffer, value.ports);
    }
};

template <>
struct message_codec_t<couchbase::core::management::views::design_document> {
    static inline couchbase::core::management::views::design_document
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::views::design_document value;
        read_cbpp(value.rev, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.ns, buffer);
        read_cbpp(value.views, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::views::design_document &value)
    {
        write_cbpp(buffer, value.rev);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.ns);
        write_cbpp(buffer, value.views);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::views::design_document::view> {
    static inline couchbase::core::management::views::design_document::view
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::views::design_document::view value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.map, buffer);
        read_cbpp(value.reduce, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::management::views::design_document::view &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.map);
        write_cbpp(buffer, value.reduce);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_keyspace> {
    static inline couchbase::core::management::eventing::function_keyspace
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_keyspace value;
        read_cbpp(value.bucket, buffer);
        read_cbpp(value.scope, buffer);
        read_cbpp(value.collection, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_keyspace &value)
    {
        write_cbpp(buffer, value.bucket);
        write_cbpp(buffer, value.scope);
        write_cbpp(buffer, value.collection);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_settings> {
    static inline couchbase::core::management::eventing::function_settings
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_settings value;
        read_cbpp(value.cpp_worker_count, buffer);
        read_cbpp(value.dcp_stream_boundary, buffer);
        read_cbpp(value.description, buffer);
        read_cbpp(value.deployment_status, buffer);
        read_cbpp(value.processing_status, buffer);
        read_cbpp(value.log_level, buffer);
        read_cbpp(value.language_compatibility, buffer);
        read_cbpp(value.execution_timeout, buffer);
        read_cbpp(value.lcb_inst_capacity, buffer);
        read_cbpp(value.lcb_retry_count, buffer);
        read_cbpp(value.lcb_timeout, buffer);
        read_cbpp(value.query_consistency, buffer);
        read_cbpp(value.num_timer_partitions, buffer);
        read_cbpp(value.sock_batch_size, buffer);
        read_cbpp(value.tick_duration, buffer);
        read_cbpp(value.timer_context_size, buffer);
        read_cbpp(value.user_prefix, buffer);
        read_cbpp(value.bucket_cache_size, buffer);
        read_cbpp(value.bucket_cache_age, buffer);
        read_cbpp(value.curl_max_allowed_resp_size, buffer);
        read_cbpp(value.query_prepare_all, buffer);
        read_cbpp(value.worker_count, buffer);
        read_cbpp(value.handler_headers, buffer);
        read_cbpp(value.handler_footers, buffer);
        read_cbpp(value.enable_app_log_rotation, buffer);
        read_cbpp(value.app_log_dir, buffer);
        read_cbpp(value.app_log_max_size, buffer);
        read_cbpp(value.app_log_max_files, buffer);
        read_cbpp(value.checkpoint_interval, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_settings &value)
    {
        write_cbpp(buffer, value.cpp_worker_count);
        write_cbpp(buffer, value.dcp_stream_boundary);
        write_cbpp(buffer, value.description);
        write_cbpp(buffer, value.deployment_status);
        write_cbpp(buffer, value.processing_status);
        write_cbpp(buffer, value.log_level);
        write_cbpp(buffer, value.language_compatibility);
        write_cbpp(buffer, value.execution_timeout);
        write_cbpp(buffer, value.lcb_inst_capacity);
        write_cbpp(buffer, value.lcb_retry_count);
        write_cbpp(buffer, value.lcb_timeout);
        write_cbpp(buffer, value.query_consistency);
        write_cbpp(buffer, value.num_timer_partitions);
        write_cbpp(buffer, value.sock_batch_size);
        write_cbpp(buffer, value.tick_duration);
        write_cbpp(buffer, value.timer_context_size);
        write_cbpp(buffer, value.user_prefix);
        write_cbpp(buffer, value.bucket_cache_size);
        write_cbpp(buffer, value.bucket_cache_age);
        write_cbpp(buffer, value.curl_max_allowed_resp_size);
        write_cbpp(buffer, value.query_prepare_all);
        write_cbpp(buffer, value.worker_count);
        write_cbpp(buffer, value.handler_headers);
        write_cbpp(buffer, value.handler_footers);
        write_cbpp(buffer, value.enable_app_log_rotation);
        write_cbpp(buffer, value.app_log_dir);
        write_cbpp(buffer, value.app_log_max_size);
        write_cbpp(buffer, value.app_log_max_files);
        write_cbpp(buffer, value.checkpoint_interval);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_bucket_binding> {
    static inline couchbase::core::management::eventing::function_bucket_binding
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_bucket_binding value;
        read_cbpp(value.alias, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.access, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_bucket_binding
              &value)
    {
        write_cbpp(buffer, value.alias);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.access);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_url_no_auth> {
    static inline couchbase::core::management::eventing::function_url_no_auth
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_url_no_auth value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_url_no_auth
              &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_url_auth_basic> {
    static inline couchbase::core::management::eventing::function_url_auth_basic
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_url_auth_basic value;
        read_cbpp(value.username, buffer);
        read_cbpp(value.password, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_url_auth_basic
              &value)
    {
        write_cbpp(buffer, value.username);
        write_cbpp(buffer, value.password);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_url_auth_digest> {
    static inline couchbase::core::management::eventing::
        function_url_auth_digest
        read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_url_auth_digest value;
        read_cbpp(value.username, buffer);
        read_cbpp(value.password, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_url_auth_digest
              &value)
    {
        write_cbpp(buffer, value.username);
        write_cbpp(buffer, value.password);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_url_auth_bearer> {
    static inline couchbase::core::management::eventing::
        function_url_auth_bearer
        read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_url_auth_bearer value;
        read_cbpp(value.key, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_url_auth_bearer
              &value)
    {
        write_cbpp(buffer, value.key);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_url_binding> {
    static inline couchbase::core::management::eventing::function_url_binding
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_url_binding value;
        read_cbpp(value.alias, buffer);
        read_cbpp(value.hostname, buffer);
        read_cbpp(value.allow_cookies, buffer);
        read_cbpp(value.validate_ssl_certificate, buffer);
        read_cbpp(value.auth, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_url_binding
              &value)
    {
        write_cbpp(buffer, value.alias);
        write_cbpp(buffer, value.hostname);
        write_cbpp(buffer, value.allow_cookies);
        write_cbpp(buffer, value.validate_ssl_certificate);
        write_cbpp(buffer, value.auth);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::eventing::function_constant_binding> {
    static inline couchbase::core::management::eventing::
        function_constant_binding
        read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_constant_binding value;
        read_cbpp(value.alias, buffer);
        read_cbpp(value.literal, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_constant_binding
              &value)
    {
        write_cbpp(buffer, value.alias);
        write_cbpp(buffer, value.literal);
    }
};

template <>
struct message_codec_t<couchbase::core::management::eventing::function> {
    static inline couchbase::core::management::eventing::function
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.code, buffer);
        read_cbpp(value.metadata_keyspace, buffer);
        read_cbpp(value.source_keyspace, buffer);
        read_cbpp(value.version, buffer);
        read_cbpp(value.enforce_schema, buffer);
        read_cbpp(value.handler_uuid, buffer);
        read_cbpp(value.function_instance_id, buffer);
        read_cbpp(value.bucket_bindings, buffer);
        read_cbpp(value.url_bindings, buffer);
        read_cbpp(value.constant_bindings, buffer);
        read_cbpp(value.settings, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.metadata_keyspace);
        write_cbpp(buffer, value.source_keyspace);
        write_cbpp(buffer, value.version);
        write_cbpp(buffer, value.enforce_schema);
        write_cbpp(buffer, value.handler_uuid);
        write_cbpp(buffer, value.function_instance_id);
        write_cbpp(buffer, value.bucket_bindings);
        write_cbpp(buffer, value.url_bindings);
        write_cbpp(buffer, value.constant_bindings);
        write_cbpp(buffer, value.settings);
    }
};

template <>
struct message_codec_t<couchbase::core::management::eventing::function_state> {
    static inline couchbase::core::management::eventing::function_state
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::function_state value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.status, buffer);
        read_cbpp(value.num_bootstrapping_nodes, buffer);
        read_cbpp(value.num_deployed_nodes, buffer);
        read_cbpp(value.deployment_status, buffer);
        read_cbpp(value.processing_status, buffer);
        read_cbpp(value.redeploy_required, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::function_state &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.num_bootstrapping_nodes);
        write_cbpp(buffer, value.num_deployed_nodes);
        write_cbpp(buffer, value.deployment_status);
        write_cbpp(buffer, value.processing_status);
        write_cbpp(buffer, value.redeploy_required);
    }
};

template <>
struct message_codec_t<couchbase::core::management::eventing::status> {
    static inline couchbase::core::management::eventing::status
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::eventing::status value;
        read_cbpp(value.num_eventing_nodes, buffer);
        read_cbpp(value.functions, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::eventing::status &value)
    {
        write_cbpp(buffer, value.num_eventing_nodes);
        write_cbpp(buffer, value.functions);
    }
};

template <>
struct message_codec_t<couchbase::core::management::rbac::role> {
    static inline couchbase::core::management::rbac::role
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::rbac::role value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.bucket, buffer);
        read_cbpp(value.scope, buffer);
        read_cbpp(value.collection, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::rbac::role &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.bucket);
        write_cbpp(buffer, value.scope);
        write_cbpp(buffer, value.collection);
    }
};

template <>
struct message_codec_t<
    couchbase::core::management::rbac::role_and_description> {
    static inline couchbase::core::management::rbac::role_and_description
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::rbac::role_and_description value;
        read_cbpp(value.display_name, buffer);
        read_cbpp(value.description, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::rbac::role_and_description &value)
    {
        write_cbpp(buffer, value.display_name);
        write_cbpp(buffer, value.description);
    }
};

template <>
struct message_codec_t<couchbase::core::management::rbac::origin> {
    static inline couchbase::core::management::rbac::origin
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::rbac::origin value;
        read_cbpp(value.type, buffer);
        read_cbpp(value.name, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::rbac::origin &value)
    {
        write_cbpp(buffer, value.type);
        write_cbpp(buffer, value.name);
    }
};

template <>
struct message_codec_t<couchbase::core::management::rbac::role_and_origins> {
    static inline couchbase::core::management::rbac::role_and_origins
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::rbac::role_and_origins value;
        read_cbpp(value.origins, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::rbac::role_and_origins &value)
    {
        write_cbpp(buffer, value.origins);
    }
};

template <>
struct message_codec_t<couchbase::core::management::rbac::user> {
    static inline couchbase::core::management::rbac::user
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::rbac::user value;
        read_cbpp(value.username, buffer);
        read_cbpp(value.display_name, buffer);
        read_cbpp(value.groups, buffer);
        read_cbpp(value.roles, buffer);
        read_cbpp(value.password, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::rbac::user &value)
    {
        write_cbpp(buffer, value.username);
        write_cbpp(buffer, value.display_name);
        write_cbpp(buffer, value.groups);
        write_cbpp(buffer, value.roles);
        write_cbpp(buffer, value.password);
    }
};

template <>
struct message_codec_t<couchbase::core::management::rbac::user_and_metadata> {
    static inline couchbase::core::management::rbac::user_and_metadata
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::rbac::user_and_metadata value;
        read_cbpp(value.domain, buffer);
        read_cbpp(value.effective_roles, buffer);
        read_cbpp(value.password_changed, buffer);
        read_cbpp(value.external_groups, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::rbac::user_and_metadata &value)
    {
        write_cbpp(buffer, value.domain);
        write_cbpp(buffer, value.effective_roles);
        write_cbpp(buffer, value.password_changed);
        write_cbpp(buffer, value.external_groups);
    }
};

template <>
struct message_codec_t<couchbase::core::management::rbac::group> {
    static inline couchbase::core::management::rbac::group
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::rbac::group value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.description, buffer);
        read_cbpp(value.roles, buffer);
        read_cbpp(value.ldap_group_reference, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::rbac::group &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.description);
        write_cbpp(buffer, value.roles);
        write_cbpp(buffer, value.ldap_group_reference);
    }
};

template <>
struct message_codec_t<couchbase::core::management::search::index> {
    static inline couchbase::core::management::search::index
    read(MessageBuffer &buffer)
    {
        couchbase::core::management::search::index value;
        read_cbpp(value.uuid, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.type, buffer);
        read_cbpp(value.params_json, buffer);
        read_cbpp(value.source_uuid, buffer);
        read_cbpp(value.source_name, buffer);
        read_cbpp(value.source_type, buffer);
        read_cbpp(value.source_params_json, buffer);
        read_cbpp(value.plan_params_json, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::management::search::index &value)
    {
        write_cbpp(buffer, value.uuid);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.type);
        write_cbpp(buffer, value.params_json);
        write_cbpp(buffer, value.source_uuid);
        write_cbpp(buffer, value.source_name);
        write_cbpp(buffer, value.source_type);
        write_cbpp(buffer, value.source_params_json);
        write_cbpp(buffer, value.plan_params_json);
    }
};

template <>
struct message_codec_t<couchbase::management::query::index> {
    static inline couchbase::management::query::index
    read(MessageBuffer &buffer)
    {
        couchbase::management::query::index value;
        read_cbpp(value.is_primary, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.state, buffer);
        read_cbpp(value.type, buffer);
        read_cbpp(value.index_key, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.condition, buffer);
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::management::query::index &value)
    {
        write_cbpp(buffer, value.is_primary);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.state);
        write_cbpp(buffer, value.type);
        write_cbpp(buffer, value.index_key);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.condition);
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
    }
};

template <>
struct message_codec_t<couchbase::core::topology::collections_manifest> {
    static inline couchbase::core::topology::collections_manifest
    read(MessageBuffer &buffer)
    {
        couchbase::core::topology::collections_manifest value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.uid, buffer);
        read_cbpp(value.scopes, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::topology::collections_manifest &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.uid);
        write_cbpp(buffer, value.scopes);
    }
};

template <>
struct message_codec_t<
    couchbase::core::topology::collections_manifest::collection> {
    static inline couchbase::core::topology::collections_manifest::collection
    read(MessageBuffer &buffer)
    {
        couchbase::core::topology::collections_manifest::collection value;
        read_cbpp(value.uid, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.max_expiry, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::topology::collections_manifest::collection
              &value)
    {
        write_cbpp(buffer, value.uid);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.max_expiry);
    }
};

template <>
struct message_codec_t<couchbase::core::topology::collections_manifest::scope> {
    static inline couchbase::core::topology::collections_manifest::scope
    read(MessageBuffer &buffer)
    {
        couchbase::core::topology::collections_manifest::scope value;
        read_cbpp(value.uid, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.collections, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::topology::collections_manifest::scope &value)
    {
        write_cbpp(buffer, value.uid);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.collections);
    }
};

template <>
struct message_codec_t<couchbase::core::diag::endpoint_diag_info> {
    static inline couchbase::core::diag::endpoint_diag_info
    read(MessageBuffer &buffer)
    {
        couchbase::core::diag::endpoint_diag_info value;
        read_cbpp(value.type, buffer);
        read_cbpp(value.id, buffer);
        read_cbpp(value.last_activity, buffer);
        read_cbpp(value.remote, buffer);
        read_cbpp(value.local, buffer);
        read_cbpp(value.state, buffer);
        read_cbpp(value.bucket, buffer);
        read_cbpp(value.details, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::diag::endpoint_diag_info &value)
    {
        write_cbpp(buffer, value.type);
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.last_activity);
        write_cbpp(buffer, value.remote);
        write_cbpp(buffer, value.local);
        write_cbpp(buffer, value.state);
        write_cbpp(buffer, value.bucket);
        write_cbpp(buffer, value.details);
    }
};

template <>
struct message_codec_t<couchbase::core::diag::diagnostics_result> {
    static inline couchbase::core::diag::diagnostics_result
    read(MessageBuffer &buffer)
    {
        couchbase::core::diag::diagnostics_result value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.sdk, buffer);
        read_cbpp(value.services, buffer);
        read_cbpp(value.version, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::diag::diagnostics_result &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.sdk);
        write_cbpp(buffer, value.services);
        write_cbpp(buffer, value.version);
    }
};

template <>
struct message_codec_t<couchbase::core::diag::endpoint_ping_info> {
    static inline couchbase::core::diag::endpoint_ping_info
    read(MessageBuffer &buffer)
    {
        couchbase::core::diag::endpoint_ping_info value;
        read_cbpp(value.type, buffer);
        read_cbpp(value.id, buffer);
        read_cbpp(value.latency, buffer);
        read_cbpp(value.remote, buffer);
        read_cbpp(value.local, buffer);
        read_cbpp(value.state, buffer);
        read_cbpp(value.bucket, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::diag::endpoint_ping_info &value)
    {
        write_cbpp(buffer, value.type);
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.latency);
        write_cbpp(buffer, value.remote);
        write_cbpp(buffer, value.local);
        write_cbpp(buffer, value.state);
        write_cbpp(buffer, value.bucket);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<couchbase::core::diag::ping_result> {
    static inline couchbase::core::diag::ping_result read(MessageBuffer &buffer)
    {
        couchbase::core::diag::ping_result value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.sdk, buffer);
        read_cbpp(value.services, buffer);
        read_cbpp(value.version, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::diag::ping_result &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.sdk);
        write_cbpp(buffer, value.services);
        write_cbpp(buffer, value.version);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::prepend_response> {
    static inline couchbase::core::operations::prepend_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::prepend_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::prepend_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::prepend_request> {
    static inline couchbase::core::operations::prepend_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::prepend_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::prepend_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::prepend_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        prepend_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::prepend_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::
                                 prepend_request_with_legacy_durability &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::exists_response> {
    static inline couchbase::core::operations::exists_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::exists_response value;
        read_cbpp(value.deleted, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.sequence_number, buffer);
        read_cbpp(value.datatype, buffer);
        read_cbpp(value.document_exists, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::exists_response &value)
    {
        write_cbpp(buffer, value.deleted);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.sequence_number);
        write_cbpp(buffer, value.datatype);
        write_cbpp(buffer, value.document_exists);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::exists_request> {
    static inline couchbase::core::operations::exists_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::exists_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::exists_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::http_noop_response> {
    static inline couchbase::core::operations::http_noop_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::http_noop_response value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::http_noop_response &value)
    {
    }
};

template <>
struct message_codec_t<couchbase::core::operations::http_noop_request> {
    static inline couchbase::core::operations::http_noop_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::http_noop_request value;
        read_cbpp(value.type, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::http_noop_request &value)
    {
        write_cbpp(buffer, value.type);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::unlock_response> {
    static inline couchbase::core::operations::unlock_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::unlock_response value;
        read_cbpp(value.cas, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::unlock_response &value)
    {
        write_cbpp(buffer, value.cas);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::unlock_request> {
    static inline couchbase::core::operations::unlock_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::unlock_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::unlock_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_all_replicas_response> {
    static inline couchbase::core::operations::get_all_replicas_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_all_replicas_response value;
        read_cbpp(value.entries, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_all_replicas_response &value)
    {
        write_cbpp(buffer, value.entries);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::get_all_replicas_response::entry> {
    static inline couchbase::core::operations::get_all_replicas_response::entry
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_all_replicas_response::entry value;
        read_cbpp(value.value, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.replica, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_all_replicas_response::entry
              &value)
    {
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.replica);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_all_replicas_request> {
    static inline couchbase::core::operations::get_all_replicas_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_all_replicas_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_all_replicas_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::upsert_response> {
    static inline couchbase::core::operations::upsert_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::upsert_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::upsert_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::upsert_request> {
    static inline couchbase::core::operations::upsert_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::upsert_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.preserve_expiry, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::upsert_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.preserve_expiry);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::upsert_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        upsert_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::upsert_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.preserve_expiry, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::upsert_request_with_legacy_durability
            &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.preserve_expiry);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_any_replica_response> {
    static inline couchbase::core::operations::get_any_replica_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_any_replica_response value;
        read_cbpp(value.value, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.replica, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_any_replica_response &value)
    {
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.replica);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_any_replica_request> {
    static inline couchbase::core::operations::get_any_replica_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_any_replica_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_any_replica_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::append_response> {
    static inline couchbase::core::operations::append_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::append_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::append_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::append_request> {
    static inline couchbase::core::operations::append_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::append_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::append_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::append_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        append_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::append_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::append_request_with_legacy_durability
            &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::query_response> {
    static inline couchbase::core::operations::query_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::query_response value;
        read_cbpp(value.meta, buffer);
        read_cbpp(value.prepared, buffer);
        read_cbpp(value.rows, buffer);
        read_cbpp(value.served_by_node, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::query_response &value)
    {
        write_cbpp(buffer, value.meta);
        write_cbpp(buffer, value.prepared);
        write_cbpp(buffer, value.rows);
        write_cbpp(buffer, value.served_by_node);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::query_response::query_metrics> {
    static inline couchbase::core::operations::query_response::query_metrics
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::query_response::query_metrics value;
        read_cbpp(value.elapsed_time, buffer);
        read_cbpp(value.execution_time, buffer);
        read_cbpp(value.result_count, buffer);
        read_cbpp(value.result_size, buffer);
        read_cbpp(value.sort_count, buffer);
        read_cbpp(value.mutation_count, buffer);
        read_cbpp(value.error_count, buffer);
        read_cbpp(value.warning_count, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::query_response::query_metrics &value)
    {
        write_cbpp(buffer, value.elapsed_time);
        write_cbpp(buffer, value.execution_time);
        write_cbpp(buffer, value.result_count);
        write_cbpp(buffer, value.result_size);
        write_cbpp(buffer, value.sort_count);
        write_cbpp(buffer, value.mutation_count);
        write_cbpp(buffer, value.error_count);
        write_cbpp(buffer, value.warning_count);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::query_response::query_problem> {
    static inline couchbase::core::operations::query_response::query_problem
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::query_response::query_problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        read_cbpp(value.reason, buffer);
        read_cbpp(value.retry, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::query_response::query_problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
        write_cbpp(buffer, value.reason);
        write_cbpp(buffer, value.retry);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::query_response::query_meta_data> {
    static inline couchbase::core::operations::query_response::query_meta_data
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::query_response::query_meta_data value;
        read_cbpp(value.request_id, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.status, buffer);
        read_cbpp(value.metrics, buffer);
        read_cbpp(value.signature, buffer);
        read_cbpp(value.profile, buffer);
        read_cbpp(value.warnings, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::query_response::query_meta_data
              &value)
    {
        write_cbpp(buffer, value.request_id);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.metrics);
        write_cbpp(buffer, value.signature);
        write_cbpp(buffer, value.profile);
        write_cbpp(buffer, value.warnings);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::query_request> {
    static inline couchbase::core::operations::query_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::query_request value;
        read_cbpp(value.statement, buffer);
        read_cbpp(value.adhoc, buffer);
        read_cbpp(value.metrics, buffer);
        read_cbpp(value.readonly, buffer);
        read_cbpp(value.flex_index, buffer);
        read_cbpp(value.preserve_expiry, buffer);
        read_cbpp(value.max_parallelism, buffer);
        read_cbpp(value.scan_cap, buffer);
        read_cbpp(value.scan_wait, buffer);
        read_cbpp(value.pipeline_batch, buffer);
        read_cbpp(value.pipeline_cap, buffer);
        read_cbpp(value.scan_consistency, buffer);
        read_cbpp(value.mutation_state, buffer);
        read_cbpp(value.query_context, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.profile, buffer);
        read_cbpp(value.raw, buffer);
        read_cbpp(value.positional_parameters, buffer);
        read_cbpp(value.named_parameters, buffer);
        read_cbpp(value.send_to_node, buffer);
        read_cbpp(value.body_str, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::query_request &value)
    {
        write_cbpp(buffer, value.statement);
        write_cbpp(buffer, value.adhoc);
        write_cbpp(buffer, value.metrics);
        write_cbpp(buffer, value.readonly);
        write_cbpp(buffer, value.flex_index);
        write_cbpp(buffer, value.preserve_expiry);
        write_cbpp(buffer, value.max_parallelism);
        write_cbpp(buffer, value.scan_cap);
        write_cbpp(buffer, value.scan_wait);
        write_cbpp(buffer, value.pipeline_batch);
        write_cbpp(buffer, value.pipeline_cap);
        write_cbpp(buffer, value.scan_consistency);
        write_cbpp(buffer, value.mutation_state);
        write_cbpp(buffer, value.query_context);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.profile);
        write_cbpp(buffer, value.raw);
        write_cbpp(buffer, value.positional_parameters);
        write_cbpp(buffer, value.named_parameters);
        write_cbpp(buffer, value.send_to_node);
        write_cbpp(buffer, value.body_str);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::mcbp_noop_response> {
    static inline couchbase::core::operations::mcbp_noop_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::mcbp_noop_response value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::mcbp_noop_response &value)
    {
    }
};

template <>
struct message_codec_t<couchbase::core::operations::mcbp_noop_request> {
    static inline couchbase::core::operations::mcbp_noop_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::mcbp_noop_request value;
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::mcbp_noop_request &value)
    {
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::replace_response> {
    static inline couchbase::core::operations::replace_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::replace_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::replace_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::replace_request> {
    static inline couchbase::core::operations::replace_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::replace_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.preserve_expiry, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::replace_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.preserve_expiry);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::replace_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        replace_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::replace_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.preserve_expiry, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::
                                 replace_request_with_legacy_durability &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.preserve_expiry);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_and_touch_response> {
    static inline couchbase::core::operations::get_and_touch_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_and_touch_response value;
        read_cbpp(value.value, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.flags, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_and_touch_response &value)
    {
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.flags);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_and_touch_request> {
    static inline couchbase::core::operations::get_and_touch_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_and_touch_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_and_touch_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::remove_response> {
    static inline couchbase::core::operations::remove_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::remove_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::remove_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::remove_request> {
    static inline couchbase::core::operations::remove_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::remove_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::remove_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::remove_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        remove_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::remove_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::remove_request_with_legacy_durability
            &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_response> {
    static inline couchbase::core::operations::get_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_response value;
        read_cbpp(value.value, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.flags, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_response &value)
    {
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.flags);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_request> {
    static inline couchbase::core::operations::get_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::analytics_response> {
    static inline couchbase::core::operations::analytics_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::analytics_response value;
        read_cbpp(value.meta, buffer);
        read_cbpp(value.rows, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::analytics_response &value)
    {
        write_cbpp(buffer, value.meta);
        write_cbpp(buffer, value.rows);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::analytics_response::analytics_metrics> {
    static inline couchbase::core::operations::analytics_response::
        analytics_metrics
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::analytics_response::analytics_metrics
            value;
        read_cbpp(value.elapsed_time, buffer);
        read_cbpp(value.execution_time, buffer);
        read_cbpp(value.result_count, buffer);
        read_cbpp(value.result_size, buffer);
        read_cbpp(value.error_count, buffer);
        read_cbpp(value.processed_objects, buffer);
        read_cbpp(value.warning_count, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::analytics_response::analytics_metrics
            &value)
    {
        write_cbpp(buffer, value.elapsed_time);
        write_cbpp(buffer, value.execution_time);
        write_cbpp(buffer, value.result_count);
        write_cbpp(buffer, value.result_size);
        write_cbpp(buffer, value.error_count);
        write_cbpp(buffer, value.processed_objects);
        write_cbpp(buffer, value.warning_count);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::analytics_response::analytics_problem> {
    static inline couchbase::core::operations::analytics_response::
        analytics_problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::analytics_response::analytics_problem
            value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::analytics_response::analytics_problem
            &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::analytics_response::analytics_meta_data> {
    static inline couchbase::core::operations::analytics_response::
        analytics_meta_data
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::analytics_response::analytics_meta_data
            value;
        read_cbpp(value.request_id, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.status, buffer);
        read_cbpp(value.metrics, buffer);
        read_cbpp(value.signature, buffer);
        read_cbpp(value.errors, buffer);
        read_cbpp(value.warnings, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::
                                 analytics_response::analytics_meta_data &value)
    {
        write_cbpp(buffer, value.request_id);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.metrics);
        write_cbpp(buffer, value.signature);
        write_cbpp(buffer, value.errors);
        write_cbpp(buffer, value.warnings);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::analytics_request> {
    static inline couchbase::core::operations::analytics_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::analytics_request value;
        read_cbpp(value.statement, buffer);
        read_cbpp(value.readonly, buffer);
        read_cbpp(value.priority, buffer);
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.scope_qualifier, buffer);
        read_cbpp(value.scan_consistency, buffer);
        read_cbpp(value.raw, buffer);
        read_cbpp(value.positional_parameters, buffer);
        read_cbpp(value.named_parameters, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.body_str, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::analytics_request &value)
    {
        write_cbpp(buffer, value.statement);
        write_cbpp(buffer, value.readonly);
        write_cbpp(buffer, value.priority);
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.scope_qualifier);
        write_cbpp(buffer, value.scan_consistency);
        write_cbpp(buffer, value.raw);
        write_cbpp(buffer, value.positional_parameters);
        write_cbpp(buffer, value.named_parameters);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.body_str);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_projected_response> {
    static inline couchbase::core::operations::get_projected_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_projected_response value;
        read_cbpp(value.value, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_projected_response &value)
    {
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_projected_request> {
    static inline couchbase::core::operations::get_projected_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_projected_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.projections, buffer);
        read_cbpp(value.with_expiry, buffer);
        read_cbpp(value.effective_projections, buffer);
        read_cbpp(value.preserve_array_indexes, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_projected_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.projections);
        write_cbpp(buffer, value.with_expiry);
        write_cbpp(buffer, value.effective_projections);
        write_cbpp(buffer, value.preserve_array_indexes);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::decrement_response> {
    static inline couchbase::core::operations::decrement_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::decrement_response value;
        read_cbpp(value.content, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::decrement_response &value)
    {
        write_cbpp(buffer, value.content);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::decrement_request> {
    static inline couchbase::core::operations::decrement_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::decrement_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.delta, buffer);
        read_cbpp(value.initial_value, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::decrement_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.delta);
        write_cbpp(buffer, value.initial_value);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::decrement_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        decrement_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::decrement_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.delta, buffer);
        read_cbpp(value.initial_value, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::
              decrement_request_with_legacy_durability &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.delta);
        write_cbpp(buffer, value.initial_value);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::search_response> {
    static inline couchbase::core::operations::search_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.meta, buffer);
        read_cbpp(value.error, buffer);
        read_cbpp(value.rows, buffer);
        read_cbpp(value.facets, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.meta);
        write_cbpp(buffer, value.error);
        write_cbpp(buffer, value.rows);
        write_cbpp(buffer, value.facets);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::search_response::search_metrics> {
    static inline couchbase::core::operations::search_response::search_metrics
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_metrics value;
        read_cbpp(value.took, buffer);
        read_cbpp(value.total_rows, buffer);
        read_cbpp(value.max_score, buffer);
        read_cbpp(value.success_partition_count, buffer);
        read_cbpp(value.error_partition_count, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response::search_metrics
              &value)
    {
        write_cbpp(buffer, value.took);
        write_cbpp(buffer, value.total_rows);
        write_cbpp(buffer, value.max_score);
        write_cbpp(buffer, value.success_partition_count);
        write_cbpp(buffer, value.error_partition_count);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::search_response::search_meta_data> {
    static inline couchbase::core::operations::search_response::search_meta_data
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_meta_data value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.metrics, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response::search_meta_data
              &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.metrics);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::search_response::search_location> {
    static inline couchbase::core::operations::search_response::search_location
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_location value;
        read_cbpp(value.field, buffer);
        read_cbpp(value.term, buffer);
        read_cbpp(value.position, buffer);
        read_cbpp(value.start_offset, buffer);
        read_cbpp(value.end_offset, buffer);
        read_cbpp(value.array_positions, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response::search_location
              &value)
    {
        write_cbpp(buffer, value.field);
        write_cbpp(buffer, value.term);
        write_cbpp(buffer, value.position);
        write_cbpp(buffer, value.start_offset);
        write_cbpp(buffer, value.end_offset);
        write_cbpp(buffer, value.array_positions);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::search_response::search_row> {
    static inline couchbase::core::operations::search_response::search_row
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_row value;
        read_cbpp(value.index, buffer);
        read_cbpp(value.id, buffer);
        read_cbpp(value.score, buffer);
        read_cbpp(value.locations, buffer);
        read_cbpp(value.fragments, buffer);
        read_cbpp(value.fields, buffer);
        read_cbpp(value.explanation, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response::search_row &value)
    {
        write_cbpp(buffer, value.index);
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.score);
        write_cbpp(buffer, value.locations);
        write_cbpp(buffer, value.fragments);
        write_cbpp(buffer, value.fields);
        write_cbpp(buffer, value.explanation);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::search_response::search_facet> {
    static inline couchbase::core::operations::search_response::search_facet
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_facet value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.field, buffer);
        read_cbpp(value.total, buffer);
        read_cbpp(value.missing, buffer);
        read_cbpp(value.other, buffer);
        read_cbpp(value.terms, buffer);
        read_cbpp(value.date_ranges, buffer);
        read_cbpp(value.numeric_ranges, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::search_response::search_facet &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.field);
        write_cbpp(buffer, value.total);
        write_cbpp(buffer, value.missing);
        write_cbpp(buffer, value.other);
        write_cbpp(buffer, value.terms);
        write_cbpp(buffer, value.date_ranges);
        write_cbpp(buffer, value.numeric_ranges);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::search_response::search_facet::term_facet> {
    static inline couchbase::core::operations::search_response::search_facet::
        term_facet
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_facet::term_facet
            value;
        read_cbpp(value.term, buffer);
        read_cbpp(value.count, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response::search_facet::
              term_facet &value)
    {
        write_cbpp(buffer, value.term);
        write_cbpp(buffer, value.count);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::search_response::
                           search_facet::date_range_facet> {
    static inline couchbase::core::operations::search_response::search_facet::
        date_range_facet
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_facet::
            date_range_facet value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.count, buffer);
        read_cbpp(value.start, buffer);
        read_cbpp(value.end, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response::search_facet::
              date_range_facet &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.count);
        write_cbpp(buffer, value.start);
        write_cbpp(buffer, value.end);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::search_response::
                           search_facet::numeric_range_facet> {
    static inline couchbase::core::operations::search_response::search_facet::
        numeric_range_facet
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_response::search_facet::
            numeric_range_facet value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.count, buffer);
        read_cbpp(value.min, buffer);
        read_cbpp(value.max, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_response::search_facet::
              numeric_range_facet &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.count);
        write_cbpp(buffer, value.min);
        write_cbpp(buffer, value.max);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::search_request> {
    static inline couchbase::core::operations::search_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::search_request value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.query, buffer);
        read_cbpp(value.limit, buffer);
        read_cbpp(value.skip, buffer);
        read_cbpp(value.explain, buffer);
        read_cbpp(value.disable_scoring, buffer);
        read_cbpp(value.include_locations, buffer);
        read_cbpp(value.highlight_style, buffer);
        read_cbpp(value.highlight_fields, buffer);
        read_cbpp(value.fields, buffer);
        read_cbpp(value.collections, buffer);
        read_cbpp(value.scan_consistency, buffer);
        read_cbpp(value.mutation_state, buffer);
        read_cbpp(value.sort_specs, buffer);
        read_cbpp(value.facets, buffer);
        read_cbpp(value.raw, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.body_str, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::search_request &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.query);
        write_cbpp(buffer, value.limit);
        write_cbpp(buffer, value.skip);
        write_cbpp(buffer, value.explain);
        write_cbpp(buffer, value.disable_scoring);
        write_cbpp(buffer, value.include_locations);
        write_cbpp(buffer, value.highlight_style);
        write_cbpp(buffer, value.highlight_fields);
        write_cbpp(buffer, value.fields);
        write_cbpp(buffer, value.collections);
        write_cbpp(buffer, value.scan_consistency);
        write_cbpp(buffer, value.mutation_state);
        write_cbpp(buffer, value.sort_specs);
        write_cbpp(buffer, value.facets);
        write_cbpp(buffer, value.raw);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.body_str);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::touch_response> {
    static inline couchbase::core::operations::touch_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::touch_response value;
        read_cbpp(value.cas, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::touch_response &value)
    {
        write_cbpp(buffer, value.cas);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::touch_request> {
    static inline couchbase::core::operations::touch_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::touch_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::touch_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::lookup_in_response> {
    static inline couchbase::core::operations::lookup_in_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::lookup_in_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.fields, buffer);
        read_cbpp(value.deleted, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::lookup_in_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.fields);
        write_cbpp(buffer, value.deleted);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::lookup_in_response::entry> {
    static inline couchbase::core::operations::lookup_in_response::entry
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::lookup_in_response::entry value;
        read_cbpp(value.path, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.original_index, buffer);
        read_cbpp(value.exists, buffer);
        read_cbpp(value.opcode, buffer);
        read_cbpp(value.status, buffer);
        read_cbpp(value.ec, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::lookup_in_response::entry &value)
    {
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.original_index);
        write_cbpp(buffer, value.exists);
        write_cbpp(buffer, value.opcode);
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.ec);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::lookup_in_request> {
    static inline couchbase::core::operations::lookup_in_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::lookup_in_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.access_deleted, buffer);
        read_cbpp(value.specs, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::lookup_in_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.access_deleted);
        write_cbpp(buffer, value.specs);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::document_view_response> {
    static inline couchbase::core::operations::document_view_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::document_view_response value;
        read_cbpp(value.meta, buffer);
        read_cbpp(value.rows, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::document_view_response &value)
    {
        write_cbpp(buffer, value.meta);
        write_cbpp(buffer, value.rows);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::document_view_response::meta_data> {
    static inline couchbase::core::operations::document_view_response::meta_data
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::document_view_response::meta_data value;
        read_cbpp(value.total_rows, buffer);
        read_cbpp(value.debug_info, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::document_view_response::meta_data
              &value)
    {
        write_cbpp(buffer, value.total_rows);
        write_cbpp(buffer, value.debug_info);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::document_view_response::row> {
    static inline couchbase::core::operations::document_view_response::row
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::document_view_response::row value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.key, buffer);
        read_cbpp(value.value, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::document_view_response::row &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.key);
        write_cbpp(buffer, value.value);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::document_view_response::problem> {
    static inline couchbase::core::operations::document_view_response::problem
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::document_view_response::problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::document_view_response::problem
              &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::document_view_request> {
    static inline couchbase::core::operations::document_view_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::document_view_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.document_name, buffer);
        read_cbpp(value.view_name, buffer);
        read_cbpp(value.ns, buffer);
        read_cbpp(value.limit, buffer);
        read_cbpp(value.skip, buffer);
        read_cbpp(value.consistency, buffer);
        read_cbpp(value.keys, buffer);
        read_cbpp(value.key, buffer);
        read_cbpp(value.start_key, buffer);
        read_cbpp(value.end_key, buffer);
        read_cbpp(value.start_key_doc_id, buffer);
        read_cbpp(value.end_key_doc_id, buffer);
        read_cbpp(value.inclusive_end, buffer);
        read_cbpp(value.reduce, buffer);
        read_cbpp(value.group, buffer);
        read_cbpp(value.group_level, buffer);
        read_cbpp(value.debug, buffer);
        read_cbpp(value.raw, buffer);
        read_cbpp(value.order, buffer);
        read_cbpp(value.on_error, buffer);
        read_cbpp(value.query_string, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::document_view_request &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.document_name);
        write_cbpp(buffer, value.view_name);
        write_cbpp(buffer, value.ns);
        write_cbpp(buffer, value.limit);
        write_cbpp(buffer, value.skip);
        write_cbpp(buffer, value.consistency);
        write_cbpp(buffer, value.keys);
        write_cbpp(buffer, value.key);
        write_cbpp(buffer, value.start_key);
        write_cbpp(buffer, value.end_key);
        write_cbpp(buffer, value.start_key_doc_id);
        write_cbpp(buffer, value.end_key_doc_id);
        write_cbpp(buffer, value.inclusive_end);
        write_cbpp(buffer, value.reduce);
        write_cbpp(buffer, value.group);
        write_cbpp(buffer, value.group_level);
        write_cbpp(buffer, value.debug);
        write_cbpp(buffer, value.raw);
        write_cbpp(buffer, value.order);
        write_cbpp(buffer, value.on_error);
        write_cbpp(buffer, value.query_string);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_and_lock_response> {
    static inline couchbase::core::operations::get_and_lock_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_and_lock_response value;
        read_cbpp(value.value, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.flags, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_and_lock_response &value)
    {
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.flags);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::get_and_lock_request> {
    static inline couchbase::core::operations::get_and_lock_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::get_and_lock_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.lock_time, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::get_and_lock_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.lock_time);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::insert_response> {
    static inline couchbase::core::operations::insert_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::insert_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::insert_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::insert_request> {
    static inline couchbase::core::operations::insert_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::insert_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::insert_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::insert_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        insert_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::insert_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::insert_request_with_legacy_durability
            &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::mutate_in_response> {
    static inline couchbase::core::operations::mutate_in_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::mutate_in_response value;
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        read_cbpp(value.fields, buffer);
        read_cbpp(value.deleted, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::mutate_in_response &value)
    {
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
        write_cbpp(buffer, value.fields);
        write_cbpp(buffer, value.deleted);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::mutate_in_response::entry> {
    static inline couchbase::core::operations::mutate_in_response::entry
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::mutate_in_response::entry value;
        read_cbpp(value.path, buffer);
        read_cbpp(value.value, buffer);
        read_cbpp(value.original_index, buffer);
        read_cbpp(value.opcode, buffer);
        read_cbpp(value.status, buffer);
        read_cbpp(value.ec, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::mutate_in_response::entry &value)
    {
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.value);
        write_cbpp(buffer, value.original_index);
        write_cbpp(buffer, value.opcode);
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.ec);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::mutate_in_request> {
    static inline couchbase::core::operations::mutate_in_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::mutate_in_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.access_deleted, buffer);
        read_cbpp(value.create_as_deleted, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.store_semantics, buffer);
        read_cbpp(value.specs, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.preserve_expiry, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::mutate_in_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.access_deleted);
        write_cbpp(buffer, value.create_as_deleted);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.store_semantics);
        write_cbpp(buffer, value.specs);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.preserve_expiry);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::mutate_in_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        mutate_in_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::mutate_in_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.access_deleted, buffer);
        read_cbpp(value.create_as_deleted, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.store_semantics, buffer);
        read_cbpp(value.specs, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.preserve_expiry, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::
              mutate_in_request_with_legacy_durability &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.access_deleted);
        write_cbpp(buffer, value.create_as_deleted);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.store_semantics);
        write_cbpp(buffer, value.specs);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.preserve_expiry);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::increment_response> {
    static inline couchbase::core::operations::increment_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::increment_response value;
        read_cbpp(value.content, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.token, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::increment_response &value)
    {
        write_cbpp(buffer, value.content);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.token);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::increment_request> {
    static inline couchbase::core::operations::increment_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::increment_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.delta, buffer);
        read_cbpp(value.initial_value, buffer);
        read_cbpp(value.durability_level, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::increment_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.delta);
        write_cbpp(buffer, value.initial_value);
        write_cbpp(buffer, value.durability_level);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::increment_request_with_legacy_durability> {
    static inline couchbase::core::operations::
        increment_request_with_legacy_durability
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::increment_request_with_legacy_durability
            value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.delta, buffer);
        read_cbpp(value.initial_value, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.persist_to, buffer);
        read_cbpp(value.replicate_to, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::
              increment_request_with_legacy_durability &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.delta);
        write_cbpp(buffer, value.initial_value);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.persist_to);
        write_cbpp(buffer, value.replicate_to);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_upsert_response> {
    static inline couchbase::core::operations::management::group_upsert_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_upsert_response value;
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::group_upsert_response
              &value)
    {
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_upsert_request> {
    static inline couchbase::core::operations::management::group_upsert_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_upsert_request value;
        read_cbpp(value.group, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::group_upsert_request
              &value)
    {
        write_cbpp(buffer, value.group);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_pause_function_response> {
    static inline couchbase::core::operations::management::
        eventing_pause_function_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_pause_function_response value;
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_pause_function_response &value)
    {
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_pause_function_request> {
    static inline couchbase::core::operations::management::
        eventing_pause_function_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_pause_function_request
            value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_pause_function_request &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_get_all_response> {
    static inline couchbase::core::operations::management::
        query_index_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_get_all_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.indexes, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_get_all_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.indexes);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_get_all_request> {
    static inline couchbase::core::operations::management::
        query_index_get_all_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_get_all_request
            value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.query_ctx, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_get_all_request &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.query_ctx);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::collection_create_response> {
    static inline couchbase::core::operations::management::
        collection_create_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::collection_create_response
            value;
        read_cbpp(value.uid, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 collection_create_response &value)
    {
        write_cbpp(buffer, value.uid);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::collection_create_request> {
    static inline couchbase::core::operations::management::
        collection_create_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::collection_create_request
            value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.max_expiry, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::collection_create_request
            &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.max_expiry);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           eventing_resume_function_response> {
    static inline couchbase::core::operations::management::
        eventing_resume_function_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_resume_function_response value;
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_resume_function_response &value)
    {
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_resume_function_request> {
    static inline couchbase::core::operations::management::
        eventing_resume_function_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_resume_function_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_resume_function_request &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_get_stats_response> {
    static inline couchbase::core::operations::management::
        search_index_get_stats_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_get_stats_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.error, buffer);
        read_cbpp(value.stats, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_get_stats_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.error);
        write_cbpp(buffer, value.stats);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_get_stats_request> {
    static inline couchbase::core::operations::management::
        search_index_get_stats_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_get_stats_request
            value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_get_stats_request &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_get_all_response> {
    static inline couchbase::core::operations::management::
        bucket_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_get_all_response value;
        read_cbpp(value.buckets, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_get_all_response
              &value)
    {
        write_cbpp(buffer, value.buckets);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_get_all_request> {
    static inline couchbase::core::operations::management::
        bucket_get_all_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_get_all_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_get_all_request
              &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_build_deferred_response> {
    static inline couchbase::core::operations::management::
        query_index_build_deferred_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            query_index_build_deferred_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_build_deferred_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_build_deferred_response::query_problem> {
    static inline couchbase::core::operations::management::
        query_index_build_deferred_response::query_problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            query_index_build_deferred_response::query_problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              query_index_build_deferred_response::query_problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_build_deferred_request> {
    static inline couchbase::core::operations::management::
        query_index_build_deferred_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            query_index_build_deferred_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.query_ctx, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_build_deferred_request &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.query_ctx);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::cluster_describe_response> {
    static inline couchbase::core::operations::management::
        cluster_describe_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::cluster_describe_response
            value;
        read_cbpp(value.info, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::cluster_describe_response
            &value)
    {
        write_cbpp(buffer, value.info);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           cluster_describe_response::cluster_info> {
    static inline couchbase::core::operations::management::
        cluster_describe_response::cluster_info
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::cluster_describe_response::
            cluster_info value;
        read_cbpp(value.nodes, buffer);
        read_cbpp(value.buckets, buffer);
        read_cbpp(value.services, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 cluster_describe_response::cluster_info &value)
    {
        write_cbpp(buffer, value.nodes);
        write_cbpp(buffer, value.buckets);
        write_cbpp(buffer, value.services);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           cluster_describe_response::cluster_info::node> {
    static inline couchbase::core::operations::management::
        cluster_describe_response::cluster_info::node
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::cluster_describe_response::
            cluster_info::node value;
        read_cbpp(value.uuid, buffer);
        read_cbpp(value.otp_node, buffer);
        read_cbpp(value.status, buffer);
        read_cbpp(value.hostname, buffer);
        read_cbpp(value.os, buffer);
        read_cbpp(value.version, buffer);
        read_cbpp(value.services, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              cluster_describe_response::cluster_info::node &value)
    {
        write_cbpp(buffer, value.uuid);
        write_cbpp(buffer, value.otp_node);
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.hostname);
        write_cbpp(buffer, value.os);
        write_cbpp(buffer, value.version);
        write_cbpp(buffer, value.services);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           cluster_describe_response::cluster_info::bucket> {
    static inline couchbase::core::operations::management::
        cluster_describe_response::cluster_info::bucket
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::cluster_describe_response::
            cluster_info::bucket value;
        read_cbpp(value.uuid, buffer);
        read_cbpp(value.name, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              cluster_describe_response::cluster_info::bucket &value)
    {
        write_cbpp(buffer, value.uuid);
        write_cbpp(buffer, value.name);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::cluster_describe_request> {
    static inline couchbase::core::operations::management::
        cluster_describe_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::cluster_describe_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::cluster_describe_request
            &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_get_all_response> {
    static inline couchbase::core::operations::management::
        search_index_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_get_all_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.impl_version, buffer);
        read_cbpp(value.indexes, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_get_all_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.impl_version);
        write_cbpp(buffer, value.indexes);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_get_all_request> {
    static inline couchbase::core::operations::management::
        search_index_get_all_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_get_all_request
            value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_get_all_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_analyze_document_response> {
    static inline couchbase::core::operations::management::
        search_index_analyze_document_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_analyze_document_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.error, buffer);
        read_cbpp(value.analysis, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_analyze_document_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.error);
        write_cbpp(buffer, value.analysis);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_analyze_document_request> {
    static inline couchbase::core::operations::management::
        search_index_analyze_document_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_analyze_document_request value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.encoded_document, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_analyze_document_request &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.encoded_document);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_drop_response> {
    static inline couchbase::core::operations::management::
        query_index_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_drop_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::query_index_drop_response
            &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_drop_response::query_problem> {
    static inline couchbase::core::operations::management::
        query_index_drop_response::query_problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_drop_response::
            query_problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              query_index_drop_response::query_problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_drop_request> {
    static inline couchbase::core::operations::management::
        query_index_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_drop_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.query_ctx, buffer);
        read_cbpp(value.is_primary, buffer);
        read_cbpp(value.ignore_if_does_not_exist, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::query_index_drop_request
            &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.query_ctx);
        write_cbpp(buffer, value.is_primary);
        write_cbpp(buffer, value.ignore_if_does_not_exist);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_dataset_create_response> {
    static inline couchbase::core::operations::management::
        analytics_dataset_create_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataset_create_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataset_create_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_dataset_create_request> {
    static inline couchbase::core::operations::management::
        analytics_dataset_create_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataset_create_request value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.dataset_name, buffer);
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.condition, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.ignore_if_exists, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataset_create_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.dataset_name);
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.condition);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.ignore_if_exists);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_flush_response> {
    static inline couchbase::core::operations::management::bucket_flush_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_flush_response value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_flush_response
              &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_flush_request> {
    static inline couchbase::core::operations::management::bucket_flush_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_flush_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_flush_request
              &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_index_drop_response> {
    static inline couchbase::core::operations::management::
        analytics_index_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_index_drop_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_index_drop_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_index_drop_request> {
    static inline couchbase::core::operations::management::
        analytics_index_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_index_drop_request
            value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.dataset_name, buffer);
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.ignore_if_does_not_exist, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_index_drop_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.dataset_name);
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.ignore_if_does_not_exist);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_create_response> {
    static inline couchbase::core::operations::management::
        query_index_create_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_create_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_create_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_create_response::query_problem> {
    static inline couchbase::core::operations::management::
        query_index_create_response::query_problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_create_response::
            query_problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              query_index_create_response::query_problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_create_request> {
    static inline couchbase::core::operations::management::
        query_index_create_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_create_request
            value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.fields, buffer);
        read_cbpp(value.query_ctx, buffer);
        read_cbpp(value.is_primary, buffer);
        read_cbpp(value.ignore_if_exists, buffer);
        read_cbpp(value.condition, buffer);
        read_cbpp(value.deferred, buffer);
        read_cbpp(value.num_replicas, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_create_request &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.fields);
        write_cbpp(buffer, value.query_ctx);
        write_cbpp(buffer, value.is_primary);
        write_cbpp(buffer, value.ignore_if_exists);
        write_cbpp(buffer, value.condition);
        write_cbpp(buffer, value.deferred);
        write_cbpp(buffer, value.num_replicas);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_upsert_response> {
    static inline couchbase::core::operations::management::
        search_index_upsert_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_upsert_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.uuid, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_upsert_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.uuid);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_upsert_request> {
    static inline couchbase::core::operations::management::
        search_index_upsert_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_upsert_request
            value;
        read_cbpp(value.index, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_upsert_request &value)
    {
        write_cbpp(buffer, value.index);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_dataset_get_all_response> {
    static inline couchbase::core::operations::management::
        analytics_dataset_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataset_get_all_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.datasets, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataset_get_all_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.datasets);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_dataset_get_all_request> {
    static inline couchbase::core::operations::management::
        analytics_dataset_get_all_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataset_get_all_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataset_get_all_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_index_get_all_response> {
    static inline couchbase::core::operations::management::
        analytics_index_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_index_get_all_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.indexes, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_index_get_all_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.indexes);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_index_get_all_request> {
    static inline couchbase::core::operations::management::
        analytics_index_get_all_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_index_get_all_request
            value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_index_get_all_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_get_pending_mutations_response> {
    static inline couchbase::core::operations::management::
        analytics_get_pending_mutations_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_get_pending_mutations_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        read_cbpp(value.stats, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              analytics_get_pending_mutations_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
        write_cbpp(buffer, value.stats);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_get_pending_mutations_request> {
    static inline couchbase::core::operations::management::
        analytics_get_pending_mutations_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_get_pending_mutations_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_get_pending_mutations_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_dataverse_drop_response> {
    static inline couchbase::core::operations::management::
        analytics_dataverse_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataverse_drop_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataverse_drop_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_dataverse_drop_request> {
    static inline couchbase::core::operations::management::
        analytics_dataverse_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataverse_drop_request value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.ignore_if_does_not_exist, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataverse_drop_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.ignore_if_does_not_exist);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_problem> {
    static inline couchbase::core::operations::management::eventing_problem
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.name, buffer);
        read_cbpp(value.description, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::eventing_problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.description);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_connect_response> {
    static inline couchbase::core::operations::management::
        analytics_link_connect_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_connect_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_connect_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_connect_response::problem> {
    static inline couchbase::core::operations::management::
        analytics_link_connect_response::problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_link_connect_response::problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              analytics_link_connect_response::problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_connect_request> {
    static inline couchbase::core::operations::management::
        analytics_link_connect_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_connect_request
            value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.force, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_connect_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.force);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           collections_manifest_get_response> {
    static inline couchbase::core::operations::management::
        collections_manifest_get_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            collections_manifest_get_response value;
        read_cbpp(value.manifest, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 collections_manifest_get_response &value)
    {
        write_cbpp(buffer, value.manifest);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::collections_manifest_get_request> {
    static inline couchbase::core::operations::management::
        collections_manifest_get_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            collections_manifest_get_request value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.partition, buffer);
        read_cbpp(value.opaque, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 collections_manifest_get_request &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.partition);
        write_cbpp(buffer, value.opaque);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::change_password_response> {
    static inline couchbase::core::operations::management::
        change_password_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::change_password_response value;
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::change_password_response
            &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::change_password_request> {
    static inline couchbase::core::operations::management::
        change_password_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::change_password_request value;
        read_cbpp(value.newPassword, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::change_password_request
              &value)
    {
        write_cbpp(buffer, value.newPassword);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           cluster_developer_preview_enable_response> {
    static inline couchbase::core::operations::management::
        cluster_developer_preview_enable_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            cluster_developer_preview_enable_response value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              cluster_developer_preview_enable_response &value)
    {
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           cluster_developer_preview_enable_request> {
    static inline couchbase::core::operations::management::
        cluster_developer_preview_enable_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            cluster_developer_preview_enable_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              cluster_developer_preview_enable_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_drop_response> {
    static inline couchbase::core::operations::management::
        analytics_link_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_drop_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_drop_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_drop_response::problem> {
    static inline couchbase::core::operations::management::
        analytics_link_drop_response::problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_drop_response::
            problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_drop_response::problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_drop_request> {
    static inline couchbase::core::operations::management::
        analytics_link_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_drop_request
            value;
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_drop_request &value)
    {
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_describe_response> {
    static inline couchbase::core::operations::management::
        bucket_describe_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_describe_response value;
        read_cbpp(value.info, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::bucket_describe_response
            &value)
    {
        write_cbpp(buffer, value.info);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           bucket_describe_response::bucket_info> {
    static inline couchbase::core::operations::management::
        bucket_describe_response::bucket_info
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_describe_response::
            bucket_info value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.uuid, buffer);
        read_cbpp(value.number_of_nodes, buffer);
        read_cbpp(value.number_of_replicas, buffer);
        read_cbpp(value.bucket_capabilities, buffer);
        read_cbpp(value.storage_backend, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 bucket_describe_response::bucket_info &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.uuid);
        write_cbpp(buffer, value.number_of_nodes);
        write_cbpp(buffer, value.number_of_replicas);
        write_cbpp(buffer, value.bucket_capabilities);
        write_cbpp(buffer, value.storage_backend);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_describe_request> {
    static inline couchbase::core::operations::management::
        bucket_describe_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_describe_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_describe_request
              &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           eventing_upsert_function_response> {
    static inline couchbase::core::operations::management::
        eventing_upsert_function_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_upsert_function_response value;
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_upsert_function_response &value)
    {
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_upsert_function_request> {
    static inline couchbase::core::operations::management::
        eventing_upsert_function_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_upsert_function_request value;
        read_cbpp(value.function, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_upsert_function_request &value)
    {
        write_cbpp(buffer, value.function);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_get_all_response> {
    static inline couchbase::core::operations::management::
        view_index_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_get_all_response
            value;
        read_cbpp(value.design_documents, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 view_index_get_all_response &value)
    {
        write_cbpp(buffer, value.design_documents);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_get_all_request> {
    static inline couchbase::core::operations::management::
        view_index_get_all_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_get_all_request
            value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.ns, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 view_index_get_all_request &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.ns);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_get_response> {
    static inline couchbase::core::operations::management::bucket_get_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_get_response value;
        read_cbpp(value.bucket, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_get_response
              &value)
    {
        write_cbpp(buffer, value.bucket);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_get_request> {
    static inline couchbase::core::operations::management::bucket_get_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_get_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_get_request
              &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_update_response> {
    static inline couchbase::core::operations::management::
        bucket_update_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_update_response value;
        read_cbpp(value.bucket, buffer);
        read_cbpp(value.error_message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_update_response
              &value)
    {
        write_cbpp(buffer, value.bucket);
        write_cbpp(buffer, value.error_message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_update_request> {
    static inline couchbase::core::operations::management::bucket_update_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_update_request value;
        read_cbpp(value.bucket, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_update_request
              &value)
    {
        write_cbpp(buffer, value.bucket);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_drop_response> {
    static inline couchbase::core::operations::management::bucket_drop_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_drop_response value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_drop_response
              &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_drop_request> {
    static inline couchbase::core::operations::management::bucket_drop_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_drop_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_drop_request
              &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::freeform_response> {
    static inline couchbase::core::operations::management::freeform_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::freeform_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.headers, buffer);
        read_cbpp(value.body, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::freeform_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.headers);
        write_cbpp(buffer, value.body);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::freeform_request> {
    static inline couchbase::core::operations::management::freeform_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::freeform_request value;
        read_cbpp(value.type, buffer);
        read_cbpp(value.method, buffer);
        read_cbpp(value.path, buffer);
        read_cbpp(value.headers, buffer);
        read_cbpp(value.body, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::freeform_request &value)
    {
        write_cbpp(buffer, value.type);
        write_cbpp(buffer, value.method);
        write_cbpp(buffer, value.path);
        write_cbpp(buffer, value.headers);
        write_cbpp(buffer, value.body);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::scope_drop_response> {
    static inline couchbase::core::operations::management::scope_drop_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::scope_drop_response value;
        read_cbpp(value.uid, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::scope_drop_response
              &value)
    {
        write_cbpp(buffer, value.uid);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::scope_drop_request> {
    static inline couchbase::core::operations::management::scope_drop_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::scope_drop_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::scope_drop_request
              &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_upsert_response> {
    static inline couchbase::core::operations::management::
        view_index_upsert_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_upsert_response
            value;
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 view_index_upsert_response &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_upsert_request> {
    static inline couchbase::core::operations::management::
        view_index_upsert_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_upsert_request
            value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.document, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::view_index_upsert_request
            &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.document);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_get_all_response> {
    static inline couchbase::core::operations::management::user_get_all_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_get_all_response value;
        read_cbpp(value.users, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::user_get_all_response
              &value)
    {
        write_cbpp(buffer, value.users);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_get_all_request> {
    static inline couchbase::core::operations::management::user_get_all_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_get_all_request value;
        read_cbpp(value.domain, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::user_get_all_request
              &value)
    {
        write_cbpp(buffer, value.domain);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::scope_create_response> {
    static inline couchbase::core::operations::management::scope_create_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::scope_create_response value;
        read_cbpp(value.uid, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::scope_create_response
              &value)
    {
        write_cbpp(buffer, value.uid);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::scope_create_request> {
    static inline couchbase::core::operations::management::scope_create_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::scope_create_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::scope_create_request
              &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_get_function_response> {
    static inline couchbase::core::operations::management::
        eventing_get_function_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_get_function_response
            value;
        read_cbpp(value.function, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_get_function_response &value)
    {
        write_cbpp(buffer, value.function);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_get_function_request> {
    static inline couchbase::core::operations::management::
        eventing_get_function_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_get_function_request
            value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_get_function_request &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_drop_response> {
    static inline couchbase::core::operations::management::
        view_index_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_drop_response value;
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::view_index_drop_response
            &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_drop_request> {
    static inline couchbase::core::operations::management::
        view_index_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_drop_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.document_name, buffer);
        read_cbpp(value.ns, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::view_index_drop_request
              &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.document_name);
        write_cbpp(buffer, value.ns);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_replace_response> {
    static inline couchbase::core::operations::management::
        analytics_link_replace_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_replace_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_replace_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_replace_response::problem> {
    static inline couchbase::core::operations::management::
        analytics_link_replace_response::problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_link_replace_response::problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              analytics_link_replace_response::problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_disconnect_response> {
    static inline couchbase::core::operations::management::
        analytics_link_disconnect_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_link_disconnect_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_disconnect_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_disconnect_response::problem> {
    static inline couchbase::core::operations::management::
        analytics_link_disconnect_response::problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_link_disconnect_response::problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              analytics_link_disconnect_response::problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_disconnect_request> {
    static inline couchbase::core::operations::management::
        analytics_link_disconnect_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_link_disconnect_request value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_disconnect_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_upsert_response> {
    static inline couchbase::core::operations::management::user_upsert_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_upsert_response value;
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::user_upsert_response
              &value)
    {
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_upsert_request> {
    static inline couchbase::core::operations::management::user_upsert_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_upsert_request value;
        read_cbpp(value.domain, buffer);
        read_cbpp(value.user, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::user_upsert_request
              &value)
    {
        write_cbpp(buffer, value.domain);
        write_cbpp(buffer, value.user);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_get_status_response> {
    static inline couchbase::core::operations::management::
        eventing_get_status_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_get_status_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_get_status_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_get_status_request> {
    static inline couchbase::core::operations::management::
        eventing_get_status_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_get_status_request
            value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_get_status_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           eventing_get_all_functions_response> {
    static inline couchbase::core::operations::management::
        eventing_get_all_functions_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_get_all_functions_response value;
        read_cbpp(value.functions, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_get_all_functions_response &value)
    {
        write_cbpp(buffer, value.functions);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           eventing_get_all_functions_request> {
    static inline couchbase::core::operations::management::
        eventing_get_all_functions_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_get_all_functions_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_get_all_functions_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_index_create_response> {
    static inline couchbase::core::operations::management::
        analytics_index_create_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_index_create_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_index_create_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_index_create_request> {
    static inline couchbase::core::operations::management::
        analytics_index_create_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_index_create_request
            value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.dataset_name, buffer);
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.fields, buffer);
        read_cbpp(value.ignore_if_exists, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_index_create_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.dataset_name);
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.fields);
        write_cbpp(buffer, value.ignore_if_exists);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::scope_get_all_response> {
    static inline couchbase::core::operations::management::
        scope_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::scope_get_all_response value;
        read_cbpp(value.manifest, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::scope_get_all_response
              &value)
    {
        write_cbpp(buffer, value.manifest);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::scope_get_all_request> {
    static inline couchbase::core::operations::management::scope_get_all_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::scope_get_all_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::scope_get_all_request
              &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_get_response> {
    static inline couchbase::core::operations::management::user_get_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_get_response value;
        read_cbpp(value.user, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::user_get_response &value)
    {
        write_cbpp(buffer, value.user);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_get_request> {
    static inline couchbase::core::operations::management::user_get_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_get_request value;
        read_cbpp(value.username, buffer);
        read_cbpp(value.domain, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::user_get_request &value)
    {
        write_cbpp(buffer, value.username);
        write_cbpp(buffer, value.domain);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_drop_response> {
    static inline couchbase::core::operations::management::
        search_index_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_drop_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_drop_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_drop_request> {
    static inline couchbase::core::operations::management::
        search_index_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_drop_request
            value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::search_index_drop_request
            &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_control_plan_freeze_response> {
    static inline couchbase::core::operations::management::
        search_index_control_plan_freeze_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_control_plan_freeze_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              search_index_control_plan_freeze_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_control_plan_freeze_request> {
    static inline couchbase::core::operations::management::
        search_index_control_plan_freeze_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_control_plan_freeze_request value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.freeze, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              search_index_control_plan_freeze_request &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.freeze);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_stats_response> {
    static inline couchbase::core::operations::management::
        search_index_stats_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_stats_response
            value;
        read_cbpp(value.stats, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_stats_response &value)
    {
        write_cbpp(buffer, value.stats);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_stats_request> {
    static inline couchbase::core::operations::management::
        search_index_stats_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_stats_request
            value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_stats_request &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_drop_response> {
    static inline couchbase::core::operations::management::user_drop_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_drop_response value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::user_drop_response
              &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::user_drop_request> {
    static inline couchbase::core::operations::management::user_drop_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::user_drop_request value;
        read_cbpp(value.username, buffer);
        read_cbpp(value.domain, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::user_drop_request &value)
    {
        write_cbpp(buffer, value.username);
        write_cbpp(buffer, value.domain);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_dataverse_create_response> {
    static inline couchbase::core::operations::management::
        analytics_dataverse_create_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataverse_create_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataverse_create_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_dataverse_create_request> {
    static inline couchbase::core::operations::management::
        analytics_dataverse_create_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_dataverse_create_request value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.ignore_if_exists, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataverse_create_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.ignore_if_exists);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_control_query_response> {
    static inline couchbase::core::operations::management::
        search_index_control_query_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_control_query_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_control_query_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_control_query_request> {
    static inline couchbase::core::operations::management::
        search_index_control_query_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_control_query_request value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.allow, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_control_query_request &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.allow);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::role_get_all_response> {
    static inline couchbase::core::operations::management::role_get_all_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::role_get_all_response value;
        read_cbpp(value.roles, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::role_get_all_response
              &value)
    {
        write_cbpp(buffer, value.roles);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::role_get_all_request> {
    static inline couchbase::core::operations::management::role_get_all_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::role_get_all_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::role_get_all_request
              &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_get_all_response> {
    static inline couchbase::core::operations::management::
        group_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_get_all_response value;
        read_cbpp(value.groups, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::group_get_all_response
              &value)
    {
        write_cbpp(buffer, value.groups);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_get_all_request> {
    static inline couchbase::core::operations::management::group_get_all_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_get_all_request value;
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::group_get_all_request
              &value)
    {
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_create_response> {
    static inline couchbase::core::operations::management::
        analytics_link_create_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_create_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_create_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_create_response::problem> {
    static inline couchbase::core::operations::management::
        analytics_link_create_response::problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_link_create_response::problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_create_response::problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_drop_function_response> {
    static inline couchbase::core::operations::management::
        eventing_drop_function_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_drop_function_response
            value;
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_drop_function_response &value)
    {
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_drop_function_request> {
    static inline couchbase::core::operations::management::
        eventing_drop_function_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::eventing_drop_function_request
            value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_drop_function_request &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::collection_drop_response> {
    static inline couchbase::core::operations::management::
        collection_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::collection_drop_response value;
        read_cbpp(value.uid, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::collection_drop_response
            &value)
    {
        write_cbpp(buffer, value.uid);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::collection_drop_request> {
    static inline couchbase::core::operations::management::
        collection_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::collection_drop_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::collection_drop_request
              &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_problem> {
    static inline couchbase::core::operations::management::analytics_problem
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::analytics_problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_control_ingest_response> {
    static inline couchbase::core::operations::management::
        search_index_control_ingest_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_control_ingest_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_control_ingest_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_control_ingest_request> {
    static inline couchbase::core::operations::management::
        search_index_control_ingest_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_control_ingest_request value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.pause, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 search_index_control_ingest_request &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.pause);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           eventing_deploy_function_response> {
    static inline couchbase::core::operations::management::
        eventing_deploy_function_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_deploy_function_response value;
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_deploy_function_response &value)
    {
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::eventing_deploy_function_request> {
    static inline couchbase::core::operations::management::
        eventing_deploy_function_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_deploy_function_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_deploy_function_request &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_get_response> {
    static inline couchbase::core::operations::management::group_get_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_get_response value;
        read_cbpp(value.group, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::group_get_response
              &value)
    {
        write_cbpp(buffer, value.group);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_get_request> {
    static inline couchbase::core::operations::management::group_get_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_get_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::group_get_request &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_get_response> {
    static inline couchbase::core::operations::management::
        view_index_get_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_get_response value;
        read_cbpp(value.document, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::view_index_get_response
              &value)
    {
        write_cbpp(buffer, value.document);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::view_index_get_request> {
    static inline couchbase::core::operations::management::
        view_index_get_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::view_index_get_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.document_name, buffer);
        read_cbpp(value.ns, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::view_index_get_request
              &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.document_name);
        write_cbpp(buffer, value.ns);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_create_response> {
    static inline couchbase::core::operations::management::
        bucket_create_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_create_response value;
        read_cbpp(value.error_message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_create_response
              &value)
    {
        write_cbpp(buffer, value.error_message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::bucket_create_request> {
    static inline couchbase::core::operations::management::bucket_create_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::bucket_create_request value;
        read_cbpp(value.bucket, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::bucket_create_request
              &value)
    {
        write_cbpp(buffer, value.bucket);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_dataset_drop_response> {
    static inline couchbase::core::operations::management::
        analytics_dataset_drop_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_dataset_drop_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataset_drop_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_dataset_drop_request> {
    static inline couchbase::core::operations::management::
        analytics_dataset_drop_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_dataset_drop_request
            value;
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.dataset_name, buffer);
        read_cbpp(value.ignore_if_does_not_exist, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_dataset_drop_request &value)
    {
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.dataset_name);
        write_cbpp(buffer, value.ignore_if_does_not_exist);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_drop_response> {
    static inline couchbase::core::operations::management::group_drop_response
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_drop_response value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::group_drop_response
              &value)
    {
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::group_drop_request> {
    static inline couchbase::core::operations::management::group_drop_request
    read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::group_drop_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::group_drop_request
              &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_get_response> {
    static inline couchbase::core::operations::management::
        search_index_get_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_get_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.index, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::search_index_get_response
            &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.index);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::search_index_get_request> {
    static inline couchbase::core::operations::management::
        search_index_get_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::search_index_get_request value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::search_index_get_request
            &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_get_all_deferred_response> {
    static inline couchbase::core::operations::management::
        query_index_get_all_deferred_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            query_index_get_all_deferred_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.index_names, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_get_all_deferred_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.index_names);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_get_all_deferred_request> {
    static inline couchbase::core::operations::management::
        query_index_get_all_deferred_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            query_index_get_all_deferred_request value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.query_ctx, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_get_all_deferred_request &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.query_ctx);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_build_response> {
    static inline couchbase::core::operations::management::
        query_index_build_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_build_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 query_index_build_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           query_index_build_response::query_problem> {
    static inline couchbase::core::operations::management::
        query_index_build_response::query_problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_build_response::
            query_problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              query_index_build_response::query_problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::query_index_build_request> {
    static inline couchbase::core::operations::management::
        query_index_build_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::query_index_build_request
            value;
        read_cbpp(value.bucket_name, buffer);
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.query_ctx, buffer);
        read_cbpp(value.index_names, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(
        MessageBuffer &buffer,
        const couchbase::core::operations::management::query_index_build_request
            &value)
    {
        write_cbpp(buffer, value.bucket_name);
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.query_ctx);
        write_cbpp(buffer, value.index_names);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           eventing_undeploy_function_response> {
    static inline couchbase::core::operations::management::
        eventing_undeploy_function_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_undeploy_function_response value;
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_undeploy_function_response &value)
    {
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           eventing_undeploy_function_request> {
    static inline couchbase::core::operations::management::
        eventing_undeploy_function_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            eventing_undeploy_function_request value;
        read_cbpp(value.name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 eventing_undeploy_function_request &value)
    {
        write_cbpp(buffer, value.name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_get_documents_count_response> {
    static inline couchbase::core::operations::management::
        search_index_get_documents_count_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_get_documents_count_response value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.count, buffer);
        read_cbpp(value.error, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              search_index_get_documents_count_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.count);
        write_cbpp(buffer, value.error);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           search_index_get_documents_count_request> {
    static inline couchbase::core::operations::management::
        search_index_get_documents_count_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            search_index_get_documents_count_request value;
        read_cbpp(value.index_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              search_index_get_documents_count_request &value)
    {
        write_cbpp(buffer, value.index_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_get_all_response> {
    static inline couchbase::core::operations::management::
        analytics_link_get_all_response
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_get_all_response
            value;
        read_cbpp(value.status, buffer);
        read_cbpp(value.errors, buffer);
        read_cbpp(value.couchbase, buffer);
        read_cbpp(value.s3, buffer);
        read_cbpp(value.azure_blob, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_get_all_response &value)
    {
        write_cbpp(buffer, value.status);
        write_cbpp(buffer, value.errors);
        write_cbpp(buffer, value.couchbase);
        write_cbpp(buffer, value.s3);
        write_cbpp(buffer, value.azure_blob);
    }
};

template <>
struct message_codec_t<couchbase::core::operations::management::
                           analytics_link_get_all_response::problem> {
    static inline couchbase::core::operations::management::
        analytics_link_get_all_response::problem
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::
            analytics_link_get_all_response::problem value;
        read_cbpp(value.code, buffer);
        read_cbpp(value.message, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::operations::management::
              analytics_link_get_all_response::problem &value)
    {
        write_cbpp(buffer, value.code);
        write_cbpp(buffer, value.message);
    }
};

template <>
struct message_codec_t<
    couchbase::core::operations::management::analytics_link_get_all_request> {
    static inline couchbase::core::operations::management::
        analytics_link_get_all_request
        read(MessageBuffer &buffer)
    {
        couchbase::core::operations::management::analytics_link_get_all_request
            value;
        read_cbpp(value.link_type, buffer);
        read_cbpp(value.link_name, buffer);
        read_cbpp(value.dataverse_name, buffer);
        read_cbpp(value.client_context_id, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::operations::management::
                                 analytics_link_get_all_request &value)
    {
        write_cbpp(buffer, value.link_type);
        write_cbpp(buffer, value.link_name);
        write_cbpp(buffer, value.dataverse_name);
        write_cbpp(buffer, value.client_context_id);
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::impl::subdoc::command> {
    static inline couchbase::core::impl::subdoc::command
    read(MessageBuffer &buffer)
    {
        couchbase::core::impl::subdoc::command value;
        read_cbpp(value.opcode_, buffer);
        read_cbpp(value.path_, buffer);
        read_cbpp(value.value_, buffer);
        read_cbpp(value.flags_, buffer);
        read_cbpp(value.original_index_, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::impl::subdoc::command &value)
    {
        write_cbpp(buffer, value.opcode_);
        write_cbpp(buffer, value.path_);
        write_cbpp(buffer, value.value_);
        write_cbpp(buffer, value.flags_);
        write_cbpp(buffer, value.original_index_);
    }
};

template <>
struct message_codec_t<couchbase::core::scan_term> {
    static inline couchbase::core::scan_term read(MessageBuffer &buffer)
    {
        couchbase::core::scan_term value;
        read_cbpp(value.id, buffer);
        read_cbpp(value.exclusive, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::scan_term &value)
    {
        write_cbpp(buffer, value.id);
        write_cbpp(buffer, value.exclusive);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan> {
    static inline couchbase::core::range_scan read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan value;
        read_cbpp(value.start_, buffer);
        read_cbpp(value.end_, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::range_scan &value)
    {
        write_cbpp(buffer, value.start_);
        write_cbpp(buffer, value.end_);
    }
};

template <>
struct message_codec_t<couchbase::core::sampling_scan> {
    static inline couchbase::core::sampling_scan read(MessageBuffer &buffer)
    {
        couchbase::core::sampling_scan value;
        read_cbpp(value.limit, buffer);
        read_cbpp(value.seed, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::sampling_scan &value)
    {
        write_cbpp(buffer, value.limit);
        write_cbpp(buffer, value.seed);
    }
};

template <>
struct message_codec_t<couchbase::core::range_snapshot_requirements> {
    static inline couchbase::core::range_snapshot_requirements
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_snapshot_requirements value;
        read_cbpp(value.vbucket_uuid, buffer);
        read_cbpp(value.sequence_number, buffer);
        read_cbpp(value.sequence_number_exists, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_snapshot_requirements &value)
    {
        write_cbpp(buffer, value.vbucket_uuid);
        write_cbpp(buffer, value.sequence_number);
        write_cbpp(buffer, value.sequence_number_exists);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_create_options> {
    static inline couchbase::core::range_scan_create_options
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_create_options value;
        read_cbpp(value.scope_name, buffer);
        read_cbpp(value.collection_name, buffer);
        read_cbpp(value.scan_type, buffer);
        read_cbpp(value.timeout, buffer);
        read_cbpp(value.collection_id, buffer);
        read_cbpp(value.snapshot_requirements, buffer);
        read_cbpp(value.ids_only, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_scan_create_options &value)
    {
        write_cbpp(buffer, value.scope_name);
        write_cbpp(buffer, value.collection_name);
        write_cbpp(buffer, value.scan_type);
        write_cbpp(buffer, value.timeout);
        write_cbpp(buffer, value.collection_id);
        write_cbpp(buffer, value.snapshot_requirements);
        write_cbpp(buffer, value.ids_only);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_create_result> {
    static inline couchbase::core::range_scan_create_result
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_create_result value;
        read_cbpp(value.scan_uuid, buffer);
        read_cbpp(value.ids_only, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_scan_create_result &value)
    {
        write_cbpp(buffer, value.scan_uuid);
        write_cbpp(buffer, value.ids_only);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_continue_options> {
    static inline couchbase::core::range_scan_continue_options
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_continue_options value;
        read_cbpp(value.batch_item_limit, buffer);
        read_cbpp(value.batch_byte_limit, buffer);
        read_cbpp(value.batch_time_limit, buffer);
        read_cbpp(value.ids_only, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_scan_continue_options &value)
    {
        write_cbpp(buffer, value.batch_item_limit);
        write_cbpp(buffer, value.batch_byte_limit);
        write_cbpp(buffer, value.batch_time_limit);
        write_cbpp(buffer, value.ids_only);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_continue_result> {
    static inline couchbase::core::range_scan_continue_result
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_continue_result value;
        read_cbpp(value.more, buffer);
        read_cbpp(value.complete, buffer);
        read_cbpp(value.ids_only, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_scan_continue_result &value)
    {
        write_cbpp(buffer, value.more);
        write_cbpp(buffer, value.complete);
        write_cbpp(buffer, value.ids_only);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_cancel_options> {
    static inline couchbase::core::range_scan_cancel_options
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_cancel_options value;
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_scan_cancel_options &value)
    {
        write_cbpp(buffer, value.timeout);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_item_body> {
    static inline couchbase::core::range_scan_item_body
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_item_body value;
        read_cbpp(value.flags, buffer);
        read_cbpp(value.expiry, buffer);
        read_cbpp(value.cas, buffer);
        read_cbpp(value.sequence_number, buffer);
        read_cbpp(value.datatype, buffer);
        read_cbpp(value.value, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::range_scan_item_body &value)
    {
        write_cbpp(buffer, value.flags);
        write_cbpp(buffer, value.expiry);
        write_cbpp(buffer, value.cas);
        write_cbpp(buffer, value.sequence_number);
        write_cbpp(buffer, value.datatype);
        write_cbpp(buffer, value.value);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_item> {
    static inline couchbase::core::range_scan_item read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_item value;
        read_cbpp(value.key, buffer);
        read_cbpp(value.body, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::range_scan_item &value)
    {
        write_cbpp(buffer, value.key);
        write_cbpp(buffer, value.body);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_cancel_result> {
    static inline couchbase::core::range_scan_cancel_result
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_cancel_result value;
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_scan_cancel_result &value)
    {
    }
};

template <>
struct message_codec_t<couchbase::core::mutation_state> {
    static inline couchbase::core::mutation_state read(MessageBuffer &buffer)
    {
        couchbase::core::mutation_state value;
        read_cbpp(value.tokens, buffer);
        return value;
    }

    static inline void write(MessageBuffer &buffer,
                             const couchbase::core::mutation_state &value)
    {
        write_cbpp(buffer, value.tokens);
    }
};

template <>
struct message_codec_t<couchbase::core::range_scan_orchestrator_options> {
    static inline couchbase::core::range_scan_orchestrator_options
    read(MessageBuffer &buffer)
    {
        couchbase::core::range_scan_orchestrator_options value;
        read_cbpp(value.ids_only, buffer);
        read_cbpp(value.consistent_with, buffer);
        read_cbpp(value.sort, buffer);
        read_cbpp(value.batch_item_limit, buffer);
        read_cbpp(value.batch_byte_limit, buffer);
        read_cbpp(value.batch_time_limit, buffer);
        read_cbpp(value.timeout, buffer);
        return value;
    }

    static inline void
    write(MessageBuffer &buffer,
          const couchbase::core::range_scan_orchestrator_options &value)
    {
        write_cbpp(buffer, value.ids_only);
        write_cbpp(buffer, value.consistent_with);
        write_cbpp(buffer, value.sort);
        write_cbpp(buffer, value.batch_item_limit);
        write_cbpp(buffer, value.batch_byte_limit);
        write_cbpp(buffer, value.batch_time_limit);
        write_cbpp(buffer, value.timeout);
    }
};

} // namespace couchbase::dart
