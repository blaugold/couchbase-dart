import 'package:meta/meta.dart';

import 'general.dart';
import 'message.g.dart';
import 'message_errors.dart' as message_errors;

/// Base class for all error context types.
///
/// {@category Error Handling}
abstract class ErrorContext {}

/// The error context information for a Key-Value operation.
///
/// {@category Error Handling}
class KeyValueErrorContext extends ErrorContext {
  KeyValueErrorContext({
    required this.statusCode,
    required this.opaque,
    required this.cas,
    required this.key,
    required this.context,
    required this.ref,
  });

  /// The memcached status code returned by the server.
  final KeyValueStatusCode? statusCode;

  /// The opaque identifier for the request.
  final int opaque;

  /// The cas returned by the server.
  final Cas cas;

  /// The key that was being operated on.
  final String key;

  // TODO: Add theses to message_errors.KeyValueErrorContext
  // /// The name of the bucket that was being operated on.
  // final String bucket;

  // /// The name of the collection that was being operated on.
  // final String collection;

  // /// The name of the scope that was being operated on.
  // final String scope;

  /// The context returned by the server helping describing the error.
  final String? context;

  /// The reference id returned by the server for correlation in server logs.
  final String? ref;

  @override
  String toString() {
    return 'KeyValueErrorContext('
        'statusCode: ${statusCode?.name}, '
        'opaque: $opaque, '
        'cas: $cas, '
        'key: $key, '
        'context: $context, '
        'ref: $ref'
        ')';
  }
}

extension on message_errors.KeyValueErrorContext {
  KeyValueErrorContext toApi() {
    return KeyValueErrorContext(
      statusCode: statusCode,
      opaque: opaque,
      cas: cas,
      key: id,
      context: extendedErrorInfo?.context,
      ref: extendedErrorInfo?.reference,
    );
  }
}

/// Error context information for a query operation.
///
/// {@category Error Handling}
class ViewErrorContext extends ErrorContext {
  ViewErrorContext({
    required this.designDocument,
    required this.view,
    required this.parameters,
    required this.httpResponseCode,
    required this.httpResponseBody,
  });

  /// The name of the design document that was being operated on.
  final String designDocument;

  /// The name of the view that was being operated on.
  final String view;

  /// A list of parameters in use for the operation.
  // TODO: Figure out if this should be a string like for all other error
  // contexts
  final List<String> parameters;

  /// The http response status code which was received.
  final int httpResponseCode;

  /// The http response body which was received.
  final String httpResponseBody;

  @override
  String toString() {
    return 'ViewErrorContext('
        'designDocument: $designDocument, '
        'view: $view, '
        'parameters: $parameters, '
        'httpResponseCode: $httpResponseCode, '
        'httpResponseBody: $httpResponseBody'
        ')';
  }
}

extension on message_errors.ViewErrorContext {
  ViewErrorContext toApi() {
    return ViewErrorContext(
      designDocument: designDocumentName,
      view: viewName,
      parameters: queryString,
      httpResponseCode: httpStatus,
      httpResponseBody: httpBody,
    );
  }
}

/// Error context information for a search operation.
///
/// {@category Error Handling}
class QueryErrorContext extends ErrorContext {
  QueryErrorContext({
    required this.statement,
    required this.clientContextId,
    required this.parameters,
    required this.httpResponseCode,
    required this.httpResponseBody,
  });

  /// The statement that was being executed when the error occurred.
  final String statement;

  /// The client context id which was sent to the service for correlation
  /// between requests and responses.
  final String clientContextId;

  /// The parameters in use for the operation.
  final String? parameters;

  /// The http response status code which was received.
  final int httpResponseCode;

  /// The http response body which was received.
  final String httpResponseBody;

  @override
  String toString() {
    return 'QueryErrorContext('
        'statement: $statement, '
        'clientContextId: $clientContextId, '
        'parameters: $parameters, '
        'httpResponseCode: $httpResponseCode, '
        'httpResponseBody: $httpResponseBody'
        ')';
  }
}

extension on message_errors.QueryErrorContext {
  QueryErrorContext toApi() {
    return QueryErrorContext(
      statement: statement,
      clientContextId: clientContextId,
      parameters: parameters,
      httpResponseCode: httpStatus,
      httpResponseBody: httpBody,
    );
  }
}

/// Error context information for a search operation.
///
/// {@category Error Handling}
class SearchErrorContext extends ErrorContext {
  SearchErrorContext({
    required this.indexName,
    required this.query,
    required this.parameters,
    required this.httpResponseCode,
    required this.httpResponseBody,
  });

  /// The name of the index which was being operated on.
  final String indexName;

  /// The full query that was being executed.
  final String? query;

  /// A list of the parameters in use for the operation.
  final String? parameters;

  /// The http response status code which was received.
  final int httpResponseCode;

  /// The http response body which was received.
  final String httpResponseBody;

