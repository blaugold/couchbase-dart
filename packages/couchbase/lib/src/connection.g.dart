// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'connection.dart';

extension GeneratedConnectionExtension on Connection {
  Future<PrependResponse> prepend(
    PrependRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      PrependResponse.read,
      bindings.CBDConnection_Prepend,
    );
  }

  Future<PrependResponse> prependWithLegacyDurability(
    PrependWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      PrependResponse.read,
      bindings.CBDConnection_PrependWithLegacyDurability,
    );
  }

  Future<ExistsResponse> exists(
    ExistsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      ExistsResponse.read,
      bindings.CBDConnection_Exists,
    );
  }

  Future<HttpNoopResponse> httpNoop(
    HttpNoopRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      HttpNoopResponse.read,
      bindings.CBDConnection_HttpNoop,
    );
  }

  Future<UnlockResponse> unlock(
    UnlockRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      UnlockResponse.read,
      bindings.CBDConnection_Unlock,
    );
  }

  Future<GetAllReplicasResponse> getAllReplicas(
    GetAllReplicasRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAllReplicasResponse.read,
      bindings.CBDConnection_GetAllReplicas,
    );
  }

  Future<UpsertResponse> upsert(
    UpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      UpsertResponse.read,
      bindings.CBDConnection_Upsert,
    );
  }

  Future<UpsertResponse> upsertWithLegacyDurability(
    UpsertWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      UpsertResponse.read,
      bindings.CBDConnection_UpsertWithLegacyDurability,
    );
  }

  Future<GetAnyReplicaResponse> getAnyReplica(
    GetAnyReplicaRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAnyReplicaResponse.read,
      bindings.CBDConnection_GetAnyReplica,
    );
  }

  Future<AppendResponse> append(
    AppendRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      AppendResponse.read,
      bindings.CBDConnection_Append,
    );
  }

  Future<AppendResponse> appendWithLegacyDurability(
    AppendWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      AppendResponse.read,
      bindings.CBDConnection_AppendWithLegacyDurability,
    );
  }

  Future<QueryResponse> query(
    QueryRequest request,
  ) async {
    return _executeOperation(
      request.write,
      QueryErrorContext.read,
      QueryResponse.read,
      bindings.CBDConnection_Query,
    );
  }

  Future<ReplaceResponse> replace(
    ReplaceRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      ReplaceResponse.read,
      bindings.CBDConnection_Replace,
    );
  }

  Future<ReplaceResponse> replaceWithLegacyDurability(
    ReplaceWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      ReplaceResponse.read,
      bindings.CBDConnection_ReplaceWithLegacyDurability,
    );
  }

  Future<GetAndTouchResponse> getAndTouch(
    GetAndTouchRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAndTouchResponse.read,
      bindings.CBDConnection_GetAndTouch,
    );
  }

  Future<RemoveResponse> remove(
    RemoveRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      RemoveResponse.read,
      bindings.CBDConnection_Remove,
    );
  }

  Future<RemoveResponse> removeWithLegacyDurability(
    RemoveWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      RemoveResponse.read,
      bindings.CBDConnection_RemoveWithLegacyDurability,
    );
  }

  Future<GetResponse> get(
    GetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetResponse.read,
      bindings.CBDConnection_Get,
    );
  }

  Future<AnalyticsResponse> analytics(
    AnalyticsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      AnalyticsErrorContext.read,
      AnalyticsResponse.read,
      bindings.CBDConnection_Analytics,
    );
  }

  Future<GetProjectedResponse> getProjected(
    GetProjectedRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetProjectedResponse.read,
      bindings.CBDConnection_GetProjected,
    );
  }

  Future<DecrementResponse> decrement(
    DecrementRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      DecrementResponse.read,
      bindings.CBDConnection_Decrement,
    );
  }

  Future<DecrementResponse> decrementWithLegacyDurability(
    DecrementWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      DecrementResponse.read,
      bindings.CBDConnection_DecrementWithLegacyDurability,
    );
  }

  Future<SearchResponse> search(
    SearchRequest request,
  ) async {
    return _executeOperation(
      request.write,
      SearchErrorContext.read,
      SearchResponse.read,
      bindings.CBDConnection_Search,
    );
  }

  Future<TouchResponse> touch(
    TouchRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      TouchResponse.read,
      bindings.CBDConnection_Touch,
    );
  }

  Future<LookupInResponse> lookupIn(
    LookupInRequest request,
  ) async {
    return _executeOperation(
      request.write,
      SubdocumentErrorContext.read,
      LookupInResponse.read,
      bindings.CBDConnection_LookupIn,
    );
  }

  Future<DocumentViewResponse> documentView(
    DocumentViewRequest request,
  ) async {
    return _executeOperation(
      request.write,
      ViewErrorContext.read,
      DocumentViewResponse.read,
      bindings.CBDConnection_DocumentView,
    );
  }

  Future<GetAndLockResponse> getAndLock(
    GetAndLockRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAndLockResponse.read,
      bindings.CBDConnection_GetAndLock,
    );
  }

  Future<InsertResponse> insert(
    InsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      InsertResponse.read,
      bindings.CBDConnection_Insert,
    );
  }

  Future<InsertResponse> insertWithLegacyDurability(
    InsertWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      InsertResponse.read,
      bindings.CBDConnection_InsertWithLegacyDurability,
    );
  }

  Future<MutateInResponse> mutateIn(
    MutateInRequest request,
  ) async {
    return _executeOperation(
      request.write,
      SubdocumentErrorContext.read,
      MutateInResponse.read,
      bindings.CBDConnection_MutateIn,
    );
  }

  Future<MutateInResponse> mutateInWithLegacyDurability(
    MutateInWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      SubdocumentErrorContext.read,
      MutateInResponse.read,
      bindings.CBDConnection_MutateInWithLegacyDurability,
    );
  }

  Future<IncrementResponse> increment(
    IncrementRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      IncrementResponse.read,
      bindings.CBDConnection_Increment,
    );
  }

  Future<IncrementResponse> incrementWithLegacyDurability(
    IncrementWithLegacyDurability request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      IncrementResponse.read,
      bindings.CBDConnection_IncrementWithLegacyDurability,
    );
  }

  Future<ManagementGroupUpsertResponse> managementGroupUpsert(
    ManagementGroupUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupUpsertResponse.read,
      bindings.CBDConnection_ManagementGroupUpsert,
    );
  }

  Future<ManagementEventingPauseFunctionResponse>
      managementEventingPauseFunction(
    ManagementEventingPauseFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingPauseFunctionResponse.read,
      bindings.CBDConnection_ManagementEventingPauseFunction,
    );
  }

  Future<ManagementQueryIndexGetAllResponse> managementQueryIndexGetAll(
    ManagementQueryIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexGetAllResponse.read,
      bindings.CBDConnection_ManagementQueryIndexGetAll,
    );
  }

  Future<ManagementCollectionCreateResponse> managementCollectionCreate(
    ManagementCollectionCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementCollectionCreateResponse.read,
      bindings.CBDConnection_ManagementCollectionCreate,
    );
  }

  Future<ManagementEventingResumeFunctionResponse>
      managementEventingResumeFunction(
    ManagementEventingResumeFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingResumeFunctionResponse.read,
      bindings.CBDConnection_ManagementEventingResumeFunction,
    );
  }

  Future<ManagementSearchIndexGetStatsResponse> managementSearchIndexGetStats(
    ManagementSearchIndexGetStatsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexGetStatsResponse.read,
      bindings.CBDConnection_ManagementSearchIndexGetStats,
    );
  }

  Future<ManagementBucketGetAllResponse> managementBucketGetAll(
    ManagementBucketGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketGetAllResponse.read,
      bindings.CBDConnection_ManagementBucketGetAll,
    );
  }

  Future<ManagementQueryIndexBuildDeferredResponse>
      managementQueryIndexBuildDeferred(
    ManagementQueryIndexBuildDeferredRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexBuildDeferredResponse.read,
      bindings.CBDConnection_ManagementQueryIndexBuildDeferred,
    );
  }

  Future<ManagementClusterDescribeResponse> managementClusterDescribe(
    ManagementClusterDescribeRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementClusterDescribeResponse.read,
      bindings.CBDConnection_ManagementClusterDescribe,
    );
  }

  Future<ManagementSearchIndexGetAllResponse> managementSearchIndexGetAll(
    ManagementSearchIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexGetAllResponse.read,
      bindings.CBDConnection_ManagementSearchIndexGetAll,
    );
  }

  Future<ManagementSearchIndexAnalyzeDocumentResponse>
      managementSearchIndexAnalyzeDocument(
    ManagementSearchIndexAnalyzeDocumentRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexAnalyzeDocumentResponse.read,
      bindings.CBDConnection_ManagementSearchIndexAnalyzeDocument,
    );
  }

  Future<ManagementQueryIndexDropResponse> managementQueryIndexDrop(
    ManagementQueryIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexDropResponse.read,
      bindings.CBDConnection_ManagementQueryIndexDrop,
    );
  }

  Future<ManagementAnalyticsDatasetCreateResponse>
      managementAnalyticsDatasetCreate(
    ManagementAnalyticsDatasetCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsDatasetCreateResponse.read,
      bindings.CBDConnection_ManagementAnalyticsDatasetCreate,
    );
  }

  Future<ManagementBucketFlushResponse> managementBucketFlush(
    ManagementBucketFlushRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketFlushResponse.read,
      bindings.CBDConnection_ManagementBucketFlush,
    );
  }

  Future<ManagementAnalyticsIndexDropResponse> managementAnalyticsIndexDrop(
    ManagementAnalyticsIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsIndexDropResponse.read,
      bindings.CBDConnection_ManagementAnalyticsIndexDrop,
    );
  }

  Future<ManagementQueryIndexCreateResponse> managementQueryIndexCreate(
    ManagementQueryIndexCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexCreateResponse.read,
      bindings.CBDConnection_ManagementQueryIndexCreate,
    );
  }

  Future<ManagementSearchIndexUpsertResponse> managementSearchIndexUpsert(
    ManagementSearchIndexUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexUpsertResponse.read,
      bindings.CBDConnection_ManagementSearchIndexUpsert,
    );
  }

  Future<ManagementAnalyticsDatasetGetAllResponse>
      managementAnalyticsDatasetGetAll(
    ManagementAnalyticsDatasetGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsDatasetGetAllResponse.read,
      bindings.CBDConnection_ManagementAnalyticsDatasetGetAll,
    );
  }

  Future<ManagementAnalyticsIndexGetAllResponse> managementAnalyticsIndexGetAll(
    ManagementAnalyticsIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsIndexGetAllResponse.read,
      bindings.CBDConnection_ManagementAnalyticsIndexGetAll,
    );
  }

  Future<ManagementAnalyticsGetPendingMutationsResponse>
      managementAnalyticsGetPendingMutations(
    ManagementAnalyticsGetPendingMutationsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsGetPendingMutationsResponse.read,
      bindings.CBDConnection_ManagementAnalyticsGetPendingMutations,
    );
  }

  Future<ManagementAnalyticsDataverseDropResponse>
      managementAnalyticsDataverseDrop(
    ManagementAnalyticsDataverseDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsDataverseDropResponse.read,
      bindings.CBDConnection_ManagementAnalyticsDataverseDrop,
    );
  }

  Future<ManagementAnalyticsLinkConnectResponse> managementAnalyticsLinkConnect(
    ManagementAnalyticsLinkConnectRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsLinkConnectResponse.read,
      bindings.CBDConnection_ManagementAnalyticsLinkConnect,
    );
  }

  Future<ManagementCollectionsManifestGetResponse>
      managementCollectionsManifestGet(
    ManagementCollectionsManifestGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      ManagementCollectionsManifestGetResponse.read,
      bindings.CBDConnection_ManagementCollectionsManifestGet,
    );
  }

  Future<ManagementChangePasswordResponse> managementChangePassword(
    ManagementChangePasswordRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementChangePasswordResponse.read,
      bindings.CBDConnection_ManagementChangePassword,
    );
  }

  Future<ManagementClusterDeveloperPreviewEnableResponse>
      managementClusterDeveloperPreviewEnable(
    ManagementClusterDeveloperPreviewEnableRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementClusterDeveloperPreviewEnableResponse.read,
      bindings.CBDConnection_ManagementClusterDeveloperPreviewEnable,
    );
  }

  Future<ManagementAnalyticsLinkDropResponse> managementAnalyticsLinkDrop(
    ManagementAnalyticsLinkDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsLinkDropResponse.read,
      bindings.CBDConnection_ManagementAnalyticsLinkDrop,
    );
  }

  Future<ManagementBucketDescribeResponse> managementBucketDescribe(
    ManagementBucketDescribeRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketDescribeResponse.read,
      bindings.CBDConnection_ManagementBucketDescribe,
    );
  }

  Future<ManagementEventingUpsertFunctionResponse>
      managementEventingUpsertFunction(
    ManagementEventingUpsertFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingUpsertFunctionResponse.read,
      bindings.CBDConnection_ManagementEventingUpsertFunction,
    );
  }

  Future<ManagementViewIndexGetAllResponse> managementViewIndexGetAll(
    ManagementViewIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexGetAllResponse.read,
      bindings.CBDConnection_ManagementViewIndexGetAll,
    );
  }

  Future<ManagementBucketGetResponse> managementBucketGet(
    ManagementBucketGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketGetResponse.read,
      bindings.CBDConnection_ManagementBucketGet,
    );
  }

  Future<ManagementBucketUpdateResponse> managementBucketUpdate(
    ManagementBucketUpdateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketUpdateResponse.read,
      bindings.CBDConnection_ManagementBucketUpdate,
    );
  }

  Future<ManagementBucketDropResponse> managementBucketDrop(
    ManagementBucketDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketDropResponse.read,
      bindings.CBDConnection_ManagementBucketDrop,
    );
  }

  Future<ManagementFreeformResponse> managementFreeform(
    ManagementFreeformRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementFreeformResponse.read,
      bindings.CBDConnection_ManagementFreeform,
    );
  }

  Future<ManagementScopeDropResponse> managementScopeDrop(
    ManagementScopeDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementScopeDropResponse.read,
      bindings.CBDConnection_ManagementScopeDrop,
    );
  }

  Future<ManagementViewIndexUpsertResponse> managementViewIndexUpsert(
    ManagementViewIndexUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexUpsertResponse.read,
      bindings.CBDConnection_ManagementViewIndexUpsert,
    );
  }

  Future<ManagementUserGetAllResponse> managementUserGetAll(
    ManagementUserGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserGetAllResponse.read,
      bindings.CBDConnection_ManagementUserGetAll,
    );
  }

  Future<ManagementScopeCreateResponse> managementScopeCreate(
    ManagementScopeCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementScopeCreateResponse.read,
      bindings.CBDConnection_ManagementScopeCreate,
    );
  }

  Future<ManagementEventingGetFunctionResponse> managementEventingGetFunction(
    ManagementEventingGetFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingGetFunctionResponse.read,
      bindings.CBDConnection_ManagementEventingGetFunction,
    );
  }

  Future<ManagementViewIndexDropResponse> managementViewIndexDrop(
    ManagementViewIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexDropResponse.read,
      bindings.CBDConnection_ManagementViewIndexDrop,
    );
  }

  Future<ManagementAnalyticsLinkDisconnectResponse>
      managementAnalyticsLinkDisconnect(
    ManagementAnalyticsLinkDisconnectRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsLinkDisconnectResponse.read,
      bindings.CBDConnection_ManagementAnalyticsLinkDisconnect,
    );
  }

  Future<ManagementUserUpsertResponse> managementUserUpsert(
    ManagementUserUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserUpsertResponse.read,
      bindings.CBDConnection_ManagementUserUpsert,
    );
  }

  Future<ManagementEventingGetStatusResponse> managementEventingGetStatus(
    ManagementEventingGetStatusRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingGetStatusResponse.read,
      bindings.CBDConnection_ManagementEventingGetStatus,
    );
  }

  Future<ManagementEventingGetAllFunctionsResponse>
      managementEventingGetAllFunctions(
    ManagementEventingGetAllFunctionsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingGetAllFunctionsResponse.read,
      bindings.CBDConnection_ManagementEventingGetAllFunctions,
    );
  }

  Future<ManagementAnalyticsIndexCreateResponse> managementAnalyticsIndexCreate(
    ManagementAnalyticsIndexCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsIndexCreateResponse.read,
      bindings.CBDConnection_ManagementAnalyticsIndexCreate,
    );
  }

  Future<ManagementScopeGetAllResponse> managementScopeGetAll(
    ManagementScopeGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementScopeGetAllResponse.read,
      bindings.CBDConnection_ManagementScopeGetAll,
    );
  }

  Future<ManagementUserGetResponse> managementUserGet(
    ManagementUserGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserGetResponse.read,
      bindings.CBDConnection_ManagementUserGet,
    );
  }

  Future<ManagementSearchIndexDropResponse> managementSearchIndexDrop(
    ManagementSearchIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexDropResponse.read,
      bindings.CBDConnection_ManagementSearchIndexDrop,
    );
  }

  Future<ManagementSearchIndexControlPlanFreezeResponse>
      managementSearchIndexControlPlanFreeze(
    ManagementSearchIndexControlPlanFreezeRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexControlPlanFreezeResponse.read,
      bindings.CBDConnection_ManagementSearchIndexControlPlanFreeze,
    );
  }

  Future<ManagementSearchIndexStatsResponse> managementSearchIndexStats(
    ManagementSearchIndexStatsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexStatsResponse.read,
      bindings.CBDConnection_ManagementSearchIndexStats,
    );
  }

  Future<ManagementUserDropResponse> managementUserDrop(
    ManagementUserDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserDropResponse.read,
      bindings.CBDConnection_ManagementUserDrop,
    );
  }

  Future<ManagementAnalyticsDataverseCreateResponse>
      managementAnalyticsDataverseCreate(
    ManagementAnalyticsDataverseCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsDataverseCreateResponse.read,
      bindings.CBDConnection_ManagementAnalyticsDataverseCreate,
    );
  }

  Future<ManagementSearchIndexControlQueryResponse>
      managementSearchIndexControlQuery(
    ManagementSearchIndexControlQueryRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexControlQueryResponse.read,
      bindings.CBDConnection_ManagementSearchIndexControlQuery,
    );
  }

  Future<ManagementRoleGetAllResponse> managementRoleGetAll(
    ManagementRoleGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementRoleGetAllResponse.read,
      bindings.CBDConnection_ManagementRoleGetAll,
    );
  }

  Future<ManagementGroupGetAllResponse> managementGroupGetAll(
    ManagementGroupGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupGetAllResponse.read,
      bindings.CBDConnection_ManagementGroupGetAll,
    );
  }

  Future<ManagementEventingDropFunctionResponse> managementEventingDropFunction(
    ManagementEventingDropFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingDropFunctionResponse.read,
      bindings.CBDConnection_ManagementEventingDropFunction,
    );
  }

  Future<ManagementCollectionDropResponse> managementCollectionDrop(
    ManagementCollectionDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementCollectionDropResponse.read,
      bindings.CBDConnection_ManagementCollectionDrop,
    );
  }

  Future<ManagementSearchIndexControlIngestResponse>
      managementSearchIndexControlIngest(
    ManagementSearchIndexControlIngestRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexControlIngestResponse.read,
      bindings.CBDConnection_ManagementSearchIndexControlIngest,
    );
  }

  Future<ManagementEventingDeployFunctionResponse>
      managementEventingDeployFunction(
    ManagementEventingDeployFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingDeployFunctionResponse.read,
      bindings.CBDConnection_ManagementEventingDeployFunction,
    );
  }

  Future<ManagementGroupGetResponse> managementGroupGet(
    ManagementGroupGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupGetResponse.read,
      bindings.CBDConnection_ManagementGroupGet,
    );
  }

  Future<ManagementViewIndexGetResponse> managementViewIndexGet(
    ManagementViewIndexGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexGetResponse.read,
      bindings.CBDConnection_ManagementViewIndexGet,
    );
  }

  Future<ManagementBucketCreateResponse> managementBucketCreate(
    ManagementBucketCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketCreateResponse.read,
      bindings.CBDConnection_ManagementBucketCreate,
    );
  }

  Future<ManagementAnalyticsDatasetDropResponse> managementAnalyticsDatasetDrop(
    ManagementAnalyticsDatasetDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsDatasetDropResponse.read,
      bindings.CBDConnection_ManagementAnalyticsDatasetDrop,
    );
  }

  Future<ManagementGroupDropResponse> managementGroupDrop(
    ManagementGroupDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupDropResponse.read,
      bindings.CBDConnection_ManagementGroupDrop,
    );
  }

  Future<ManagementSearchIndexGetResponse> managementSearchIndexGet(
    ManagementSearchIndexGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexGetResponse.read,
      bindings.CBDConnection_ManagementSearchIndexGet,
    );
  }

  Future<ManagementQueryIndexGetAllDeferredResponse>
      managementQueryIndexGetAllDeferred(
    ManagementQueryIndexGetAllDeferredRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexGetAllDeferredResponse.read,
      bindings.CBDConnection_ManagementQueryIndexGetAllDeferred,
    );
  }

  Future<ManagementQueryIndexBuildResponse> managementQueryIndexBuild(
    ManagementQueryIndexBuildRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexBuildResponse.read,
      bindings.CBDConnection_ManagementQueryIndexBuild,
    );
  }

  Future<ManagementEventingUndeployFunctionResponse>
      managementEventingUndeployFunction(
    ManagementEventingUndeployFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingUndeployFunctionResponse.read,
      bindings.CBDConnection_ManagementEventingUndeployFunction,
    );
  }

  Future<ManagementSearchIndexGetDocumentsCountResponse>
      managementSearchIndexGetDocumentsCount(
    ManagementSearchIndexGetDocumentsCountRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexGetDocumentsCountResponse.read,
      bindings.CBDConnection_ManagementSearchIndexGetDocumentsCount,
    );
  }

  Future<ManagementAnalyticsLinkGetAllResponse> managementAnalyticsLinkGetAll(
    ManagementAnalyticsLinkGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsLinkGetAllResponse.read,
      bindings.CBDConnection_ManagementAnalyticsLinkGetAll,
    );
  }
}
