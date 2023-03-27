// GENERATED CODE - DO NOT MODIFY BY HAND

#include <Connection.hpp>
#include <MessageBuffer.hpp>

extern "C" {

using namespace couchbase::dart;

void CBDConnection_Prepend(Connection *connection, MessageBuffer *request)
{
    connection->prepend(request);
}

void CBDConnection_PrependWithLegacyDurability(Connection *connection,
                                               MessageBuffer *request)
{
    connection->prependWithLegacyDurability(request);
}

void CBDConnection_Exists(Connection *connection, MessageBuffer *request)
{
    connection->exists(request);
}

void CBDConnection_HttpNoop(Connection *connection, MessageBuffer *request)
{
    connection->httpNoop(request);
}

void CBDConnection_Unlock(Connection *connection, MessageBuffer *request)
{
    connection->unlock(request);
}

void CBDConnection_GetAllReplicas(Connection *connection,
                                  MessageBuffer *request)
{
    connection->getAllReplicas(request);
}

void CBDConnection_Upsert(Connection *connection, MessageBuffer *request)
{
    connection->upsert(request);
}

void CBDConnection_UpsertWithLegacyDurability(Connection *connection,
                                              MessageBuffer *request)
{
    connection->upsertWithLegacyDurability(request);
}

void CBDConnection_GetAnyReplica(Connection *connection, MessageBuffer *request)
{
    connection->getAnyReplica(request);
}

void CBDConnection_Append(Connection *connection, MessageBuffer *request)
{
    connection->append(request);
}

void CBDConnection_AppendWithLegacyDurability(Connection *connection,
                                              MessageBuffer *request)
{
    connection->appendWithLegacyDurability(request);
}

void CBDConnection_Query(Connection *connection, MessageBuffer *request)
{
    connection->query(request);
}

void CBDConnection_Replace(Connection *connection, MessageBuffer *request)
{
    connection->replace(request);
}

void CBDConnection_ReplaceWithLegacyDurability(Connection *connection,
                                               MessageBuffer *request)
{
    connection->replaceWithLegacyDurability(request);
}

void CBDConnection_GetAndTouch(Connection *connection, MessageBuffer *request)
{
    connection->getAndTouch(request);
}

void CBDConnection_Remove(Connection *connection, MessageBuffer *request)
{
    connection->remove(request);
}

void CBDConnection_RemoveWithLegacyDurability(Connection *connection,
                                              MessageBuffer *request)
{
    connection->removeWithLegacyDurability(request);
}

void CBDConnection_Get(Connection *connection, MessageBuffer *request)
{
    connection->get(request);
}

void CBDConnection_Analytics(Connection *connection, MessageBuffer *request)
{
    connection->analytics(request);
}

void CBDConnection_GetProjected(Connection *connection, MessageBuffer *request)
{
    connection->getProjected(request);
}

void CBDConnection_Decrement(Connection *connection, MessageBuffer *request)
{
    connection->decrement(request);
}

void CBDConnection_DecrementWithLegacyDurability(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->decrementWithLegacyDurability(request);
}

void CBDConnection_Search(Connection *connection, MessageBuffer *request)
{
    connection->search(request);
}

void CBDConnection_Touch(Connection *connection, MessageBuffer *request)
{
    connection->touch(request);
}

void CBDConnection_LookupIn(Connection *connection, MessageBuffer *request)
{
    connection->lookupIn(request);
}

void CBDConnection_DocumentView(Connection *connection, MessageBuffer *request)
{
    connection->documentView(request);
}

void CBDConnection_GetAndLock(Connection *connection, MessageBuffer *request)
{
    connection->getAndLock(request);
}

void CBDConnection_Insert(Connection *connection, MessageBuffer *request)
{
    connection->insert(request);
}

void CBDConnection_InsertWithLegacyDurability(Connection *connection,
                                              MessageBuffer *request)
{
    connection->insertWithLegacyDurability(request);
}

void CBDConnection_MutateIn(Connection *connection, MessageBuffer *request)
{
    connection->mutateIn(request);
}

void CBDConnection_MutateInWithLegacyDurability(Connection *connection,
                                                MessageBuffer *request)
{
    connection->mutateInWithLegacyDurability(request);
}

void CBDConnection_Increment(Connection *connection, MessageBuffer *request)
{
    connection->increment(request);
}

void CBDConnection_IncrementWithLegacyDurability(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->incrementWithLegacyDurability(request);
}

void CBDConnection_ManagementGroupUpsert(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementGroupUpsert(request);
}

void CBDConnection_ManagementEventingPauseFunction(Connection *connection,
                                                   MessageBuffer *request)
{
    connection->managementEventingPauseFunction(request);
}

void CBDConnection_ManagementQueryIndexGetAll(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementQueryIndexGetAll(request);
}

void CBDConnection_ManagementCollectionCreate(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementCollectionCreate(request);
}

void CBDConnection_ManagementEventingResumeFunction(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementEventingResumeFunction(request);
}

void CBDConnection_ManagementSearchIndexGetStats(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->managementSearchIndexGetStats(request);
}

void CBDConnection_ManagementBucketGetAll(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementBucketGetAll(request);
}

void CBDConnection_ManagementQueryIndexBuildDeferred(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementQueryIndexBuildDeferred(request);
}

void CBDConnection_ManagementClusterDescribe(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementClusterDescribe(request);
}

void CBDConnection_ManagementSearchIndexGetAll(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementSearchIndexGetAll(request);
}

void CBDConnection_ManagementSearchIndexAnalyzeDocument(Connection *connection,
                                                        MessageBuffer *request)
{
    connection->managementSearchIndexAnalyzeDocument(request);
}

void CBDConnection_ManagementQueryIndexDrop(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementQueryIndexDrop(request);
}

void CBDConnection_ManagementAnalyticsDatasetCreate(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementAnalyticsDatasetCreate(request);
}

void CBDConnection_ManagementBucketFlush(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementBucketFlush(request);
}

void CBDConnection_ManagementAnalyticsIndexDrop(Connection *connection,
                                                MessageBuffer *request)
{
    connection->managementAnalyticsIndexDrop(request);
}

void CBDConnection_ManagementQueryIndexCreate(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementQueryIndexCreate(request);
}

void CBDConnection_ManagementSearchIndexUpsert(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementSearchIndexUpsert(request);
}

void CBDConnection_ManagementAnalyticsDatasetGetAll(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementAnalyticsDatasetGetAll(request);
}

void CBDConnection_ManagementAnalyticsIndexGetAll(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsIndexGetAll(request);
}

void CBDConnection_ManagementAnalyticsGetPendingMutations(
    Connection *connection, MessageBuffer *request)
{
    connection->managementAnalyticsGetPendingMutations(request);
}

void CBDConnection_ManagementAnalyticsDataverseDrop(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementAnalyticsDataverseDrop(request);
}

void CBDConnection_ManagementAnalyticsLinkConnect(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsLinkConnect(request);
}

void CBDConnection_ManagementCollectionsManifestGet(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementCollectionsManifestGet(request);
}

void CBDConnection_ManagementChangePassword(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementChangePassword(request);
}

void CBDConnection_ManagementClusterDeveloperPreviewEnable(
    Connection *connection, MessageBuffer *request)
{
    connection->managementClusterDeveloperPreviewEnable(request);
}

void CBDConnection_ManagementAnalyticsLinkDrop(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementAnalyticsLinkDrop(request);
}

void CBDConnection_ManagementBucketDescribe(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementBucketDescribe(request);
}

void CBDConnection_ManagementEventingUpsertFunction(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementEventingUpsertFunction(request);
}

void CBDConnection_ManagementViewIndexGetAll(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementViewIndexGetAll(request);
}

void CBDConnection_ManagementBucketGet(Connection *connection,
                                       MessageBuffer *request)
{
    connection->managementBucketGet(request);
}

void CBDConnection_ManagementBucketUpdate(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementBucketUpdate(request);
}

void CBDConnection_ManagementBucketDrop(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementBucketDrop(request);
}

void CBDConnection_ManagementFreeform(Connection *connection,
                                      MessageBuffer *request)
{
    connection->managementFreeform(request);
}

void CBDConnection_ManagementScopeDrop(Connection *connection,
                                       MessageBuffer *request)
{
    connection->managementScopeDrop(request);
}

void CBDConnection_ManagementViewIndexUpsert(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementViewIndexUpsert(request);
}

void CBDConnection_ManagementUserGetAll(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementUserGetAll(request);
}

void CBDConnection_ManagementScopeCreate(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementScopeCreate(request);
}

void CBDConnection_ManagementEventingGetFunction(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->managementEventingGetFunction(request);
}

void CBDConnection_ManagementViewIndexDrop(Connection *connection,
                                           MessageBuffer *request)
{
    connection->managementViewIndexDrop(request);
}

void CBDConnection_ManagementAnalyticsLinkDisconnect(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementAnalyticsLinkDisconnect(request);
}

void CBDConnection_ManagementUserUpsert(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementUserUpsert(request);
}

void CBDConnection_ManagementEventingGetStatus(Connection *connection,
                                               MessageBuffer *request)
{
    connection->managementEventingGetStatus(request);
}

void CBDConnection_ManagementEventingGetAllFunctions(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementEventingGetAllFunctions(request);
}

void CBDConnection_ManagementAnalyticsIndexCreate(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsIndexCreate(request);
}

void CBDConnection_ManagementScopeGetAll(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementScopeGetAll(request);
}

void CBDConnection_ManagementUserGet(Connection *connection,
                                     MessageBuffer *request)
{
    connection->managementUserGet(request);
}

void CBDConnection_ManagementSearchIndexDrop(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementSearchIndexDrop(request);
}

void CBDConnection_ManagementSearchIndexControlPlanFreeze(
    Connection *connection, MessageBuffer *request)
{
    connection->managementSearchIndexControlPlanFreeze(request);
}

void CBDConnection_ManagementSearchIndexStats(Connection *connection,
                                              MessageBuffer *request)
{
    connection->managementSearchIndexStats(request);
}

void CBDConnection_ManagementUserDrop(Connection *connection,
                                      MessageBuffer *request)
{
    connection->managementUserDrop(request);
}

void CBDConnection_ManagementAnalyticsDataverseCreate(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementAnalyticsDataverseCreate(request);
}

void CBDConnection_ManagementSearchIndexControlQuery(Connection *connection,
                                                     MessageBuffer *request)
{
    connection->managementSearchIndexControlQuery(request);
}

void CBDConnection_ManagementRoleGetAll(Connection *connection,
                                        MessageBuffer *request)
{
    connection->managementRoleGetAll(request);
}

void CBDConnection_ManagementGroupGetAll(Connection *connection,
                                         MessageBuffer *request)
{
    connection->managementGroupGetAll(request);
}

void CBDConnection_ManagementEventingDropFunction(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementEventingDropFunction(request);
}

void CBDConnection_ManagementCollectionDrop(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementCollectionDrop(request);
}

void CBDConnection_ManagementSearchIndexControlIngest(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementSearchIndexControlIngest(request);
}

void CBDConnection_ManagementEventingDeployFunction(Connection *connection,
                                                    MessageBuffer *request)
{
    connection->managementEventingDeployFunction(request);
}

void CBDConnection_ManagementGroupGet(Connection *connection,
                                      MessageBuffer *request)
{
    connection->managementGroupGet(request);
}

void CBDConnection_ManagementViewIndexGet(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementViewIndexGet(request);
}

void CBDConnection_ManagementBucketCreate(Connection *connection,
                                          MessageBuffer *request)
{
    connection->managementBucketCreate(request);
}

void CBDConnection_ManagementAnalyticsDatasetDrop(Connection *connection,
                                                  MessageBuffer *request)
{
    connection->managementAnalyticsDatasetDrop(request);
}

void CBDConnection_ManagementGroupDrop(Connection *connection,
                                       MessageBuffer *request)
{
    connection->managementGroupDrop(request);
}

void CBDConnection_ManagementSearchIndexGet(Connection *connection,
                                            MessageBuffer *request)
{
    connection->managementSearchIndexGet(request);
}

void CBDConnection_ManagementQueryIndexGetAllDeferred(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementQueryIndexGetAllDeferred(request);
}

void CBDConnection_ManagementQueryIndexBuild(Connection *connection,
                                             MessageBuffer *request)
{
    connection->managementQueryIndexBuild(request);
}

void CBDConnection_ManagementEventingUndeployFunction(Connection *connection,
                                                      MessageBuffer *request)
{
    connection->managementEventingUndeployFunction(request);
}

void CBDConnection_ManagementSearchIndexGetDocumentsCount(
    Connection *connection, MessageBuffer *request)
{
    connection->managementSearchIndexGetDocumentsCount(request);
}

void CBDConnection_ManagementAnalyticsLinkGetAll(Connection *connection,
                                                 MessageBuffer *request)
{
    connection->managementAnalyticsLinkGetAll(request);
}

} // extern "C"