  @override
  String toString() {
    return 'SearchErrorContext('
        'indexName: $indexName, '
        'query: $query, '
        'parameters: $parameters, '
        'httpResponseCode: $httpResponseCode, '
        'httpResponseBody: $httpResponseBody'
        ')';
  }
}

extension on message_errors.SearchErrorContext {
  SearchErrorContext toApi() {
    return SearchErrorContext(
      indexName: indexName,
      query: query,
      parameters: parameters,
      httpResponseCode: httpStatus,
      httpResponseBody: httpBody,
    );
  }
}

/// Error context information for an analytics operation.
///
/// {@category Error Handling}
class AnalyticsErrorContext extends ErrorContext {
  AnalyticsErrorContext({
    required this.statement,
    required this.clientContextId,
    required this.parameters,
    required this.httpResponseCode,
    required this.httpResponseBody,
  });

  /// The statement that was being executed when the error occurred.
  final String statement;

  /// The client context id which was sent to the service for correlation
  /// between requests and responses.
  final String clientContextId;

  /// A list of the parameters in use for the operation.
  final String? parameters;

  /// The http response status code which was received.
  final int httpResponseCode;

  /// The http response body which was received.
  final String httpResponseBody;

  @override
  String toString() {
    return 'AnalyticsErrorContext('
        'statement: $statement, '
        'clientContextId: $clientContextId, '
        'parameters: $parameters, '
        'httpResponseCode: $httpResponseCode, '
        'httpResponseBody: $httpResponseBody'
        ')';
  }
}

extension on message_errors.AnalyticsErrorContext {
  AnalyticsErrorContext toApi() {
    return AnalyticsErrorContext(
      statement: statement,
      clientContextId: clientContextId,
      parameters: parameters,
      httpResponseCode: httpStatus,
      httpResponseBody: httpBody,
    );
  }
}

/// Error context information for a HTTP operation.
///
/// {@category Error Handling}
class HttpErrorContext extends ErrorContext {
  HttpErrorContext({
    required this.method,
    required this.requestPath,
    required this.responseCode,
    required this.responseBody,
  });

  /// The HTTP method of the request that was performed.
  final String method;

  /// The request path for the request that was being performed.
  final String requestPath;

  /// The http response status code which was received.
  final int responseCode;

  /// The http response body which was received.
  final String responseBody;

  @override
  String toString() {
    return 'HttpErrorContext('
        'method: $method, '
        'requestPath: $requestPath, '
        'responseCode: $responseCode, '
        'responseBody: $responseBody'
        ')';
  }
}

extension on message_errors.HttpErrorContext {
  HttpErrorContext toApi() {
    return HttpErrorContext(
      method: method,
      requestPath: path,
      responseCode: httpStatus,
      responseBody: httpBody,
    );
  }
}

/// A generic base exception that all exceptions inherit.
///
/// Exposes the [context] of the error to enable easier debugging.
///
/// {@category Error Handling}
abstract class CouchbaseException implements Exception {
  CouchbaseException([this.context]);

  /// Additional contextual information which is available for this exception.
  ///
  /// Varies based on the service that generated the exception.
  final ErrorContext? context;

  String get _name;

  @override
  String toString() => '$_name(context: $context)';
}

/// The operation timed out.
///
/// {@category Error Handling}
abstract class TimeoutException extends CouchbaseException {
  TimeoutException([super.context]);
}

/// Indicates that the request was explicitly cancelled.
///
/// {@category Error Handling}
class RequestCanceled extends CouchbaseException {
  RequestCanceled([super.context]);

  @override
  String get _name => 'RequestCanceled';
}

/// One of the passed arguments was invalid.
///
/// {@category Error Handling}
class InvalidArgument extends CouchbaseException {
  InvalidArgument([super.context]);

  @override
  String get _name => 'InvalidArgument';
}

/// The operation requires a service which was not available.
///
/// For instance, attempting to perform a query without the query service
/// being enabled.
///
/// {@category Error Handling}
class ServiceNotAvailable extends CouchbaseException {
  ServiceNotAvailable([super.context]);

  @override
  String get _name => 'ServiceNotAvailable';
}

/// Some form of internal error occurred on the server and the
/// request could not be completed.
///
/// {@category Error Handling}
class InternalServerFailure extends CouchbaseException {
  InternalServerFailure([super.context]);

  @override
  String get _name => 'InternalServerFailure';
}

/// An error occurred authenticating the user to the cluster.
///
/// {@category Error Handling}
class AuthenticationFailure extends CouchbaseException {
  AuthenticationFailure([super.context]);

  @override
  String get _name => 'AuthenticationFailure';
}

/// A temporary failure occurred, attempting the same operation
/// in the future may succeed.
///
/// {@category Error Handling}
class TemporaryFailure extends CouchbaseException {
  TemporaryFailure([super.context]);

  @override
  String get _name => 'TemporaryFailure';
}

