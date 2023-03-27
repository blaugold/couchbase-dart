// GENERATED CODE - DO NOT MODIFY BY HAND
#pragma once

#include "CBDConnection.h"
#include "CBDMessageBuffer.h"

#ifdef __cplusplus
extern "C" {
#endif

void CBDConnection_Prepend(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_PrependWithLegacyDurability(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBDConnection_Exists(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_HttpNoop(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_Unlock(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_GetAllReplicas(CBDConnection connection,
                                  CBDMessageBuffer request);

void CBDConnection_Upsert(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_UpsertWithLegacyDurability(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_GetAnyReplica(CBDConnection connection,
                                 CBDMessageBuffer request);

void CBDConnection_Append(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_AppendWithLegacyDurability(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_Query(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_Replace(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_ReplaceWithLegacyDurability(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBDConnection_GetAndTouch(CBDConnection connection,
                               CBDMessageBuffer request);

void CBDConnection_Remove(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_RemoveWithLegacyDurability(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_Get(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_Analytics(CBDConnection connection,
                             CBDMessageBuffer request);

void CBDConnection_GetProjected(CBDConnection connection,
                                CBDMessageBuffer request);

void CBDConnection_Decrement(CBDConnection connection,
                             CBDMessageBuffer request);

void CBDConnection_DecrementWithLegacyDurability(CBDConnection connection,
                                                 CBDMessageBuffer request);

void CBDConnection_Search(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_Touch(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_LookupIn(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_DocumentView(CBDConnection connection,
                                CBDMessageBuffer request);

void CBDConnection_GetAndLock(CBDConnection connection,
                              CBDMessageBuffer request);

void CBDConnection_Insert(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_InsertWithLegacyDurability(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_MutateIn(CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_MutateInWithLegacyDurability(CBDConnection connection,
                                                CBDMessageBuffer request);

void CBDConnection_Increment(CBDConnection connection,
                             CBDMessageBuffer request);

void CBDConnection_IncrementWithLegacyDurability(CBDConnection connection,
                                                 CBDMessageBuffer request);

void CBDConnection_ManagementGroupUpsert(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBDConnection_ManagementEventingPauseFunction(CBDConnection connection,
                                                   CBDMessageBuffer request);

void CBDConnection_ManagementQueryIndexGetAll(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_ManagementCollectionCreate(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_ManagementEventingResumeFunction(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexGetStats(CBDConnection connection,
                                                 CBDMessageBuffer request);

void CBDConnection_ManagementBucketGetAll(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBDConnection_ManagementQueryIndexBuildDeferred(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBDConnection_ManagementClusterDescribe(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexGetAll(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexAnalyzeDocument(
    CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_ManagementQueryIndexDrop(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsDatasetCreate(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBDConnection_ManagementBucketFlush(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsIndexDrop(CBDConnection connection,
                                                CBDMessageBuffer request);

void CBDConnection_ManagementQueryIndexCreate(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexUpsert(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsDatasetGetAll(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsIndexGetAll(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsGetPendingMutations(
    CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsDataverseDrop(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsLinkConnect(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBDConnection_ManagementCollectionsManifestGet(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBDConnection_ManagementChangePassword(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBDConnection_ManagementClusterDeveloperPreviewEnable(
    CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsLinkDrop(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBDConnection_ManagementBucketDescribe(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBDConnection_ManagementEventingUpsertFunction(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBDConnection_ManagementViewIndexGetAll(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBDConnection_ManagementBucketGet(CBDConnection connection,
                                       CBDMessageBuffer request);

void CBDConnection_ManagementBucketUpdate(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBDConnection_ManagementBucketDrop(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBDConnection_ManagementFreeform(CBDConnection connection,
                                      CBDMessageBuffer request);

void CBDConnection_ManagementScopeDrop(CBDConnection connection,
                                       CBDMessageBuffer request);

void CBDConnection_ManagementViewIndexUpsert(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBDConnection_ManagementUserGetAll(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBDConnection_ManagementScopeCreate(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBDConnection_ManagementEventingGetFunction(CBDConnection connection,
                                                 CBDMessageBuffer request);

void CBDConnection_ManagementViewIndexDrop(CBDConnection connection,
                                           CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsLinkDisconnect(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBDConnection_ManagementUserUpsert(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBDConnection_ManagementEventingGetStatus(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBDConnection_ManagementEventingGetAllFunctions(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsIndexCreate(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBDConnection_ManagementScopeGetAll(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBDConnection_ManagementUserGet(CBDConnection connection,
                                     CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexDrop(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexControlPlanFreeze(
    CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexStats(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBDConnection_ManagementUserDrop(CBDConnection connection,
                                      CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsDataverseCreate(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexControlQuery(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBDConnection_ManagementRoleGetAll(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBDConnection_ManagementGroupGetAll(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBDConnection_ManagementEventingDropFunction(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBDConnection_ManagementCollectionDrop(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexControlIngest(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBDConnection_ManagementEventingDeployFunction(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBDConnection_ManagementGroupGet(CBDConnection connection,
                                      CBDMessageBuffer request);

void CBDConnection_ManagementViewIndexGet(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBDConnection_ManagementBucketCreate(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsDatasetDrop(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBDConnection_ManagementGroupDrop(CBDConnection connection,
                                       CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexGet(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBDConnection_ManagementQueryIndexGetAllDeferred(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBDConnection_ManagementQueryIndexBuild(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBDConnection_ManagementEventingUndeployFunction(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBDConnection_ManagementSearchIndexGetDocumentsCount(
    CBDConnection connection, CBDMessageBuffer request);

void CBDConnection_ManagementAnalyticsLinkGetAll(CBDConnection connection,
                                                 CBDMessageBuffer request);

#ifdef __cplusplus
} // extern "C"
#endif
