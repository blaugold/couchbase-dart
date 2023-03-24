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
      bindings.CBLConnection_Prepend,
    );
  }

  Future<ExistsResponse> exists(
    ExistsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      ExistsResponse.read,
      bindings.CBLConnection_Exists,
    );
  }

  Future<HttpNoopResponse> httpNoop(
    HttpNoopRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      HttpNoopResponse.read,
      bindings.CBLConnection_HttpNoop,
    );
  }

  Future<UnlockResponse> unlock(
    UnlockRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      UnlockResponse.read,
      bindings.CBLConnection_Unlock,
    );
  }

  Future<GetAllReplicasResponse> getAllReplicas(
    GetAllReplicasRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAllReplicasResponse.read,
      bindings.CBLConnection_GetAllReplicas,
    );
  }

  Future<UpsertResponse> upsert(
    UpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      UpsertResponse.read,
      bindings.CBLConnection_Upsert,
    );
  }

  Future<GetAnyReplicaResponse> getAnyReplica(
    GetAnyReplicaRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAnyReplicaResponse.read,
      bindings.CBLConnection_GetAnyReplica,
    );
  }

  Future<AppendResponse> append(
    AppendRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      AppendResponse.read,
      bindings.CBLConnection_Append,
    );
  }

  Future<QueryResponse> query(
    QueryRequest request,
  ) async {
    return _executeOperation(
      request.write,
      QueryErrorContext.read,
      QueryResponse.read,
      bindings.CBLConnection_Query,
    );
  }

  Future<McbpNoopResponse> mcbpNoop(
    McbpNoopRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      McbpNoopResponse.read,
      bindings.CBLConnection_McbpNoop,
    );
  }

  Future<ReplaceResponse> replace(
    ReplaceRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      ReplaceResponse.read,
      bindings.CBLConnection_Replace,
    );
  }

  Future<GetAndTouchResponse> getAndTouch(
    GetAndTouchRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAndTouchResponse.read,
      bindings.CBLConnection_GetAndTouch,
    );
  }

  Future<RemoveResponse> remove(
    RemoveRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      RemoveResponse.read,
      bindings.CBLConnection_Remove,
    );
  }

  Future<GetResponse> get(
    GetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetResponse.read,
      bindings.CBLConnection_Get,
    );
  }

  Future<AnalyticsResponse> analytics(
    AnalyticsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      AnalyticsErrorContext.read,
      AnalyticsResponse.read,
      bindings.CBLConnection_Analytics,
    );
  }

  Future<GetProjectedResponse> getProjected(
    GetProjectedRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetProjectedResponse.read,
      bindings.CBLConnection_GetProjected,
    );
  }

  Future<DecrementResponse> decrement(
    DecrementRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      DecrementResponse.read,
      bindings.CBLConnection_Decrement,
    );
  }

  Future<SearchResponse> search(
    SearchRequest request,
  ) async {
    return _executeOperation(
      request.write,
      SearchErrorContext.read,
      SearchResponse.read,
      bindings.CBLConnection_Search,
    );
  }

  Future<TouchResponse> touch(
    TouchRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      TouchResponse.read,
      bindings.CBLConnection_Touch,
    );
  }

  Future<LookupInResponse> lookupIn(
    LookupInRequest request,
  ) async {
    return _executeOperation(
      request.write,
      SubdocumentErrorContext.read,
      LookupInResponse.read,
      bindings.CBLConnection_LookupIn,
    );
  }

  Future<DocumentViewResponse> documentView(
    DocumentViewRequest request,
  ) async {
    return _executeOperation(
      request.write,
      ViewErrorContext.read,
      DocumentViewResponse.read,
      bindings.CBLConnection_DocumentView,
    );
  }

  Future<GetAndLockResponse> getAndLock(
    GetAndLockRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      GetAndLockResponse.read,
      bindings.CBLConnection_GetAndLock,
    );
  }

  Future<InsertResponse> insert(
    InsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      InsertResponse.read,
      bindings.CBLConnection_Insert,
    );
  }

  Future<MutateInResponse> mutateIn(
    MutateInRequest request,
  ) async {
    return _executeOperation(
      request.write,
      SubdocumentErrorContext.read,
      MutateInResponse.read,
      bindings.CBLConnection_MutateIn,
    );
  }

  Future<IncrementResponse> increment(
    IncrementRequest request,
  ) async {
    return _executeOperation(
      request.write,
      KeyValueErrorContext.read,
      IncrementResponse.read,
      bindings.CBLConnection_Increment,
    );
  }

  Future<ManagementGroupUpsertResponse> managementGroupUpsert(
    ManagementGroupUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupUpsertResponse.read,
      bindings.CBLConnection_ManagementGroupUpsert,
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
      bindings.CBLConnection_ManagementEventingPauseFunction,
    );
  }

  Future<ManagementQueryIndexGetAllResponse> managementQueryIndexGetAll(
    ManagementQueryIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexGetAllResponse.read,
      bindings.CBLConnection_ManagementQueryIndexGetAll,
    );
  }

  Future<ManagementCollectionCreateResponse> managementCollectionCreate(
    ManagementCollectionCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementCollectionCreateResponse.read,
      bindings.CBLConnection_ManagementCollectionCreate,
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
      bindings.CBLConnection_ManagementEventingResumeFunction,
    );
  }

  Future<ManagementSearchIndexGetStatsResponse> managementSearchIndexGetStats(
    ManagementSearchIndexGetStatsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexGetStatsResponse.read,
      bindings.CBLConnection_ManagementSearchIndexGetStats,
    );
  }

  Future<ManagementBucketGetAllResponse> managementBucketGetAll(
    ManagementBucketGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketGetAllResponse.read,
      bindings.CBLConnection_ManagementBucketGetAll,
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
      bindings.CBLConnection_ManagementQueryIndexBuildDeferred,
    );
  }

  Future<ManagementClusterDescribeResponse> managementClusterDescribe(
    ManagementClusterDescribeRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementClusterDescribeResponse.read,
      bindings.CBLConnection_ManagementClusterDescribe,
    );
  }

  Future<ManagementSearchIndexGetAllResponse> managementSearchIndexGetAll(
    ManagementSearchIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexGetAllResponse.read,
      bindings.CBLConnection_ManagementSearchIndexGetAll,
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
      bindings.CBLConnection_ManagementSearchIndexAnalyzeDocument,
    );
  }

  Future<ManagementQueryIndexDropResponse> managementQueryIndexDrop(
    ManagementQueryIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexDropResponse.read,
      bindings.CBLConnection_ManagementQueryIndexDrop,
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
      bindings.CBLConnection_ManagementAnalyticsDatasetCreate,
    );
  }

  Future<ManagementBucketFlushResponse> managementBucketFlush(
    ManagementBucketFlushRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketFlushResponse.read,
      bindings.CBLConnection_ManagementBucketFlush,
    );
  }

  Future<ManagementAnalyticsIndexDropResponse> managementAnalyticsIndexDrop(
    ManagementAnalyticsIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsIndexDropResponse.read,
      bindings.CBLConnection_ManagementAnalyticsIndexDrop,
    );
  }

  Future<ManagementQueryIndexCreateResponse> managementQueryIndexCreate(
    ManagementQueryIndexCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexCreateResponse.read,
      bindings.CBLConnection_ManagementQueryIndexCreate,
    );
  }

  Future<ManagementSearchIndexUpsertResponse> managementSearchIndexUpsert(
    ManagementSearchIndexUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexUpsertResponse.read,
      bindings.CBLConnection_ManagementSearchIndexUpsert,
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
      bindings.CBLConnection_ManagementAnalyticsDatasetGetAll,
    );
  }

  Future<ManagementAnalyticsIndexGetAllResponse> managementAnalyticsIndexGetAll(
    ManagementAnalyticsIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsIndexGetAllResponse.read,
      bindings.CBLConnection_ManagementAnalyticsIndexGetAll,
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
      bindings.CBLConnection_ManagementAnalyticsGetPendingMutations,
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
      bindings.CBLConnection_ManagementAnalyticsDataverseDrop,
    );
  }

  Future<ManagementAnalyticsLinkConnectResponse> managementAnalyticsLinkConnect(
    ManagementAnalyticsLinkConnectRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsLinkConnectResponse.read,
      bindings.CBLConnection_ManagementAnalyticsLinkConnect,
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
      bindings.CBLConnection_ManagementCollectionsManifestGet,
    );
  }

  Future<ManagementChangePasswordResponse> managementChangePassword(
    ManagementChangePasswordRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementChangePasswordResponse.read,
      bindings.CBLConnection_ManagementChangePassword,
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
      bindings.CBLConnection_ManagementClusterDeveloperPreviewEnable,
    );
  }

  Future<ManagementAnalyticsLinkDropResponse> managementAnalyticsLinkDrop(
    ManagementAnalyticsLinkDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsLinkDropResponse.read,
      bindings.CBLConnection_ManagementAnalyticsLinkDrop,
    );
  }

  Future<ManagementBucketDescribeResponse> managementBucketDescribe(
    ManagementBucketDescribeRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketDescribeResponse.read,
      bindings.CBLConnection_ManagementBucketDescribe,
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
      bindings.CBLConnection_ManagementEventingUpsertFunction,
    );
  }

  Future<ManagementViewIndexGetAllResponse> managementViewIndexGetAll(
    ManagementViewIndexGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexGetAllResponse.read,
      bindings.CBLConnection_ManagementViewIndexGetAll,
    );
  }

  Future<ManagementBucketGetResponse> managementBucketGet(
    ManagementBucketGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketGetResponse.read,
      bindings.CBLConnection_ManagementBucketGet,
    );
  }

  Future<ManagementBucketUpdateResponse> managementBucketUpdate(
    ManagementBucketUpdateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketUpdateResponse.read,
      bindings.CBLConnection_ManagementBucketUpdate,
    );
  }

  Future<ManagementBucketDropResponse> managementBucketDrop(
    ManagementBucketDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketDropResponse.read,
      bindings.CBLConnection_ManagementBucketDrop,
    );
  }

  Future<ManagementFreeformResponse> managementFreeform(
    ManagementFreeformRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementFreeformResponse.read,
      bindings.CBLConnection_ManagementFreeform,
    );
  }

  Future<ManagementScopeDropResponse> managementScopeDrop(
    ManagementScopeDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementScopeDropResponse.read,
      bindings.CBLConnection_ManagementScopeDrop,
    );
  }

  Future<ManagementViewIndexUpsertResponse> managementViewIndexUpsert(
    ManagementViewIndexUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexUpsertResponse.read,
      bindings.CBLConnection_ManagementViewIndexUpsert,
    );
  }

  Future<ManagementUserGetAllResponse> managementUserGetAll(
    ManagementUserGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserGetAllResponse.read,
      bindings.CBLConnection_ManagementUserGetAll,
    );
  }

  Future<ManagementScopeCreateResponse> managementScopeCreate(
    ManagementScopeCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementScopeCreateResponse.read,
      bindings.CBLConnection_ManagementScopeCreate,
    );
  }

  Future<ManagementEventingGetFunctionResponse> managementEventingGetFunction(
    ManagementEventingGetFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingGetFunctionResponse.read,
      bindings.CBLConnection_ManagementEventingGetFunction,
    );
  }

  Future<ManagementViewIndexDropResponse> managementViewIndexDrop(
    ManagementViewIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexDropResponse.read,
      bindings.CBLConnection_ManagementViewIndexDrop,
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
      bindings.CBLConnection_ManagementAnalyticsLinkDisconnect,
    );
  }

  Future<ManagementUserUpsertResponse> managementUserUpsert(
    ManagementUserUpsertRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserUpsertResponse.read,
      bindings.CBLConnection_ManagementUserUpsert,
    );
  }

  Future<ManagementEventingGetStatusResponse> managementEventingGetStatus(
    ManagementEventingGetStatusRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingGetStatusResponse.read,
      bindings.CBLConnection_ManagementEventingGetStatus,
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
      bindings.CBLConnection_ManagementEventingGetAllFunctions,
    );
  }

  Future<ManagementAnalyticsIndexCreateResponse> managementAnalyticsIndexCreate(
    ManagementAnalyticsIndexCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsIndexCreateResponse.read,
      bindings.CBLConnection_ManagementAnalyticsIndexCreate,
    );
  }

  Future<ManagementScopeGetAllResponse> managementScopeGetAll(
    ManagementScopeGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementScopeGetAllResponse.read,
      bindings.CBLConnection_ManagementScopeGetAll,
    );
  }

  Future<ManagementUserGetResponse> managementUserGet(
    ManagementUserGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserGetResponse.read,
      bindings.CBLConnection_ManagementUserGet,
    );
  }

  Future<ManagementSearchIndexDropResponse> managementSearchIndexDrop(
    ManagementSearchIndexDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexDropResponse.read,
      bindings.CBLConnection_ManagementSearchIndexDrop,
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
      bindings.CBLConnection_ManagementSearchIndexControlPlanFreeze,
    );
  }

  Future<ManagementSearchIndexStatsResponse> managementSearchIndexStats(
    ManagementSearchIndexStatsRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexStatsResponse.read,
      bindings.CBLConnection_ManagementSearchIndexStats,
    );
  }

  Future<ManagementUserDropResponse> managementUserDrop(
    ManagementUserDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementUserDropResponse.read,
      bindings.CBLConnection_ManagementUserDrop,
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
      bindings.CBLConnection_ManagementAnalyticsDataverseCreate,
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
      bindings.CBLConnection_ManagementSearchIndexControlQuery,
    );
  }

  Future<ManagementRoleGetAllResponse> managementRoleGetAll(
    ManagementRoleGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementRoleGetAllResponse.read,
      bindings.CBLConnection_ManagementRoleGetAll,
    );
  }

  Future<ManagementGroupGetAllResponse> managementGroupGetAll(
    ManagementGroupGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupGetAllResponse.read,
      bindings.CBLConnection_ManagementGroupGetAll,
    );
  }

  Future<ManagementEventingDropFunctionResponse> managementEventingDropFunction(
    ManagementEventingDropFunctionRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementEventingDropFunctionResponse.read,
      bindings.CBLConnection_ManagementEventingDropFunction,
    );
  }

  Future<ManagementCollectionDropResponse> managementCollectionDrop(
    ManagementCollectionDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementCollectionDropResponse.read,
      bindings.CBLConnection_ManagementCollectionDrop,
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
      bindings.CBLConnection_ManagementSearchIndexControlIngest,
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
      bindings.CBLConnection_ManagementEventingDeployFunction,
    );
  }

  Future<ManagementGroupGetResponse> managementGroupGet(
    ManagementGroupGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupGetResponse.read,
      bindings.CBLConnection_ManagementGroupGet,
    );
  }

  Future<ManagementViewIndexGetResponse> managementViewIndexGet(
    ManagementViewIndexGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementViewIndexGetResponse.read,
      bindings.CBLConnection_ManagementViewIndexGet,
    );
  }

  Future<ManagementBucketCreateResponse> managementBucketCreate(
    ManagementBucketCreateRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementBucketCreateResponse.read,
      bindings.CBLConnection_ManagementBucketCreate,
    );
  }

  Future<ManagementAnalyticsDatasetDropResponse> managementAnalyticsDatasetDrop(
    ManagementAnalyticsDatasetDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsDatasetDropResponse.read,
      bindings.CBLConnection_ManagementAnalyticsDatasetDrop,
    );
  }

  Future<ManagementGroupDropResponse> managementGroupDrop(
    ManagementGroupDropRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementGroupDropResponse.read,
      bindings.CBLConnection_ManagementGroupDrop,
    );
  }

  Future<ManagementSearchIndexGetResponse> managementSearchIndexGet(
    ManagementSearchIndexGetRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementSearchIndexGetResponse.read,
      bindings.CBLConnection_ManagementSearchIndexGet,
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
      bindings.CBLConnection_ManagementQueryIndexGetAllDeferred,
    );
  }

  Future<ManagementQueryIndexBuildResponse> managementQueryIndexBuild(
    ManagementQueryIndexBuildRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementQueryIndexBuildResponse.read,
      bindings.CBLConnection_ManagementQueryIndexBuild,
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
      bindings.CBLConnection_ManagementEventingUndeployFunction,
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
      bindings.CBLConnection_ManagementSearchIndexGetDocumentsCount,
    );
  }

  Future<ManagementAnalyticsLinkGetAllResponse> managementAnalyticsLinkGetAll(
    ManagementAnalyticsLinkGetAllRequest request,
  ) async {
    return _executeOperation(
      request.write,
      HttpErrorContext.read,
      ManagementAnalyticsLinkGetAllResponse.read,
      bindings.CBLConnection_ManagementAnalyticsLinkGetAll,
    );
  }
}