/// A parsing failure occurred.
///
/// {@category Error Handling}
class ParsingFailure extends CouchbaseException {
  ParsingFailure([super.context]);

  @override
  String get _name => 'ParsingFailure';
}

/// A CAS mismatch occurred.
///
/// This means that the document
/// has changed since the last access and should be fetched again before
/// attempting to make further changes.
///
/// {@category Error Handling}
class CasMismatch extends CouchbaseException {
  CasMismatch([super.context]);

  @override
  String get _name => 'CasMismatch';
}

/// The bucket being referenced does not exist.
///
/// {@category Error Handling}
class BucketNotFound extends CouchbaseException {
  BucketNotFound([super.context]);

  @override
  String get _name => 'BucketNotFound';
}

/// The collection being referenced does not exist.
///
/// {@category Error Handling}
class CollectionNotFound extends CouchbaseException {
  CollectionNotFound([super.context]);

  @override
  String get _name => 'CollectionNotFound';
}

/// There was a failure during encoding.
///
/// {@category Error Handling}
class EncodingFailure extends CouchbaseException {
  EncodingFailure([super.context]);

  @override
  String get _name => 'EncodingFailure';
}

/// There was a failure during decoding.
///
/// {@category Error Handling}
class DecodingFailure extends CouchbaseException {
  DecodingFailure([super.context]);

  @override
  String get _name => 'DecodingFailure';
}

/// An operation which is not supported was executed.
///
/// {@category Error Handling}
class UnsupportedOperation extends CouchbaseException {
  UnsupportedOperation([super.context]);

  @override
  String get _name => 'UnsupportedOperation';
}

/// An ambiguous timeout has occurred.
///
/// The outcome of the
/// operation is unknown, and it is possible that it completed after the
/// generation of this error.
///
/// {@category Error Handling}
class AmbiguousTimeout extends TimeoutException {
  AmbiguousTimeout([super.context]);

  @override
  String get _name => 'AmbiguousTimeout';
}

/// An unambiguous timeout has occurred.
///
/// The outcome of the
/// operation is objective failure and it is known to have not completed.
///
/// {@category Error Handling}
class UnambiguousTimeout extends TimeoutException {
  UnambiguousTimeout([super.context]);

  @override
  String get _name => 'UnambiguousTimeout';
}

/// A feature which is not available was used.
///
/// This primarily can
/// occur if you attempt to perform a query when no query services are enabled
/// on the cluster, or if a newer server feature which is not available in the
/// connected server version is used.
///
/// {@category Error Handling}
class FeatureNotAvailable extends CouchbaseException {
  FeatureNotAvailable([super.context]);

  @override
  String get _name => 'FeatureNotAvailable';
}

/// The referenced scope does not exist.
///
/// {@category Error Handling}
class ScopeNotFound extends CouchbaseException {
  ScopeNotFound([super.context]);

  @override
  String get _name => 'ScopeNotFound';
}

/// The referenced index does not exist.
///
/// {@category Error Handling}
class IndexNotFound extends CouchbaseException {
  IndexNotFound([super.context]);

  @override
  String get _name => 'IndexNotFound';
}

/// A rate limit was exceeded while attempting to
/// execute the operation.
///
/// {@category Error Handling}
class RateLimited extends CouchbaseException {
  RateLimited([super.context]);

  @override
  String get _name => 'RateLimited';
}

/// A quota limit was exceeded while attempting to
/// execute the operation.
///
/// {@category Error Handling}
class QuotaLimited extends CouchbaseException {
  QuotaLimited([super.context]);

  @override
  String get _name => 'QuotaLimited';
}

/// The referenced index already existed, but was expected
/// to not yet exist for the operation.
///
/// {@category Error Handling}
class IndexExists extends CouchbaseException {
  IndexExists([super.context]);

  @override
  String get _name => 'IndexExists';
}

/// The referenced document does not exist.
///
/// {@category Error Handling}
class DocumentNotFound extends CouchbaseException {
  DocumentNotFound([super.context]);

  @override
  String get _name => 'DocumentNotFound';
}

/// The referenced document could not be retrieved.
///
/// {@category Error Handling}
class DocumentUnretrievable extends CouchbaseException {
  DocumentUnretrievable([super.context]);

  @override
  String get _name => 'DocumentUnretrievable';
}

/// The referenced document could not be used as it is currently
/// locked, likely by another actor in the system.
///
/// {@category Error Handling}
class DocumentLocked extends CouchbaseException {
  DocumentLocked([super.context]);

  @override
  String get _name => 'DocumentLocked';
}

/// A value could not be stored as it was too large.
///
/// {@category Error Handling}
class ValueTooLarge extends CouchbaseException {
  ValueTooLarge([super.context]);

  @override
  String get _name => 'ValueTooLarge';
}

/// The referenced document exists already, but the operation
/// was not expecting it to exist.
///
/// {@category Error Handling}
class DocumentExists extends CouchbaseException {
  DocumentExists([super.context]);

