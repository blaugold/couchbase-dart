// GENERATED CODE - DO NOT MODIFY BY HAND

#include <Connection.hpp>
#include <MessageBuffer.hpp>

extern "C" {

using namespace couchbase::dart;

void CBLConnection_Prepend(Connection *connection, MessageBuffer *request)
{
    connection->prepend(request);
}

void CBLConnection_Exists(Connection *connection, MessageBuffer *request)
{
    connection->exists(request);
}

void CBLConnection_HttpNoop(Connection *connection, MessageBuffer *request)
{
    connection->httpNoop(request);
}

void CBLConnection_Unlock(Connection *connection, MessageBuffer *request)
{
    connection->unlock(request);
}

void CBLConnection_GetAllReplicas(Connection *connection,
                                  MessageBuffer *request)
{
    connection->getAllReplicas(request);
}

void CBLConnection_Upsert(Connection *connection, MessageBuffer *request)
{
    connection->upsert(request);
}

void CBLConnection_GetAnyReplica(Connection *connection, MessageBuffer *request)
{
    connection->getAnyReplica(request);
}

void CBLConnection_Append(Connection *connection, MessageBuffer *request)
{
    connection->append(request);
}

void CBLConnection_Query(Connection *connection, MessageBuffer *request)
{
    connection->query(request);
}

void CBLConnection_McbpNoop(Connection *connection, MessageBuffer *request)
{
    connection->mcbpNoop(request);
}

void CBLConnection_Replace(Connection *connection, MessageBuffer *request)
{
    connection->replace(request);
}

void CBLConnection_GetAndTouch(Connection *connection, MessageBuffer *request)
{
    connection->getAndTouch(request);
}

void CBLConnection_Remove(Connection *connection, MessageBuffer *request)
{
    connection->remove(request);
}

void CBLConnection_Get(Connection *connection, MessageBuffer *request)
{
    connection->get(request);
}

void CBLConnection_Analytics(Connection *connection, MessageBuffer *request)
{
    connection->analytics(request);
}

void CBLConnection_GetProjected(Connection *connection, MessageBuffer *request)
{
    connection->getProjected(request);
}

void CBLConnection_Decrement(Connection *connection, MessageBuffer *request)
{
    connection->decrement(request);
}

void CBLConnection_Search(Connection *connection, MessageBuffer *request)
{
    connection->search(request);
}

void CBLConnection_Touch(Connection *connection, MessageBuffer *request)
{
    connection->touch(request);
}

void CBLConnection_LookupIn(Connection *connection, MessageBuffer *request)
{
    connection->lookupIn(request);
}

void CBLConnection_DocumentView(Connection *connection, MessageBuffer *request)
{
    connection->documentView(request);
}

void CBLConnection_GetAndLock(Connection *connection, MessageBuffer *request)
{
    connection->getAndLock(request);
}

void CBLConnection_Insert(Connection *connection, MessageBuffer *request)
{
    connection->insert(request);
}

void CBLConnection_MutateIn(Connection *connection, MessageBuffer *request)
{
    connection->mutateIn(request);
}

void CBLConnection_Increment(Connection *connection, MessageBuffer *request)
{
    connection->increment(request);
}

void CBLConnection_ManagementGroupUpsert(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementGroupUpsert(request);
}

void CBLConnection_ManagementEventingPauseFunction(Connection *connection,
                                                   MessageBuffer *request)
{
    connection->managementEventingPauseFunction(request);
}

void CBLConnection_ManagementQueryIndexGetAll(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementQueryIndexGetAll(request);
}

void CBLConnection_ManagementCollectionCreate(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementCollectionCreate(request);
}

void CBLConnection_ManagementEventingResumeFunction(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementEventingResumeFunction(request);
}

void CBLConnection_ManagementSearchIndexGetStats(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->managementSearchIndexGetStats(request);
}

void CBLConnection_ManagementBucketGetAll(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementBucketGetAll(request);
}

void CBLConnection_ManagementQueryIndexBuildDeferred(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementQueryIndexBuildDeferred(request);
}

void CBLConnection_ManagementClusterDescribe(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementClusterDescribe(request);
}

void CBLConnection_ManagementSearchIndexGetAll(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementSearchIndexGetAll(request);
}

void CBLConnection_ManagementSearchIndexAnalyzeDocument(Connection *connection,
                                                        MessageBuffer *request)
{
    connection->managementSearchIndexAnalyzeDocument(request);
}

void CBLConnection_ManagementQueryIndexDrop(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementQueryIndexDrop(request);
}

void CBLConnection_ManagementAnalyticsDatasetCreate(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementAnalyticsDatasetCreate(request);
}

void CBLConnection_ManagementBucketFlush(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementBucketFlush(request);
}

void CBLConnection_ManagementAnalyticsIndexDrop(Connection *connection,
                                                MessageBuffer *request)
{
    connection->managementAnalyticsIndexDrop(request);
}

void CBLConnection_ManagementQueryIndexCreate(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementQueryIndexCreate(request);
}

void CBLConnection_ManagementSearchIndexUpsert(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementSearchIndexUpsert(request);
}

void CBLConnection_ManagementAnalyticsDatasetGetAll(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementAnalyticsDatasetGetAll(request);
}

void CBLConnection_ManagementAnalyticsIndexGetAll(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsIndexGetAll(request);
}

void CBLConnection_ManagementAnalyticsGetPendingMutations(
    Connection *connection, MessageBuffer *request)
{
    connection->managementAnalyticsGetPendingMutations(request);
}

void CBLConnection_ManagementAnalyticsDataverseDrop(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementAnalyticsDataverseDrop(request);
}

void CBLConnection_ManagementAnalyticsLinkConnect(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsLinkConnect(request);
}

void CBLConnection_ManagementCollectionsManifestGet(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementCollectionsManifestGet(request);
}

void CBLConnection_ManagementChangePassword(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementChangePassword(request);
}

void CBLConnection_ManagementClusterDeveloperPreviewEnable(
    Connection *connection, MessageBuffer *request)
{
    connection->managementClusterDeveloperPreviewEnable(request);
}

void CBLConnection_ManagementAnalyticsLinkDrop(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementAnalyticsLinkDrop(request);
}

void CBLConnection_ManagementBucketDescribe(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementBucketDescribe(request);
}

void CBLConnection_ManagementEventingUpsertFunction(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementEventingUpsertFunction(request);
}

void CBLConnection_ManagementViewIndexGetAll(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementViewIndexGetAll(request);
}

void CBLConnection_ManagementBucketGet(Connection *connection,
                                       MessageBuffer *request)
{
    connection->managementBucketGet(request);
}

void CBLConnection_ManagementBucketUpdate(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementBucketUpdate(request);
}

void CBLConnection_ManagementBucketDrop(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementBucketDrop(request);
}

void CBLConnection_ManagementFreeform(Connection *connection,
                                      MessageBuffer *request)
{
    connection->managementFreeform(request);
}

void CBLConnection_ManagementScopeDrop(Connection *connection,
                                       MessageBuffer *request)
{
    connection->managementScopeDrop(request);
}

void CBLConnection_ManagementViewIndexUpsert(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementViewIndexUpsert(request);
}

void CBLConnection_ManagementUserGetAll(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementUserGetAll(request);
}

void CBLConnection_ManagementScopeCreate(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementScopeCreate(request);
}

void CBLConnection_ManagementEventingGetFunction(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->managementEventingGetFunction(request);
}

void CBLConnection_ManagementViewIndexDrop(Connection *connection,
                                           MessageBuffer *request)
{
    connection->managementViewIndexDrop(request);
}

void CBLConnection_ManagementAnalyticsLinkDisconnect(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementAnalyticsLinkDisconnect(request);
}

void CBLConnection_ManagementUserUpsert(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementUserUpsert(request);
}

void CBLConnection_ManagementEventingGetStatus(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementEventingGetStatus(request);
}

void CBLConnection_ManagementEventingGetAllFunctions(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementEventingGetAllFunctions(request);
}

void CBLConnection_ManagementAnalyticsIndexCreate(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsIndexCreate(request);
}

void CBLConnection_ManagementScopeGetAll(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementScopeGetAll(request);
}

void CBLConnection_ManagementUserGet(Connection *connection,
                                     MessageBuffer *request)
{
    connection->managementUserGet(request);
}

void CBLConnection_ManagementSearchIndexDrop(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementSearchIndexDrop(request);
}

void CBLConnection_ManagementSearchIndexControlPlanFreeze(
    Connection *connection, MessageBuffer *request)
{
    connection->managementSearchIndexControlPlanFreeze(request);
}

void CBLConnection_ManagementSearchIndexStats(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementSearchIndexStats(request);
}

void CBLConnection_ManagementUserDrop(Connection *connection,
                                      MessageBuffer *request)
{
    connection->managementUserDrop(request);
}

void CBLConnection_ManagementAnalyticsDataverseCreate(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementAnalyticsDataverseCreate(request);
}

void CBLConnection_ManagementSearchIndexControlQuery(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementSearchIndexControlQuery(request);
}

void CBLConnection_ManagementRoleGetAll(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementRoleGetAll(request);
}

void CBLConnection_ManagementGroupGetAll(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementGroupGetAll(request);
}

void CBLConnection_ManagementEventingDropFunction(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementEventingDropFunction(request);
}

void CBLConnection_ManagementCollectionDrop(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementCollectionDrop(request);
}

void CBLConnection_ManagementSearchIndexControlIngest(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementSearchIndexControlIngest(request);
}

void CBLConnection_ManagementEventingDeployFunction(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementEventingDeployFunction(request);
}

void CBLConnection_ManagementGroupGet(Connection *connection,
                                      MessageBuffer *request)
{
    connection->managementGroupGet(request);
}

void CBLConnection_ManagementViewIndexGet(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementViewIndexGet(request);
}

void CBLConnection_ManagementBucketCreate(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementBucketCreate(request);
}

void CBLConnection_ManagementAnalyticsDatasetDrop(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsDatasetDrop(request);
}

void CBLConnection_ManagementGroupDrop(Connection *connection,
                                       MessageBuffer *request)
{
    connection->managementGroupDrop(request);
}

void CBLConnection_ManagementSearchIndexGet(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementSearchIndexGet(request);
}

void CBLConnection_ManagementQueryIndexGetAllDeferred(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementQueryIndexGetAllDeferred(request);
}

void CBLConnection_ManagementQueryIndexBuild(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementQueryIndexBuild(request);
}

void CBLConnection_ManagementEventingUndeployFunction(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementEventingUndeployFunction(request);
}

void CBLConnection_ManagementSearchIndexGetDocumentsCount(
    Connection *connection, MessageBuffer *request)
{
    connection->managementSearchIndexGetDocumentsCount(request);
}

void CBLConnection_ManagementAnalyticsLinkGetAll(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->managementAnalyticsLinkGetAll(request);
}

} // extern "C"
