// GENERATED CODE - DO NOT MODIFY BY HAND

#include <Connection.hpp>
#include <Message_Generated.hpp>

namespace couchbase::dart
{
void Connection::prepend(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::prepend_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::prepend_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::prependWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::prepend_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::prepend_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::exists(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::exists_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::exists_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::httpNoop(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::http_noop_request>(*request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::http_noop_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::unlock(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::unlock_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::unlock_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::getAllReplicas(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::get_all_replicas_request>(
        *request);
    _cluster->execute(
        req, [response](couchbase::core::operations::get_all_replicas_response
                            res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::upsert(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::upsert_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::upsert_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::upsertWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::upsert_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::upsert_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::getAnyReplica(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::get_any_replica_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::get_any_replica_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::append(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::append_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::append_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::appendWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::append_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::append_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::query(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::query_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::query_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::replace(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::replace_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::replace_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::replaceWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::replace_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::replace_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::getAndTouch(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::get_and_touch_request>(*request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::get_and_touch_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::remove(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::remove_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::remove_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::removeWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::remove_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::remove_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::get(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::get_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::get_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::analytics(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::analytics_request>(*request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::analytics_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::getProjected(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::get_projected_request>(*request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::get_projected_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::decrement(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::decrement_request>(*request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::decrement_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::decrementWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::decrement_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::decrement_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::search(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::search_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::search_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::touch(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::touch_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::touch_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::lookupIn(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::lookup_in_request>(*request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::lookup_in_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::documentView(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::document_view_request>(*request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::document_view_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::getAndLock(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::get_and_lock_request>(*request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::get_and_lock_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::insert(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::insert_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::insert_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::insertWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::insert_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::insert_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::mutateIn(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::mutate_in_request>(*request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::mutate_in_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::mutateInWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::mutate_in_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::mutate_in_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::increment(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::increment_request>(*request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::increment_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::incrementWithLegacyDurability(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::increment_request_with_legacy_durability>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::increment_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementGroupUpsert(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::group_upsert_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::group_upsert_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingPauseFunction(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             eventing_pause_function_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_pause_function_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementQueryIndexGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::query_index_get_all_request>(
        *request);
    _cluster->execute(req,
                      [response](couchbase::core::operations::management::
                                     query_index_get_all_response res) mutable {
                          response.complete([res](MessageBuffer &response) {
                              if (!writeCoreErrorContext(response, res.ctx)) {
                                  write_cbpp(response, res);
                              }
                          });
                      });
}

void Connection::managementCollectionCreate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::collection_create_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::collection_create_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingResumeFunction(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             eventing_resume_function_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_resume_function_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexGetStats(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             search_index_get_stats_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            search_index_get_stats_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementBucketGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::bucket_get_all_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::bucket_get_all_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementQueryIndexBuildDeferred(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             query_index_build_deferred_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            query_index_build_deferred_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementClusterDescribe(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::cluster_describe_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::cluster_describe_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::search_index_get_all_request>(
        *request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            search_index_get_all_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexAnalyzeDocument(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             search_index_analyze_document_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::
                       search_index_analyze_document_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementQueryIndexDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::query_index_drop_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::query_index_drop_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsDatasetCreate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_dataset_create_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_dataset_create_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementBucketFlush(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::bucket_flush_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::bucket_flush_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsIndexDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::analytics_index_drop_request>(
        *request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_index_drop_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementQueryIndexCreate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::query_index_create_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::query_index_create_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexUpsert(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::search_index_upsert_request>(
        *request);
    _cluster->execute(req,
                      [response](couchbase::core::operations::management::
                                     search_index_upsert_response res) mutable {
                          response.complete([res](MessageBuffer &response) {
                              if (!writeCoreErrorContext(response, res.ctx)) {
                                  write_cbpp(response, res);
                              }
                          });
                      });
}

void Connection::managementAnalyticsDatasetGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_dataset_get_all_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_dataset_get_all_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsIndexGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_index_get_all_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_index_get_all_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsGetPendingMutations(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_get_pending_mutations_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::
                       analytics_get_pending_mutations_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsDataverseDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_dataverse_drop_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_dataverse_drop_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsLinkConnect(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_link_connect_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_link_connect_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementCollectionsManifestGet(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             collections_manifest_get_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            collections_manifest_get_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementChangePassword(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::change_password_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::change_password_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementClusterDeveloperPreviewEnable(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::
                      cluster_developer_preview_enable_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::
                       cluster_developer_preview_enable_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsLinkDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::analytics_link_drop_request>(
        *request);
    _cluster->execute(req,
                      [response](couchbase::core::operations::management::
                                     analytics_link_drop_response res) mutable {
                          response.complete([res](MessageBuffer &response) {
                              if (!writeCoreErrorContext(response, res.ctx)) {
                                  write_cbpp(response, res);
                              }
                          });
                      });
}

void Connection::managementBucketDescribe(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::bucket_describe_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::bucket_describe_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingUpsertFunction(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             eventing_upsert_function_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_upsert_function_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementViewIndexGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::view_index_get_all_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::view_index_get_all_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementBucketGet(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::bucket_get_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::bucket_get_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementBucketUpdate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::bucket_update_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::bucket_update_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementBucketDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::bucket_drop_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::bucket_drop_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementFreeform(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::freeform_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::freeform_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementScopeDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::scope_drop_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::scope_drop_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementViewIndexUpsert(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::view_index_upsert_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::view_index_upsert_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementUserGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::user_get_all_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::user_get_all_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementScopeCreate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::scope_create_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::scope_create_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingGetFunction(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::eventing_get_function_request>(
        *request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_get_function_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementViewIndexDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::view_index_drop_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::view_index_drop_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsLinkDisconnect(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_link_disconnect_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_link_disconnect_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementUserUpsert(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::user_upsert_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::user_upsert_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingGetStatus(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::eventing_get_status_request>(
        *request);
    _cluster->execute(req,
                      [response](couchbase::core::operations::management::
                                     eventing_get_status_response res) mutable {
                          response.complete([res](MessageBuffer &response) {
                              if (!writeCoreErrorContext(response, res.ctx)) {
                                  write_cbpp(response, res);
                              }
                          });
                      });
}

void Connection::managementEventingGetAllFunctions(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             eventing_get_all_functions_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_get_all_functions_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsIndexCreate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_index_create_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_index_create_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementScopeGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::scope_get_all_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::scope_get_all_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementUserGet(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::user_get_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::user_get_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::search_index_drop_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::search_index_drop_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexControlPlanFreeze(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::
                      search_index_control_plan_freeze_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::
                       search_index_control_plan_freeze_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexStats(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::search_index_stats_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::search_index_stats_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementUserDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::user_drop_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::user_drop_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsDataverseCreate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_dataverse_create_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_dataverse_create_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexControlQuery(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             search_index_control_query_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            search_index_control_query_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementRoleGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::role_get_all_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::role_get_all_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementGroupGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::group_get_all_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::group_get_all_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingDropFunction(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             eventing_drop_function_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_drop_function_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementCollectionDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::collection_drop_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::collection_drop_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexControlIngest(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             search_index_control_ingest_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            search_index_control_ingest_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingDeployFunction(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             eventing_deploy_function_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_deploy_function_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementGroupGet(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::group_get_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::group_get_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementViewIndexGet(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::view_index_get_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::view_index_get_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementBucketCreate(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::bucket_create_request>(
        *request);
    _cluster->execute(
        req, [response](
                 couchbase::core::operations::management::bucket_create_response
                     res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsDatasetDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_dataset_drop_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_dataset_drop_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementGroupDrop(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::group_drop_request>(
            *request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::group_drop_response
                       res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexGet(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::search_index_get_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::search_index_get_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementQueryIndexGetAllDeferred(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             query_index_get_all_deferred_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            query_index_get_all_deferred_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementQueryIndexBuild(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<
        couchbase::core::operations::management::query_index_build_request>(
        *request);
    _cluster->execute(
        req,
        [response](
            couchbase::core::operations::management::query_index_build_response
                res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementEventingUndeployFunction(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             eventing_undeploy_function_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            eventing_undeploy_function_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementSearchIndexGetDocumentsCount(MessageBuffer *request)
{
    Response response(this, request);
    auto req =
        read_cbpp<couchbase::core::operations::management::
                      search_index_get_documents_count_request>(*request);
    _cluster->execute(
        req,
        [response](couchbase::core::operations::management::
                       search_index_get_documents_count_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

void Connection::managementAnalyticsLinkGetAll(MessageBuffer *request)
{
    Response response(this, request);
    auto req = read_cbpp<couchbase::core::operations::management::
                             analytics_link_get_all_request>(*request);
    _cluster->execute(
        req, [response](couchbase::core::operations::management::
                            analytics_link_get_all_response res) mutable {
            response.complete([res](MessageBuffer &response) {
                if (!writeCoreErrorContext(response, res.ctx)) {
                    write_cbpp(response, res);
                }
            });
        });
}

} // namespace couchbase::dart