  @override
  String get _name => 'DocumentExists';
}

/// A JSON operation was attempted with non-JSON data.
///
/// {@category Error Handling}
class ValueNotJson extends CouchbaseException {
  ValueNotJson([super.context]);

  @override
  String get _name => 'ValueNotJson';
}

/// A durability level which is not available was specified.
///
/// {@category Error Handling}
class DurabilityLevelNotAvailable extends CouchbaseException {
  DurabilityLevelNotAvailable([super.context]);

  @override
  String get _name => 'DurabilityLevelNotAvailable';
}

/// A durability level which is impossible to achieve was
/// specified.
///
/// This can occur when you try to use Majority but there is
/// less than the majority of nodes available.
///
/// {@category Error Handling}
class DurabilityImpossible extends CouchbaseException {
  DurabilityImpossible([super.context]);

  @override
  String get _name => 'DurabilityImpossible';
}

/// The durable operation that was performed has failed
/// ambiguously and may or may not have completed, or may complete in
/// the future.
///
/// {@category Error Handling}
class DurabilityAmbiguous extends CouchbaseException {
  DurabilityAmbiguous([super.context]);

  @override
  String get _name => 'DurabilityAmbiguous';
}

/// A write was failed as an existing durable write against
/// that key is already in progress.
///
/// {@category Error Handling}
class DurableWriteInProgress extends CouchbaseException {
  DurableWriteInProgress([super.context]);

  @override
  String get _name => 'DurableWriteInProgress';
}

/// A write was failed as the server is currently reconstructing
/// it's durable data following a failover.
///
/// {@category Error Handling}
class DurableWriteReCommitInProgress extends CouchbaseException {
  DurableWriteReCommitInProgress([super.context]);

  @override
  String get _name => 'DurableWriteReCommitInProgress';
}

/// A mutation was lost.
///
/// {@category Error Handling}
class MutationLost extends CouchbaseException {
  MutationLost([super.context]);

  @override
  String get _name => 'MutationLost';
}

/// The reference path was not found.
///
/// {@category Error Handling}
class PathNotFound extends CouchbaseException {
  PathNotFound([super.context]);

  @override
  String get _name => 'PathNotFound';
}

/// The referenced path made incorrect assumptions about
/// the structure of a document.
///
/// For instance, attempting to access a field
/// as an object when in fact it is an array.
///
/// {@category Error Handling}
class PathMismatch extends CouchbaseException {
  PathMismatch([super.context]);

  @override
  String get _name => 'PathMismatch';
}

/// The referenced path is not valid.
///
/// {@category Error Handling}
class PathInvalid extends CouchbaseException {
  PathInvalid([super.context]);

  @override
  String get _name => 'PathInvalid';
}

/// The specified path was too large to parse.
///
/// {@category Error Handling}
class PathTooBig extends CouchbaseException {
  PathTooBig([super.context]);

  @override
  String get _name => 'PathTooBig';
}

/// The referenced path was too deep to parse.
///
/// {@category Error Handling}
class PathTooDeep extends CouchbaseException {
  PathTooDeep([super.context]);

  @override
  String get _name => 'PathTooDeep';
}

/// The document created by the operation would become
/// too deep to operate on.
///
/// {@category Error Handling}
class ValueTooDeep extends CouchbaseException {
  ValueTooDeep([super.context]);

  @override
  String get _name => 'ValueTooDeep';
}

/// The value passed is invalid.
///
/// {@category Error Handling}
class ValueInvalid extends CouchbaseException {
  ValueInvalid([super.context]);

  @override
  String get _name => 'ValueInvalid';
}

/// An operation expecting JSON was performed against a document
/// which is not JSON.
///
/// {@category Error Handling}
class DocumentNotJson extends CouchbaseException {
  DocumentNotJson([super.context]);

  @override
  String get _name => 'DocumentNotJson';
}

/// A number has grown too large.
///
/// {@category Error Handling}
class NumberTooBig extends CouchbaseException {
  NumberTooBig([super.context]);

  @override
  String get _name => 'NumberTooBig';
}

/// The delta specified is invalid.
///
/// {@category Error Handling}
class DeltaInvalid extends CouchbaseException {
  DeltaInvalid([super.context]);

  @override
  String get _name => 'DeltaInvalid';
}

/// The reference path already existed, but the operation
/// expected that it did not.
///
/// {@category Error Handling}
class PathExists extends CouchbaseException {
  PathExists([super.context]);

  @override
  String get _name => 'PathExists';
}

/// A macro has been requested which is not recognized by the server.
///
/// {@category Error Handling}
class XattrUnknownMacro extends CouchbaseException {
  XattrUnknownMacro([super.context]);

  @override
  String get _name => 'XattrUnknownMacro';
}

/// More than one XATTR key has been requested.
///
/// This is not supported.
class XattrInvalidKeyCombo extends CouchbaseException {
  XattrInvalidKeyCombo([super.context]);

