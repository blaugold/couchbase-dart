// GENERATED CODE - DO NOT MODIFY BY HAND
#pragma once

#include "CBDConnection.h"
#include "CBDMessageBuffer.h"

#ifdef __cplusplus
extern "C" {
#endif

void CBLConnection_Prepend(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Exists(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_HttpNoop(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Unlock(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_GetAllReplicas(CBDConnection connection,
                                  CBDMessageBuffer request);

void CBLConnection_Upsert(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_GetAnyReplica(CBDConnection connection,
                                 CBDMessageBuffer request);

void CBLConnection_Append(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Query(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_McbpNoop(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Replace(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_GetAndTouch(CBDConnection connection,
                               CBDMessageBuffer request);

void CBLConnection_Remove(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Get(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Analytics(CBDConnection connection,
                             CBDMessageBuffer request);

void CBLConnection_GetProjected(CBDConnection connection,
                                CBDMessageBuffer request);

void CBLConnection_Decrement(CBDConnection connection,
                             CBDMessageBuffer request);

void CBLConnection_Search(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Touch(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_LookupIn(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_DocumentView(CBDConnection connection,
                                CBDMessageBuffer request);

void CBLConnection_GetAndLock(CBDConnection connection,
                              CBDMessageBuffer request);

void CBLConnection_Insert(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_MutateIn(CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_Increment(CBDConnection connection,
                             CBDMessageBuffer request);

void CBLConnection_ManagementGroupUpsert(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBLConnection_ManagementEventingPauseFunction(CBDConnection connection,
                                                   CBDMessageBuffer request);

void CBLConnection_ManagementQueryIndexGetAll(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBLConnection_ManagementCollectionCreate(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBLConnection_ManagementEventingResumeFunction(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexGetStats(CBDConnection connection,
                                                 CBDMessageBuffer request);

void CBLConnection_ManagementBucketGetAll(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBLConnection_ManagementQueryIndexBuildDeferred(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBLConnection_ManagementClusterDescribe(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexGetAll(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexAnalyzeDocument(
    CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_ManagementQueryIndexDrop(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsDatasetCreate(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBLConnection_ManagementBucketFlush(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsIndexDrop(CBDConnection connection,
                                                CBDMessageBuffer request);

void CBLConnection_ManagementQueryIndexCreate(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexUpsert(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsDatasetGetAll(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsIndexGetAll(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsGetPendingMutations(
    CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsDataverseDrop(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsLinkConnect(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBLConnection_ManagementCollectionsManifestGet(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBLConnection_ManagementChangePassword(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBLConnection_ManagementClusterDeveloperPreviewEnable(
    CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsLinkDrop(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBLConnection_ManagementBucketDescribe(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBLConnection_ManagementEventingUpsertFunction(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBLConnection_ManagementViewIndexGetAll(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBLConnection_ManagementBucketGet(CBDConnection connection,
                                       CBDMessageBuffer request);

void CBLConnection_ManagementBucketUpdate(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBLConnection_ManagementBucketDrop(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBLConnection_ManagementFreeform(CBDConnection connection,
                                      CBDMessageBuffer request);

void CBLConnection_ManagementScopeDrop(CBDConnection connection,
                                       CBDMessageBuffer request);

void CBLConnection_ManagementViewIndexUpsert(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBLConnection_ManagementUserGetAll(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBLConnection_ManagementScopeCreate(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBLConnection_ManagementEventingGetFunction(CBDConnection connection,
                                                 CBDMessageBuffer request);

void CBLConnection_ManagementViewIndexDrop(CBDConnection connection,
                                           CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsLinkDisconnect(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBLConnection_ManagementUserUpsert(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBLConnection_ManagementEventingGetStatus(CBDConnection connection,
                                               CBDMessageBuffer request);

void CBLConnection_ManagementEventingGetAllFunctions(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsIndexCreate(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBLConnection_ManagementScopeGetAll(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBLConnection_ManagementUserGet(CBDConnection connection,
                                     CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexDrop(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexControlPlanFreeze(
    CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexStats(CBDConnection connection,
                                              CBDMessageBuffer request);

void CBLConnection_ManagementUserDrop(CBDConnection connection,
                                      CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsDataverseCreate(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexControlQuery(CBDConnection connection,
                                                     CBDMessageBuffer request);

void CBLConnection_ManagementRoleGetAll(CBDConnection connection,
                                        CBDMessageBuffer request);

void CBLConnection_ManagementGroupGetAll(CBDConnection connection,
                                         CBDMessageBuffer request);

void CBLConnection_ManagementEventingDropFunction(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBLConnection_ManagementCollectionDrop(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexControlIngest(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBLConnection_ManagementEventingDeployFunction(CBDConnection connection,
                                                    CBDMessageBuffer request);

void CBLConnection_ManagementGroupGet(CBDConnection connection,
                                      CBDMessageBuffer request);

void CBLConnection_ManagementViewIndexGet(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBLConnection_ManagementBucketCreate(CBDConnection connection,
                                          CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsDatasetDrop(CBDConnection connection,
                                                  CBDMessageBuffer request);

void CBLConnection_ManagementGroupDrop(CBDConnection connection,
                                       CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexGet(CBDConnection connection,
                                            CBDMessageBuffer request);

void CBLConnection_ManagementQueryIndexGetAllDeferred(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBLConnection_ManagementQueryIndexBuild(CBDConnection connection,
                                             CBDMessageBuffer request);

void CBLConnection_ManagementEventingUndeployFunction(CBDConnection connection,
                                                      CBDMessageBuffer request);

void CBLConnection_ManagementSearchIndexGetDocumentsCount(
    CBDConnection connection, CBDMessageBuffer request);

void CBLConnection_ManagementAnalyticsLinkGetAll(CBDConnection connection,
                                                 CBDMessageBuffer request);

#ifdef __cplusplus
} // extern "C"
#endif
