#include <Connection.hpp>
#include <Message_Basic.hpp>
#include <Message_Errors.hpp>
#include <Message_Generated.hpp>
#include <dart_api_dl.h>
#include <iostream>

namespace couchbase::dart
{

Connection::Connection(Dart_Port_DL port)
    : _port(port)
    , _cluster(couchbase::core::cluster::create(_io))
{
    _ioThread = std::thread([this]() { _io.run(); });
}

void Connection::destroy()
{
    _cluster->close([this]() mutable {
        // We have to run this on a separate thread since the callback itself is
        // actually running from within the io context.
        std::thread([this]() {
            _ioThread.join();
            delete this;
        }).detach();
    });
}

void Connection::open(MessageBuffer *request)
{
    Response response(this, request);

    auto connectionString =
        couchbase::core::utils::parse_connection_string(request->readString());
    auto credentials =
        read_cbpp<couchbase::core::cluster_credentials>(*request);
    if (request->readBool()) {
        connectionString.options.dns_config =
            read_cbpp<couchbase::core::io::dns::dns_config>(*request);
    }
    auto origin = couchbase::core::origin(credentials, connectionString);

    _cluster->open(origin, [response](std::error_code ec) mutable {
        response.complete(
            [ec](MessageBuffer &response) { writeError(response, ec); });
    });
}

void Connection::close(MessageBuffer *request)
{
    Response response(this, request);

    _cluster->close([response]() mutable {
        response.complete([](MessageBuffer &response) {});
    });
}

void Connection::openBucket(MessageBuffer *request)
{
    Response response(this, request);

    auto bucketName = request->readString();

    _cluster->open_bucket(bucketName, [response](std::error_code ec) mutable {
        response.complete(
            [ec](MessageBuffer &response) { writeError(response, ec); });
    });
}

void Connection::diagnostics(MessageBuffer *request)
{
    Response response(this, request);

    std::optional<std::string> reportId;
    read_cbpp(reportId, *request);

    _cluster->diagnostics(
        reportId,
        [response](couchbase::core::diag::diagnostics_result result) mutable {
            response.complete([result](MessageBuffer &response) {
                write_cbpp(response, result);
            });
        });
}

void Connection::ping(MessageBuffer *request)
{
    Response response(this, request);

    std::optional<std::string> reportId;
    read_cbpp(reportId, *request);
    std::optional<std::string> bucketName;
    read_cbpp(bucketName, *request);
    std::set<couchbase::core::service_type> services;
    read_cbpp(services, *request);

    _cluster->ping(
        reportId, bucketName, services,
        [response](couchbase::core::diag::ping_result result) mutable {
            response.complete([result](MessageBuffer &response) {
                write_cbpp(response, result);
            });
        });
}

Connection::~Connection()
{
}

void Connection::completeRequest(int64_t requestId)
{
    Dart_PostInteger_DL(_port, requestId);
}

}; // namespace couchbase::dart