  @override
  String get _name => 'XattrInvalidKeyCombo';
}

/// A virtual attribute has been requested which is not recognized by the
/// server.
///
/// {@category Error Handling}
class XattrUnknownVirtualAttribute extends CouchbaseException {
  XattrUnknownVirtualAttribute([super.context]);

  @override
  String get _name => 'XattrUnknownVirtualAttribute';
}

/// The virtual attribute cannot be modified.
///
/// {@category Error Handling}
class XattrCannotModifyVirtualAttribute extends CouchbaseException {
  XattrCannotModifyVirtualAttribute([super.context]);

  @override
  String get _name => 'XattrCannotModifyVirtualAttribute';
}

/// An extended attribute cannot be accessed.
///
/// Usually indicates the attribute is a "system attribute" (name starts with
/// underscore).
///
/// {@category Error Handling}
class XattrNoAccess extends CouchbaseException {
  XattrNoAccess([super.context]);

  @override
  String get _name => 'XattrNoAccess';
}

@internal
class CannotReviveLivingDocument extends CouchbaseException {
  CannotReviveLivingDocument([super.context]);

  @override
  String get _name => 'CannotReviveLivingDocument';
}

@internal
class RangeScanCancelled extends CouchbaseException {
  RangeScanCancelled([super.context]);

  @override
  String get _name => 'RangeScanCancelled';
}

@internal
class RangeScanVbUuidNotEqual extends CouchbaseException {
  RangeScanVbUuidNotEqual([super.context]);

  @override
  String get _name => 'RangeScanVbUuidNotEqual';
}

@internal
class RangeScanCompleted extends CouchbaseException {
  RangeScanCompleted([super.context]);

  @override
  String get _name => 'RangeScanCompleted';
}

/// A failure occurred while planning a query.
///
/// {@category Error Handling}
class PlanningFailure extends CouchbaseException {
  PlanningFailure([super.context]);

  @override
  String get _name => 'PlanningFailure';
}

/// A failure occurred while querying an index.
///
/// {@category Error Handling}
class IndexFailure extends CouchbaseException {
  IndexFailure([super.context]);

  @override
  String get _name => 'IndexFailure';
}

/// An error occurred with a prepared statement.
///
/// {@category Error Handling}
class PreparedStatementFailure extends CouchbaseException {
  PreparedStatementFailure([super.context]);

  @override
  String get _name => 'PreparedStatementFailure';
}

/// A generic DML error occurred with a query.
///
/// {@category Error Handling}
class DmlFailure extends CouchbaseException {
  DmlFailure([super.context]);

  @override
  String get _name => 'DmlFailure';
}

/// The index was not ready yet.
///
/// {@category Error Handling}
class IndexNotReady extends CouchbaseException {
  IndexNotReady([super.context]);

  @override
  String get _name => 'IndexNotReady';
}

@internal
class ConsistencyMismatch extends CouchbaseException {
  ConsistencyMismatch([super.context]);

  @override
  String get _name => 'ConsistencyMismatch';
}

/// An error occurred while compiling a query.
///
/// {@category Error Handling}
class CompilationFailure extends CouchbaseException {
  CompilationFailure([super.context]);

  @override
  String get _name => 'CompilationFailure';
}

/// The job queue for the service was full and further requests will
/// be rejected for a period of time until the queue shrinks.
///
/// {@category Error Handling}
class JobQueueFull extends CouchbaseException {
  JobQueueFull([super.context]);

  @override
  String get _name => 'JobQueueFull';
}

/// The referenced dataset does not exist.
///
/// {@category Error Handling}
class DatasetNotFound extends CouchbaseException {
  DatasetNotFound([super.context]);

  @override
  String get _name => 'DatasetNotFound';
}

/// The referenced dataverse does not exist.
///
/// {@category Error Handling}
class DataverseNotFound extends CouchbaseException {
  DataverseNotFound([super.context]);

  @override
  String get _name => 'DataverseNotFound';
}

/// The referenced dataset already exists, but the operation
/// expected that it did not.
///
/// {@category Error Handling}
class DatasetExists extends CouchbaseException {
  DatasetExists([super.context]);

  @override
  String get _name => 'DatasetExists';
}

/// The referenced dataverse already exists, but the operation
/// expected that it did not.
///
/// {@category Error Handling}
class DataverseExists extends CouchbaseException {
  DataverseExists([super.context]);

  @override
  String get _name => 'DataverseExists';
}

/// The referenced link does not exist.
///
/// {@category Error Handling}
class LinkNotFound extends CouchbaseException {
  LinkNotFound([super.context]);

  @override
  String get _name => 'LinkNotFound';
}

/// The link already exists.
///
/// {@category Error Handling}
class LinkExists extends CouchbaseException {
  LinkExists([super.context]);

  @override
  String get _name => 'LinkExists';
}

/// The referenced view does not exist.
///
/// {@category Error Handling}
class ViewNotFound extends CouchbaseException {
  ViewNotFound([super.context]);

