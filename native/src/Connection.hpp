#pragma once
#include <MessageBuffer.hpp>
#include <asio/io_context.hpp>
#include <core/cluster.hxx>
#include <dart_api_dl.h>
#include <memory>
#include <thread>

namespace couchbase::dart
{

class Response;

class Connection
{

    friend Response;

public:
    Connection(Dart_Port_DL port);

    void destroy();

    void open(MessageBuffer *request);

    void close(MessageBuffer *request);

    void openBucket(MessageBuffer *request);

    // #region Generated Operation Methods

    void prepend(MessageBuffer *request);
    void exists(MessageBuffer *request);
    void httpNoop(MessageBuffer *request);
    void unlock(MessageBuffer *request);
    void getAllReplicas(MessageBuffer *request);
    void upsert(MessageBuffer *request);
    void getAnyReplica(MessageBuffer *request);
    void append(MessageBuffer *request);
    void query(MessageBuffer *request);
    void replace(MessageBuffer *request);
    void getAndTouch(MessageBuffer *request);
    void remove(MessageBuffer *request);
    void get(MessageBuffer *request);
    void analytics(MessageBuffer *request);
    void getProjected(MessageBuffer *request);
    void decrement(MessageBuffer *request);
    void search(MessageBuffer *request);
    void touch(MessageBuffer *request);
    void lookupIn(MessageBuffer *request);
    void documentView(MessageBuffer *request);
    void getAndLock(MessageBuffer *request);
    void insert(MessageBuffer *request);
    void mutateIn(MessageBuffer *request);
    void increment(MessageBuffer *request);
    void managementGroupUpsert(MessageBuffer *request);
    void managementEventingPauseFunction(MessageBuffer *request);
    void managementQueryIndexGetAll(MessageBuffer *request);
    void managementCollectionCreate(MessageBuffer *request);
    void managementEventingResumeFunction(MessageBuffer *request);
    void managementSearchIndexGetStats(MessageBuffer *request);
    void managementBucketGetAll(MessageBuffer *request);
    void managementQueryIndexBuildDeferred(MessageBuffer *request);
    void managementClusterDescribe(MessageBuffer *request);
    void managementSearchIndexGetAll(MessageBuffer *request);
    void managementSearchIndexAnalyzeDocument(MessageBuffer *request);
    void managementQueryIndexDrop(MessageBuffer *request);
    void managementAnalyticsDatasetCreate(MessageBuffer *request);
    void managementBucketFlush(MessageBuffer *request);
    void managementAnalyticsIndexDrop(MessageBuffer *request);
    void managementQueryIndexCreate(MessageBuffer *request);
    void managementSearchIndexUpsert(MessageBuffer *request);
    void managementAnalyticsDatasetGetAll(MessageBuffer *request);
    void managementAnalyticsIndexGetAll(MessageBuffer *request);
    void managementAnalyticsGetPendingMutations(MessageBuffer *request);
    void managementAnalyticsDataverseDrop(MessageBuffer *request);
    void managementAnalyticsLinkConnect(MessageBuffer *request);
    void managementCollectionsManifestGet(MessageBuffer *request);
    void managementChangePassword(MessageBuffer *request);
    void managementClusterDeveloperPreviewEnable(MessageBuffer *request);
    void managementAnalyticsLinkDrop(MessageBuffer *request);
    void managementBucketDescribe(MessageBuffer *request);
    void managementEventingUpsertFunction(MessageBuffer *request);
    void managementViewIndexGetAll(MessageBuffer *request);
    void managementBucketGet(MessageBuffer *request);
    void managementBucketUpdate(MessageBuffer *request);
    void managementBucketDrop(MessageBuffer *request);
    void managementFreeform(MessageBuffer *request);
    void managementScopeDrop(MessageBuffer *request);
    void managementViewIndexUpsert(MessageBuffer *request);
    void managementUserGetAll(MessageBuffer *request);
    void managementScopeCreate(MessageBuffer *request);
    void managementEventingGetFunction(MessageBuffer *request);
    void managementViewIndexDrop(MessageBuffer *request);
    void managementAnalyticsLinkDisconnect(MessageBuffer *request);
    void managementUserUpsert(MessageBuffer *request);
    void managementEventingGetStatus(MessageBuffer *request);
    void managementEventingGetAllFunctions(MessageBuffer *request);
    void managementAnalyticsIndexCreate(MessageBuffer *request);
    void managementScopeGetAll(MessageBuffer *request);
    void managementUserGet(MessageBuffer *request);
    void managementSearchIndexDrop(MessageBuffer *request);
    void managementSearchIndexControlPlanFreeze(MessageBuffer *request);
    void managementSearchIndexStats(MessageBuffer *request);
    void managementUserDrop(MessageBuffer *request);
    void managementAnalyticsDataverseCreate(MessageBuffer *request);
    void managementSearchIndexControlQuery(MessageBuffer *request);
    void managementRoleGetAll(MessageBuffer *request);
    void managementGroupGetAll(MessageBuffer *request);
    void managementEventingDropFunction(MessageBuffer *request);
    void managementCollectionDrop(MessageBuffer *request);
    void managementSearchIndexControlIngest(MessageBuffer *request);
    void managementEventingDeployFunction(MessageBuffer *request);
    void managementGroupGet(MessageBuffer *request);
    void managementViewIndexGet(MessageBuffer *request);
    void managementBucketCreate(MessageBuffer *request);
    void managementAnalyticsDatasetDrop(MessageBuffer *request);
    void managementGroupDrop(MessageBuffer *request);
    void managementSearchIndexGet(MessageBuffer *request);
    void managementQueryIndexGetAllDeferred(MessageBuffer *request);
    void managementQueryIndexBuild(MessageBuffer *request);
    void managementEventingUndeployFunction(MessageBuffer *request);
    void managementSearchIndexGetDocumentsCount(MessageBuffer *request);
    void managementAnalyticsLinkGetAll(MessageBuffer *request);

    // #endregion Generated Operation Methods

private:
    ~Connection();

    void completeRequest(int64_t requestId);

    Dart_Port_DL _port;
    asio::io_context _io;
    std::thread _ioThread;
    std::shared_ptr<couchbase::core::cluster> _cluster;
};

class Response
{
public:
    Response(Connection *connection, MessageBuffer *buffer)
        : _connection(connection)
        , _requestId(buffer->readInt64())
        , _buffer(buffer)
    {
    }

    template <typename ResponseWriter>
    void complete(ResponseWriter responseWriter)
    {
        _buffer->reset();
        responseWriter(*_buffer);
        _buffer->reset();
        _connection->completeRequest(_requestId);
    }

private:
    Connection *_connection;
    int64_t _requestId;
    MessageBuffer *_buffer;
};

}; // namespace couchbase::dart