  @override
  String get _name => 'ViewNotFound';
}

/// The referenced design document does not exist.
///
/// {@category Error Handling}
class DesignDocumentNotFound extends CouchbaseException {
  DesignDocumentNotFound([super.context]);

  @override
  String get _name => 'DesignDocumentNotFound';
}

/// The referenced collection already exists, but the operation
/// expected that it did not.
///
/// {@category Error Handling}
class CollectionExists extends CouchbaseException {
  CollectionExists([super.context]);

  @override
  String get _name => 'CollectionExists';
}

/// The referenced scope already exists, but the operation
/// expected that it did not.
///
/// {@category Error Handling}
class ScopeExists extends CouchbaseException {
  ScopeExists([super.context]);

  @override
  String get _name => 'ScopeExists';
}

/// The referenced user does not exist.
///
/// {@category Error Handling}
class UserNotFound extends CouchbaseException {
  UserNotFound([super.context]);

  @override
  String get _name => 'UserNotFound';
}

/// The referenced group does not exist.
///
/// {@category Error Handling}
class GroupNotFound extends CouchbaseException {
  GroupNotFound([super.context]);

  @override
  String get _name => 'GroupNotFound';
}

/// The referenced bucket already exists, but the operation
/// expected it to not exist.
///
/// {@category Error Handling}
class BucketExists extends CouchbaseException {
  BucketExists([super.context]);

  @override
  String get _name => 'BucketExists';
}

/// The referenced user already exists, but the operation
/// expected it to not exist.
///
/// {@category Error Handling}
class UserExists extends CouchbaseException {
  UserExists([super.context]);

  @override
  String get _name => 'UserExists';
}

/// The bucket could not be flushed due to not having the flush
/// option enabled.
///
/// This option can be dynamically adjusted.
///
/// {@category Error Handling}
class BucketNotFlushable extends CouchbaseException {
  BucketNotFlushable([super.context]);

  @override
  String get _name => 'BucketNotFlushable';
}

/// The referenced eventing function does not exist.
///
/// {@category Error Handling}
class EventingFunctionNotFound extends CouchbaseException {
  EventingFunctionNotFound([super.context]);

  @override
  String get _name => 'EventingFunctionNotFound';
}

/// The referenced eventing function was not deployed but was
/// expected to have been.
///
/// {@category Error Handling}
class EventingFunctionNotDeployed extends CouchbaseException {
  EventingFunctionNotDeployed([super.context]);

  @override
  String get _name => 'EventingFunctionNotDeployed';
}

/// The eventing function was not able to be compiled.
///
/// {@category Error Handling}
class EventingFunctionCompilationFailure extends CouchbaseException {
  EventingFunctionCompilationFailure([super.context]);

  @override
  String get _name => 'EventingFunctionCompilationFailure';
}

/// The source and metadata keyspaces both referenced the same
/// place for an eventing function.
///
/// {@category Error Handling}
class EventingFunctionIdenticalKeyspace extends CouchbaseException {
  EventingFunctionIdenticalKeyspace([super.context]);

  @override
  String get _name => 'EventingFunctionIdenticalKeyspace';
}

/// An eventing function was deployed but has not yet fully
/// completed the bootstrapping process.
///
/// {@category Error Handling}
class EventingFunctionNotBootstrapped extends CouchbaseException {
  EventingFunctionNotBootstrapped([super.context]);

  @override
  String get _name => 'EventingFunctionNotBootstrapped';
}

/// An eventing function is deployed but the operation expected
/// that it was not.
///
/// {@category Error Handling}
class EventingFunctionDeployed extends CouchbaseException {
  EventingFunctionDeployed([super.context]);

  @override
  String get _name => 'EventingFunctionDeployed';
}

/// An eventing function is paused but the operation expected
/// that it was not.
///
/// {@category Error Handling}
class EventingFunctionPaused extends CouchbaseException {
  EventingFunctionPaused([super.context]);

  @override
  String get _name => 'EventingFunctionPaused';
}

/// A transaction operation failed to complete.
///
/// {@category Error Handling}
class TransactionOperationFailed extends CouchbaseException {
  TransactionOperationFailed([super.context]);

  @override
  String get _name => 'TransactionOperationFailed';
}

/// A transaction failed to complete.
///
/// {@category Error Handling}
class TransactionFailed extends CouchbaseException {
  TransactionFailed([super.context]);

  @override
  String get _name => 'TransactionFailed';
}

/// A transaction failed to complete due to expiring.
///
/// {@category Error Handling}
class TransactionExpired extends CouchbaseException {
  TransactionExpired([super.context]);

  @override
  String get _name => 'TransactionExpired';
}

/// The state of a transaction ended as ambiguous and may or
/// may not have committed successfully.
///
/// {@category Error Handling}
class TransactionCommitAmbiguous extends CouchbaseException {
  TransactionCommitAmbiguous([super.context]);

  @override
  String get _name => 'TransactionCommitAmbiguous';
}

CouchbaseException convertMessageError(Object error) {
  final errorCode = _resolveErrorCode(error);
  final context = _resolveErrorContext(error);

  switch (CommonErrorCode.byValue(errorCode.code)) {
    case null:
      break;
    case CommonErrorCode.requestCanceled:
      return RequestCanceled(context);
    case CommonErrorCode.invalidArgument:
      return InvalidArgument(context);
    case CommonErrorCode.serviceNotAvailable:
      return ServiceNotAvailable(context);
    case CommonErrorCode.internalServerFailure:
      return InternalServerFailure(context);
    case CommonErrorCode.authenticationFailure:
      return AuthenticationFailure(context);
    case CommonErrorCode.temporaryFailure:
      return TemporaryFailure(context);
    case CommonErrorCode.parsingFailure:
      return ParsingFailure(context);
    case CommonErrorCode.casMismatch:
      return CasMismatch(context);
    case CommonErrorCode.bucketNotFound:
      return BucketNotFound(context);
    case CommonErrorCode.collectionNotFound:
      return CollectionNotFound(context);
    case CommonErrorCode.unsupportedOperation:
      return UnsupportedOperation(context);
    case CommonErrorCode.unambiguousTimeout:
      return UnambiguousTimeout(context);
    case CommonErrorCode.ambiguousTimeout:
      return AmbiguousTimeout(context);
    case CommonErrorCode.featureNotAvailable:
      return FeatureNotAvailable(context);
    case CommonErrorCode.scopeNotFound:
      return ScopeNotFound(context);
    case CommonErrorCode.indexNotFound:
      return IndexNotFound(context);
    case CommonErrorCode.indexExists:
      return IndexExists(context);
    case CommonErrorCode.decodingFailure:
      return DecodingFailure(context);
    case CommonErrorCode.rateLimited:
      return RateLimited(context);
    case CommonErrorCode.quotaLimited:
      return QuotaLimited(context);
    case CommonErrorCode.encodingFailure:
      return EncodingFailure(context);
  }

  switch (KeyValueErrorCode.byValue(errorCode.code)) {
    case null:
      break;
    case KeyValueErrorCode.documentNotFound:
      return DocumentNotFound(context);
    case KeyValueErrorCode.documentIrretrievable:
      return DocumentUnretrievable(context);
    case KeyValueErrorCode.documentLocked:
      return DocumentLocked(context);
    case KeyValueErrorCode.valueTooLarge:
      return ValueTooLarge(context);
    case KeyValueErrorCode.documentExists:
      return DocumentExists(context);
    case KeyValueErrorCode.durabilityLevelNotAvailable:
      return DurabilityLevelNotAvailable(context);
    case KeyValueErrorCode.durabilityImpossible:
      return DurabilityImpossible(context);
    case KeyValueErrorCode.durabilityAmbiguous:
      return DurabilityAmbiguous(context);
    case KeyValueErrorCode.durableWriteInProgress:
      return DurableWriteInProgress(context);
    case KeyValueErrorCode.durableWriteReCommitInProgress:
      return DurableWriteReCommitInProgress(context);
    case KeyValueErrorCode.pathNotFound:
      return PathNotFound(context);
    case KeyValueErrorCode.pathMismatch:
      return PathMismatch(context);
    case KeyValueErrorCode.pathInvalid:
      return PathInvalid(context);
    case KeyValueErrorCode.pathTooBig:
      return PathTooBig(context);
    case KeyValueErrorCode.pathTooDeep:
      return PathTooDeep(context);
    case KeyValueErrorCode.valueTooDeep:
      return ValueTooDeep(context);
    case KeyValueErrorCode.valueInvalid:
      return ValueInvalid(context);
    case KeyValueErrorCode.documentNotJson:
      return DocumentNotJson(context);
    case KeyValueErrorCode.numberTooBig:
      return NumberTooBig(context);
    case KeyValueErrorCode.deltaInvalid:
      return DeltaInvalid(context);
    case KeyValueErrorCode.pathExists:
      return PathExists(context);
    case KeyValueErrorCode.xattrUnknownMacro:
      return XattrUnknownMacro(context);
    case KeyValueErrorCode.xattrInvalidKeyCombo:
      return XattrInvalidKeyCombo(context);
    case KeyValueErrorCode.xattrUnknownVirtualAttribute:
      return XattrUnknownVirtualAttribute(context);
    case KeyValueErrorCode.xattrCannotModifyVirtualAttribute:
      return XattrCannotModifyVirtualAttribute(context);
    case KeyValueErrorCode.xattrNoAccess:
      return XattrNoAccess(context);
    case KeyValueErrorCode.cannotReviveLivingDocument:
      return CannotReviveLivingDocument(context);
    case KeyValueErrorCode.rangeScanCancelled:
      return RangeScanCancelled(context);
    case KeyValueErrorCode.rangeScanVbUuidNotEqual:
      return RangeScanVbUuidNotEqual(context);
    case KeyValueErrorCode.rangeScanCompleted:
      return RangeScanCompleted(context);
  }

  switch (QueryErrorCode.byValue(errorCode.code)) {
    case null:
      break;
    case QueryErrorCode.planningFailure:
      return PlanningFailure(context);
    case QueryErrorCode.indexFailure:
      return IndexFailure(context);
    case QueryErrorCode.preparedStatementFailure:
      return PreparedStatementFailure(context);
    case QueryErrorCode.dmlFailure:
      return DmlFailure(context);
  }

  switch (AnalyticsErrorCode.byValue(errorCode.code)) {
    case null:
      break;
    case AnalyticsErrorCode.compilationFailure:
      return CompilationFailure(context);
    case AnalyticsErrorCode.jobQueueFull:
      return JobQueueFull(context);
    case AnalyticsErrorCode.datasetNotFound:
      return DatasetNotFound(context);
    case AnalyticsErrorCode.dataverseNotFound:
      return DataverseNotFound(context);
    case AnalyticsErrorCode.datasetExists:
      return DatasetExists(context);
    case AnalyticsErrorCode.dataverseExists:
      return DataverseExists(context);
    case AnalyticsErrorCode.linkNotFound:
      return LinkNotFound(context);
    case AnalyticsErrorCode.linkExists:
      return LinkExists(context);
  }

  switch (SearchErrorCode.byValue(errorCode.code)) {
    case null:
      break;
    case SearchErrorCode.indexNotReady:
      return IndexNotReady(context);
    case SearchErrorCode.consistencyMismatch:
      return ConsistencyMismatch(context);
  }

  switch (ViewErrorCode.byValue(errorCode.code)) {
    case null:
      break;
    case ViewErrorCode.viewNotFound:
      return ViewNotFound(context);
    case ViewErrorCode.designDocumentNotFound:
      return DesignDocumentNotFound(context);
  }

  switch (ManagementErrorCode.byValue(errorCode.code)) {
    case null:
      break;
    case ManagementErrorCode.collectionExists:
      return CollectionExists(context);
    case ManagementErrorCode.scopeExists:
      return ScopeExists(context);
    case ManagementErrorCode.userNotFound:
      return UserNotFound(context);
    case ManagementErrorCode.groupNotFound:
      return GroupNotFound(context);
    case ManagementErrorCode.bucketExists:
      return BucketExists(context);
    case ManagementErrorCode.userExists:
      return UserExists(context);
    case ManagementErrorCode.bucketNotFlushable:
      return BucketNotFlushable(context);
    case ManagementErrorCode.eventingFunctionNotFound:
      return EventingFunctionNotFound(context);
    case ManagementErrorCode.eventingFunctionNotDeployed:
      return EventingFunctionNotDeployed(context);
    case ManagementErrorCode.eventingFunctionCompilationFailure:
      return EventingFunctionCompilationFailure(context);
    case ManagementErrorCode.eventingFunctionIdenticalKeyspace:
      return EventingFunctionIdenticalKeyspace(context);
    case ManagementErrorCode.eventingFunctionNotBootstrapped:
      return EventingFunctionNotBootstrapped(context);
    case ManagementErrorCode.eventingFunctionDeployed:
      return EventingFunctionDeployed(context);
    case ManagementErrorCode.eventingFunctionPaused:
      return EventingFunctionPaused(context);
  }

  throw UnimplementedError(
    'Error code ${errorCode.code} (${errorCode.message}) not implemented.',
  );
}

message_errors.ErrorCode _resolveErrorCode(Object error) {
  if (error is message_errors.ErrorCode) {
    return error;
  } else if (error is message_errors.KeyValueErrorContext) {
    return error.code;
  } else if (error is message_errors.ViewErrorContext) {
    return error.code;
  } else if (error is message_errors.QueryErrorContext) {
    return error.code;
  } else if (error is message_errors.SearchErrorContext) {
    return error.code;
  } else if (error is message_errors.AnalyticsErrorContext) {
    return error.code;
  } else if (error is message_errors.HttpErrorContext) {
    return error.code;
  } else {
    throw UnimplementedError('Could not resolve error code from $error.');
  }
}

ErrorContext? _resolveErrorContext(Object error) {
  if (error is message_errors.KeyValueErrorContext) {
    return error.toApi();
  }
  // TODO: SubdocumentErrorContext
  if (error is message_errors.ViewErrorContext) {
    return error.toApi();
  }
  if (error is message_errors.QueryErrorContext) {
    return error.toApi();
  }
  if (error is message_errors.SearchErrorContext) {
    return error.toApi();
  }
  if (error is message_errors.AnalyticsErrorContext) {
    return error.toApi();
  }
  if (error is message_errors.HttpErrorContext) {
    return error.toApi();
  }
  return null;
}
