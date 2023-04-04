// GENERATED CODE - DO NOT MODIFY BY HAND
import 'dart:typed_data';

import 'message_basic.dart';
import 'message_buffer.dart';
import 'message_errors.dart';

enum CouchbaseLinkEncryptionLevel {
  none(0),
  half(1),
  full(2),
  ;

  const CouchbaseLinkEncryptionLevel(this.value);

  factory CouchbaseLinkEncryptionLevel.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return none;
      case 1:
        return half;
      case 2:
        return full;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static CouchbaseLinkEncryptionLevel? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum BucketType {
  unknown(0),
  couchbase(1),
  memcached(2),
  ephemeral(3),
  ;

  const BucketType(this.value);

  factory BucketType.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return unknown;
      case 1:
        return couchbase;
      case 2:
        return memcached;
      case 3:
        return ephemeral;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static BucketType? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum BucketCompression {
  unknown(0),
  off(1),
  active(2),
  passive(3),
  ;

  const BucketCompression(this.value);

  factory BucketCompression.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return unknown;
      case 1:
        return off;
      case 2:
        return active;
      case 3:
        return passive;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static BucketCompression? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum BucketEvictionPolicy {
  unknown(0),
  full(1),
  valueOnly(2),
  noEviction(3),
  notRecentlyUsed(4),
  ;

  const BucketEvictionPolicy(this.value);

  factory BucketEvictionPolicy.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return unknown;
      case 1:
        return full;
      case 2:
        return valueOnly;
      case 3:
        return noEviction;
      case 4:
        return notRecentlyUsed;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static BucketEvictionPolicy? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum BucketConflictResolution {
  unknown(0),
  timestamp(1),
  sequenceNumber(2),
  custom(3),
  ;

  const BucketConflictResolution(this.value);

  factory BucketConflictResolution.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return unknown;
      case 1:
        return timestamp;
      case 2:
        return sequenceNumber;
      case 3:
        return custom;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static BucketConflictResolution? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum BucketStorageBackend {
  unknown(0),
  couchstore(1),
  magma(2),
  ;

  const BucketStorageBackend(this.value);

  factory BucketStorageBackend.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return unknown;
      case 1:
        return couchstore;
      case 2:
        return magma;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static BucketStorageBackend? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FunctionDcpBoundary {
  everything(0),
  fromNow(1),
  ;

  const FunctionDcpBoundary(this.value);

  factory FunctionDcpBoundary.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return everything;
      case 1:
        return fromNow;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FunctionDcpBoundary? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FunctionLanguageCompatibility {
  version600(0),
  version650(1),
  version662(2),
  ;

  const FunctionLanguageCompatibility(this.value);

  factory FunctionLanguageCompatibility.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return version600;
      case 1:
        return version650;
      case 2:
        return version662;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FunctionLanguageCompatibility? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FunctionLogLevel {
  info(0),
  error(1),
  warning(2),
  debug(3),
  trace(4),
  ;

  const FunctionLogLevel(this.value);

  factory FunctionLogLevel.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return info;
      case 1:
        return error;
      case 2:
        return warning;
      case 3:
        return debug;
      case 4:
        return trace;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FunctionLogLevel? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FunctionBucketAccess {
  readOnly(0),
  readWrite(1),
  ;

  const FunctionBucketAccess(this.value);

  factory FunctionBucketAccess.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return readOnly;
      case 1:
        return readWrite;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FunctionBucketAccess? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FunctionStatus {
  undeployed(0),
  undeploying(1),
  deploying(2),
  deployed(3),
  paused(4),
  pausing(5),
  ;

  const FunctionStatus(this.value);

  factory FunctionStatus.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return undeployed;
      case 1:
        return undeploying;
      case 2:
        return deploying;
      case 3:
        return deployed;
      case 4:
        return paused;
      case 5:
        return pausing;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FunctionStatus? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FunctionDeploymentStatus {
  deployed(0),
  undeployed(1),
  ;

  const FunctionDeploymentStatus(this.value);

  factory FunctionDeploymentStatus.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return deployed;
      case 1:
        return undeployed;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FunctionDeploymentStatus? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FunctionProcessingStatus {
  running(0),
  paused(1),
  ;

  const FunctionProcessingStatus(this.value);

  factory FunctionProcessingStatus.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return running;
      case 1:
        return paused;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FunctionProcessingStatus? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum AuthDomain {
  unknown(0),
  local(1),
  external(2),
  ;

  const AuthDomain(this.value);

  factory AuthDomain.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return unknown;
      case 1:
        return local;
      case 2:
        return external;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static AuthDomain? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum RetryReason {
  doNotRetry(0),
  unknown(1),
  socketNotAvailable(2),
  serviceNotAvailable(3),
  nodeNotAvailable(4),
  keyValueNotMyVbucket(5),
  keyValueCollectionOutdated(6),
  keyValueErrorMapRetryIndicated(7),
  keyValueLocked(8),
  keyValueTemporaryFailure(9),
  keyValueSyncWriteInProgress(10),
  keyValueSyncWriteReCommitInProgress(11),
  serviceResponseCodeIndicated(12),
  socketClosedWhileInFlight(13),
  circuitBreakerOpen(14),
  queryPreparedStatementFailure(15),
  queryIndexNotFound(16),
  analyticsTemporaryFailure(17),
  searchTooManyRequests(18),
  viewsTemporaryFailure(19),
  viewsNoActivePartition(20),
  ;

  const RetryReason(this.value);

  factory RetryReason.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return doNotRetry;
      case 1:
        return unknown;
      case 2:
        return socketNotAvailable;
      case 3:
        return serviceNotAvailable;
      case 4:
        return nodeNotAvailable;
      case 5:
        return keyValueNotMyVbucket;
      case 6:
        return keyValueCollectionOutdated;
      case 7:
        return keyValueErrorMapRetryIndicated;
      case 8:
        return keyValueLocked;
      case 9:
        return keyValueTemporaryFailure;
      case 10:
        return keyValueSyncWriteInProgress;
      case 11:
        return keyValueSyncWriteReCommitInProgress;
      case 12:
        return serviceResponseCodeIndicated;
      case 13:
        return socketClosedWhileInFlight;
      case 14:
        return circuitBreakerOpen;
      case 15:
        return queryPreparedStatementFailure;
      case 16:
        return queryIndexNotFound;
      case 17:
        return analyticsTemporaryFailure;
      case 18:
        return searchTooManyRequests;
      case 19:
        return viewsTemporaryFailure;
      case 20:
        return viewsNoActivePartition;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static RetryReason? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum SubdocOpcode {
  getDoc(0),
  setDoc(1),
  removeDoc(4),
  get(197),
  exists(198),
  dictAdd(199),
  dictUpsert(200),
  remove(201),
  replace(202),
  arrayPushLast(203),
  arrayPushFirst(204),
  arrayInsert(205),
  arrayAddUnique(206),
  counter(207),
  getCount(210),
  replaceBodyWithXattr(211),
  ;

  const SubdocOpcode(this.value);

  factory SubdocOpcode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return getDoc;
      case 1:
        return setDoc;
      case 4:
        return removeDoc;
      case 197:
        return get;
      case 198:
        return exists;
      case 199:
        return dictAdd;
      case 200:
        return dictUpsert;
      case 201:
        return remove;
      case 202:
        return replace;
      case 203:
        return arrayPushLast;
      case 204:
        return arrayPushFirst;
      case 205:
        return arrayInsert;
      case 206:
        return arrayAddUnique;
      case 207:
        return counter;
      case 210:
        return getCount;
      case 211:
        return replaceBodyWithXattr;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static SubdocOpcode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum AnalyticsScanConsistency {
  notBounded(0),
  requestPlus(1),
  ;

  const AnalyticsScanConsistency(this.value);

  factory AnalyticsScanConsistency.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return notBounded;
      case 1:
        return requestPlus;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static AnalyticsScanConsistency? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum DesignDocumentNamespace {
  development(0),
  production(1),
  ;

  const DesignDocumentNamespace(this.value);

  factory DesignDocumentNamespace.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return development;
      case 1:
        return production;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static DesignDocumentNamespace? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ClusterState {
  online(0),
  degraded(1),
  offline(2),
  ;

  const ClusterState(this.value);

  factory ClusterState.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return online;
      case 1:
        return degraded;
      case 2:
        return offline;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ClusterState? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum EndpointState {
  disconnected(0),
  connecting(1),
  connected(2),
  disconnecting(3),
  ;

  const EndpointState(this.value);

  factory EndpointState.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return disconnected;
      case 1:
        return connecting;
      case 2:
        return connected;
      case 3:
        return disconnecting;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static EndpointState? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum PingState {
  ok(0),
  timeout(1),
  error(2),
  ;

  const PingState(this.value);

  factory PingState.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return ok;
      case 1:
        return timeout;
      case 2:
        return error;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static PingState? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum QueryProfile {
  off(0),
  phases(1),
  timings(2),
  ;

  const QueryProfile(this.value);

  factory QueryProfile.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return off;
      case 1:
        return phases;
      case 2:
        return timings;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static QueryProfile? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum QueryScanConsistency {
  notBounded(0),
  requestPlus(1),
  ;

  const QueryScanConsistency(this.value);

  factory QueryScanConsistency.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return notBounded;
      case 1:
        return requestPlus;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static QueryScanConsistency? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum SearchHighlightStyle {
  html(0),
  ansi(1),
  ;

  const SearchHighlightStyle(this.value);

  factory SearchHighlightStyle.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return html;
      case 1:
        return ansi;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static SearchHighlightStyle? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum SearchScanConsistency {
  notBounded(0),
  ;

  const SearchScanConsistency(this.value);

  factory SearchScanConsistency.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return notBounded;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static SearchScanConsistency? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ServiceType {
  keyValue(0),
  query(1),
  analytics(2),
  search(3),
  view(4),
  management(5),
  eventing(6),
  ;

  const ServiceType(this.value);

  factory ServiceType.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return keyValue;
      case 1:
        return query;
      case 2:
        return analytics;
      case 3:
        return search;
      case 4:
        return view;
      case 5:
        return management;
      case 6:
        return eventing;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ServiceType? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ViewOnError {
  resume(0),
  stop(1),
  ;

  const ViewOnError(this.value);

  factory ViewOnError.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return resume;
      case 1:
        return stop;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ViewOnError? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ViewScanConsistency {
  notBounded(0),
  updateAfter(1),
  requestPlus(2),
  ;

  const ViewScanConsistency(this.value);

  factory ViewScanConsistency.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return notBounded;
      case 1:
        return updateAfter;
      case 2:
        return requestPlus;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ViewScanConsistency? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ViewSortOrder {
  ascending(0),
  descending(1),
  ;

  const ViewSortOrder(this.value);

  factory ViewSortOrder.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return ascending;
      case 1:
        return descending;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ViewSortOrder? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum AnalyticsStatus {
  running(0),
  success(1),
  errors(2),
  completed(3),
  stopped(4),
  timedout(5),
  closed(6),
  fatal(7),
  aborted(8),
  unknown(9),
  ;

  const AnalyticsStatus(this.value);

  factory AnalyticsStatus.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return running;
      case 1:
        return success;
      case 2:
        return errors;
      case 3:
        return completed;
      case 4:
        return stopped;
      case 5:
        return timedout;
      case 6:
        return closed;
      case 7:
        return fatal;
      case 8:
        return aborted;
      case 9:
        return unknown;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static AnalyticsStatus? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum DurabilityLevel {
  none(0),
  majority(1),
  majorityAndPersistToActive(2),
  persistToMajority(3),
  ;

  const DurabilityLevel(this.value);

  factory DurabilityLevel.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return none;
      case 1:
        return majority;
      case 2:
        return majorityAndPersistToActive;
      case 3:
        return persistToMajority;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static DurabilityLevel? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum CommonErrorCode {
  requestCanceled(2),
  invalidArgument(3),
  serviceNotAvailable(4),
  internalServerFailure(5),
  authenticationFailure(6),
  temporaryFailure(7),
  parsingFailure(8),
  casMismatch(9),
  bucketNotFound(10),
  collectionNotFound(11),
  unsupportedOperation(12),
  ambiguousTimeout(13),
  unambiguousTimeout(14),
  featureNotAvailable(15),
  scopeNotFound(16),
  indexNotFound(17),
  indexExists(18),
  encodingFailure(19),
  decodingFailure(20),
  rateLimited(21),
  quotaLimited(22),
  ;

  const CommonErrorCode(this.value);

  factory CommonErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 2:
        return requestCanceled;
      case 3:
        return invalidArgument;
      case 4:
        return serviceNotAvailable;
      case 5:
        return internalServerFailure;
      case 6:
        return authenticationFailure;
      case 7:
        return temporaryFailure;
      case 8:
        return parsingFailure;
      case 9:
        return casMismatch;
      case 10:
        return bucketNotFound;
      case 11:
        return collectionNotFound;
      case 12:
        return unsupportedOperation;
      case 13:
        return ambiguousTimeout;
      case 14:
        return unambiguousTimeout;
      case 15:
        return featureNotAvailable;
      case 16:
        return scopeNotFound;
      case 17:
        return indexNotFound;
      case 18:
        return indexExists;
      case 19:
        return encodingFailure;
      case 20:
        return decodingFailure;
      case 21:
        return rateLimited;
      case 22:
        return quotaLimited;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static CommonErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum KeyValueErrorCode {
  documentNotFound(101),
  documentIrretrievable(102),
  documentLocked(103),
  valueTooLarge(104),
  documentExists(105),
  durabilityLevelNotAvailable(107),
  durabilityImpossible(108),
  durabilityAmbiguous(109),
  durableWriteInProgress(110),
  durableWriteReCommitInProgress(111),
  pathNotFound(113),
  pathMismatch(114),
  pathInvalid(115),
  pathTooBig(116),
  pathTooDeep(117),
  valueTooDeep(118),
  valueInvalid(119),
  documentNotJson(120),
  numberTooBig(121),
  deltaInvalid(122),
  pathExists(123),
  xattrUnknownMacro(124),
  xattrInvalidKeyCombo(126),
  xattrUnknownVirtualAttribute(127),
  xattrCannotModifyVirtualAttribute(128),
  xattrNoAccess(130),
  cannotReviveLivingDocument(131),
  rangeScanCancelled(132),
  rangeScanVbUuidNotEqual(133),
  rangeScanCompleted(134),
  ;

  const KeyValueErrorCode(this.value);

  factory KeyValueErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 101:
        return documentNotFound;
      case 102:
        return documentIrretrievable;
      case 103:
        return documentLocked;
      case 104:
        return valueTooLarge;
      case 105:
        return documentExists;
      case 107:
        return durabilityLevelNotAvailable;
      case 108:
        return durabilityImpossible;
      case 109:
        return durabilityAmbiguous;
      case 110:
        return durableWriteInProgress;
      case 111:
        return durableWriteReCommitInProgress;
      case 113:
        return pathNotFound;
      case 114:
        return pathMismatch;
      case 115:
        return pathInvalid;
      case 116:
        return pathTooBig;
      case 117:
        return pathTooDeep;
      case 118:
        return valueTooDeep;
      case 119:
        return valueInvalid;
      case 120:
        return documentNotJson;
      case 121:
        return numberTooBig;
      case 122:
        return deltaInvalid;
      case 123:
        return pathExists;
      case 124:
        return xattrUnknownMacro;
      case 126:
        return xattrInvalidKeyCombo;
      case 127:
        return xattrUnknownVirtualAttribute;
      case 128:
        return xattrCannotModifyVirtualAttribute;
      case 130:
        return xattrNoAccess;
      case 131:
        return cannotReviveLivingDocument;
      case 132:
        return rangeScanCancelled;
      case 133:
        return rangeScanVbUuidNotEqual;
      case 134:
        return rangeScanCompleted;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static KeyValueErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum QueryErrorCode {
  planningFailure(201),
  indexFailure(202),
  preparedStatementFailure(203),
  dmlFailure(204),
  ;

  const QueryErrorCode(this.value);

  factory QueryErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 201:
        return planningFailure;
      case 202:
        return indexFailure;
      case 203:
        return preparedStatementFailure;
      case 204:
        return dmlFailure;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static QueryErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum AnalyticsErrorCode {
  compilationFailure(301),
  jobQueueFull(302),
  datasetNotFound(303),
  dataverseNotFound(304),
  datasetExists(305),
  dataverseExists(306),
  linkNotFound(307),
  linkExists(308),
  ;

  const AnalyticsErrorCode(this.value);

  factory AnalyticsErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 301:
        return compilationFailure;
      case 302:
        return jobQueueFull;
      case 303:
        return datasetNotFound;
      case 304:
        return dataverseNotFound;
      case 305:
        return datasetExists;
      case 306:
        return dataverseExists;
      case 307:
        return linkNotFound;
      case 308:
        return linkExists;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static AnalyticsErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum SearchErrorCode {
  indexNotReady(401),
  consistencyMismatch(402),
  ;

  const SearchErrorCode(this.value);

  factory SearchErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 401:
        return indexNotReady;
      case 402:
        return consistencyMismatch;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static SearchErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ViewErrorCode {
  viewNotFound(501),
  designDocumentNotFound(502),
  ;

  const ViewErrorCode(this.value);

  factory ViewErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 501:
        return viewNotFound;
      case 502:
        return designDocumentNotFound;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ViewErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ManagementErrorCode {
  collectionExists(601),
  scopeExists(602),
  userNotFound(603),
  groupNotFound(604),
  bucketExists(605),
  userExists(606),
  bucketNotFlushable(607),
  eventingFunctionNotFound(608),
  eventingFunctionNotDeployed(609),
  eventingFunctionCompilationFailure(610),
  eventingFunctionIdenticalKeyspace(611),
  eventingFunctionNotBootstrapped(612),
  eventingFunctionDeployed(613),
  eventingFunctionPaused(614),
  ;

  const ManagementErrorCode(this.value);

  factory ManagementErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 601:
        return collectionExists;
      case 602:
        return scopeExists;
      case 603:
        return userNotFound;
      case 604:
        return groupNotFound;
      case 605:
        return bucketExists;
      case 606:
        return userExists;
      case 607:
        return bucketNotFlushable;
      case 608:
        return eventingFunctionNotFound;
      case 609:
        return eventingFunctionNotDeployed;
      case 610:
        return eventingFunctionCompilationFailure;
      case 611:
        return eventingFunctionIdenticalKeyspace;
      case 612:
        return eventingFunctionNotBootstrapped;
      case 613:
        return eventingFunctionDeployed;
      case 614:
        return eventingFunctionPaused;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ManagementErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum FieldLevelEncryptionErrorCode {
  genericCryptographyFailure(700),
  encryptionFailure(701),
  decryptionFailure(702),
  cryptoKeyNotFound(703),
  invalidCryptoKey(704),
  decrypterNotFound(705),
  encrypterNotFound(706),
  invalidCiphertext(707),
  ;

  const FieldLevelEncryptionErrorCode(this.value);

  factory FieldLevelEncryptionErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 700:
        return genericCryptographyFailure;
      case 701:
        return encryptionFailure;
      case 702:
        return decryptionFailure;
      case 703:
        return cryptoKeyNotFound;
      case 704:
        return invalidCryptoKey;
      case 705:
        return decrypterNotFound;
      case 706:
        return encrypterNotFound;
      case 707:
        return invalidCiphertext;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static FieldLevelEncryptionErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum NetworkErrorCode {
  resolveFailure(1001),
  noEndpointsLeft(1002),
  handshakeFailure(1003),
  protocolError(1004),
  configurationNotAvailable(1005),
  clusterClosed(1006),
  endOfStream(1007),
  needMoreData(1008),
  operationQueueClosed(1009),
  operationQueueFull(1010),
  requestAlreadyQueued(1011),
  requestCancelled(1012),
  bucketClosed(1013),
  ;

  const NetworkErrorCode(this.value);

  factory NetworkErrorCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 1001:
        return resolveFailure;
      case 1002:
        return noEndpointsLeft;
      case 1003:
        return handshakeFailure;
      case 1004:
        return protocolError;
      case 1005:
        return configurationNotAvailable;
      case 1006:
        return clusterClosed;
      case 1007:
        return endOfStream;
      case 1008:
        return needMoreData;
      case 1009:
        return operationQueueClosed;
      case 1010:
        return operationQueueFull;
      case 1011:
        return requestAlreadyQueued;
      case 1012:
        return requestCancelled;
      case 1013:
        return bucketClosed;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static NetworkErrorCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum KeyValueStatusCode {
  success(0),
  notFound(1),
  exists(2),
  tooBig(3),
  invalid(4),
  notStored(5),
  deltaBadValue(6),
  notMyVbucket(7),
  noBucket(8),
  dcpStreamNotFound(10),
  opaqueNoMatch(11),
  locked(9),
  authStale(31),
  authError(32),
  authContinue(33),
  rangeError(34),
  rollback(35),
  noAccess(36),
  notInitialized(37),
  rateLimitedNetworkIngress(48),
  rateLimitedNetworkEgress(49),
  rateLimitedMaxConnections(50),
  rateLimitedMaxCommands(51),
  scopeSizeLimitExceeded(52),
  unknownFrameInfo(128),
  unknownCommand(129),
  noMemory(130),
  notSupported(131),
  internal(132),
  busy(133),
  temporaryFailure(134),
  xattrInvalid(135),
  unknownCollection(136),
  noCollectionsManifest(137),
  cannotApplyCollectionsManifest(138),
  collectionsManifestIsAhead(139),
  unknownScope(140),
  dcpStreamIdInvalid(141),
  durabilityInvalidLevel(160),
  durabilityImpossible(161),
  syncWriteInProgress(162),
  syncWriteAmbiguous(163),
  syncWriteReCommitInProgress(164),
  subdocPathNotFound(192),
  subdocPathMismatch(193),
  subdocPathInvalid(194),
  subdocPathTooBig(195),
  subdocDocTooDeep(196),
  subdocValueCannotInsert(197),
  subdocDocNotJson(198),
  subdocNumRangeError(199),
  subdocDeltaInvalid(200),
  subdocPathExists(201),
  subdocValueTooDeep(202),
  subdocInvalidCombo(203),
  subdocMultiPathFailure(204),
  subdocSuccessDeleted(205),
  subdocXattrInvalidFlagCombo(206),
  subdocXattrInvalidKeyCombo(207),
  subdocXattrUnknownMacro(208),
  subdocXattrUnknownVattr(209),
  subdocXattrCannotModifyVattr(210),
  subdocMultiPathFailureDeleted(211),
  subdocInvalidXattrOrder(212),
  subdocXattrUnknownVattrMacro(213),
  subdocCanOnlyReviveDeletedDocuments(214),
  subdocDeletedDocumentCannotHaveValue(215),
  rangeScanCancelled(165),
  rangeScanMore(166),
  rangeScanComplete(167),
  rangeScanVbUuidNotEqual(168),
  unknown(65535),
  ;

  const KeyValueStatusCode(this.value);

  factory KeyValueStatusCode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return success;
      case 1:
        return notFound;
      case 2:
        return exists;
      case 3:
        return tooBig;
      case 4:
        return invalid;
      case 5:
        return notStored;
      case 6:
        return deltaBadValue;
      case 7:
        return notMyVbucket;
      case 8:
        return noBucket;
      case 10:
        return dcpStreamNotFound;
      case 11:
        return opaqueNoMatch;
      case 9:
        return locked;
      case 31:
        return authStale;
      case 32:
        return authError;
      case 33:
        return authContinue;
      case 34:
        return rangeError;
      case 35:
        return rollback;
      case 36:
        return noAccess;
      case 37:
        return notInitialized;
      case 48:
        return rateLimitedNetworkIngress;
      case 49:
        return rateLimitedNetworkEgress;
      case 50:
        return rateLimitedMaxConnections;
      case 51:
        return rateLimitedMaxCommands;
      case 52:
        return scopeSizeLimitExceeded;
      case 128:
        return unknownFrameInfo;
      case 129:
        return unknownCommand;
      case 130:
        return noMemory;
      case 131:
        return notSupported;
      case 132:
        return internal;
      case 133:
        return busy;
      case 134:
        return temporaryFailure;
      case 135:
        return xattrInvalid;
      case 136:
        return unknownCollection;
      case 137:
        return noCollectionsManifest;
      case 138:
        return cannotApplyCollectionsManifest;
      case 139:
        return collectionsManifestIsAhead;
      case 140:
        return unknownScope;
      case 141:
        return dcpStreamIdInvalid;
      case 160:
        return durabilityInvalidLevel;
      case 161:
        return durabilityImpossible;
      case 162:
        return syncWriteInProgress;
      case 163:
        return syncWriteAmbiguous;
      case 164:
        return syncWriteReCommitInProgress;
      case 192:
        return subdocPathNotFound;
      case 193:
        return subdocPathMismatch;
      case 194:
        return subdocPathInvalid;
      case 195:
        return subdocPathTooBig;
      case 196:
        return subdocDocTooDeep;
      case 197:
        return subdocValueCannotInsert;
      case 198:
        return subdocDocNotJson;
      case 199:
        return subdocNumRangeError;
      case 200:
        return subdocDeltaInvalid;
      case 201:
        return subdocPathExists;
      case 202:
        return subdocValueTooDeep;
      case 203:
        return subdocInvalidCombo;
      case 204:
        return subdocMultiPathFailure;
      case 205:
        return subdocSuccessDeleted;
      case 206:
        return subdocXattrInvalidFlagCombo;
      case 207:
        return subdocXattrInvalidKeyCombo;
      case 208:
        return subdocXattrUnknownMacro;
      case 209:
        return subdocXattrUnknownVattr;
      case 210:
        return subdocXattrCannotModifyVattr;
      case 211:
        return subdocMultiPathFailureDeleted;
      case 212:
        return subdocInvalidXattrOrder;
      case 213:
        return subdocXattrUnknownVattrMacro;
      case 214:
        return subdocCanOnlyReviveDeletedDocuments;
      case 215:
        return subdocDeletedDocumentCannotHaveValue;
      case 165:
        return rangeScanCancelled;
      case 166:
        return rangeScanMore;
      case 167:
        return rangeScanComplete;
      case 168:
        return rangeScanVbUuidNotEqual;
      case 65535:
        return unknown;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static KeyValueStatusCode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum Opcode {
  getDoc(0),
  setDoc(1),
  removeDoc(4),
  get(197),
  exists(198),
  dictAdd(199),
  dictUpsert(200),
  remove(201),
  replace(202),
  arrayPushLast(203),
  arrayPushFirst(204),
  arrayInsert(205),
  arrayAddUnique(206),
  counter(207),
  getCount(210),
  replaceBodyWithXattr(211),
  ;

  const Opcode(this.value);

  factory Opcode.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return getDoc;
      case 1:
        return setDoc;
      case 4:
        return removeDoc;
      case 197:
        return get;
      case 198:
        return exists;
      case 199:
        return dictAdd;
      case 200:
        return dictUpsert;
      case 201:
        return remove;
      case 202:
        return replace;
      case 203:
        return arrayPushLast;
      case 204:
        return arrayPushFirst;
      case 205:
        return arrayInsert;
      case 206:
        return arrayAddUnique;
      case 207:
        return counter;
      case 210:
        return getCount;
      case 211:
        return replaceBodyWithXattr;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static Opcode? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum StoreSemantics {
  replace(0),
  upsert(1),
  insert(2),
  revive(3),
  ;

  const StoreSemantics(this.value);

  factory StoreSemantics.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return replace;
      case 1:
        return upsert;
      case 2:
        return insert;
      case 3:
        return revive;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static StoreSemantics? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum PersistTo {
  none(0),
  active(1),
  one(2),
  two(3),
  three(4),
  four(5),
  ;

  const PersistTo(this.value);

  factory PersistTo.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return none;
      case 1:
        return active;
      case 2:
        return one;
      case 3:
        return two;
      case 4:
        return three;
      case 5:
        return four;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static PersistTo? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ReplicateTo {
  none(0),
  one(1),
  two(2),
  three(3),
  ;

  const ReplicateTo(this.value);

  factory ReplicateTo.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return none;
      case 1:
        return one;
      case 2:
        return two;
      case 3:
        return three;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ReplicateTo? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

enum ScanSort {
  none(0),
  ascending(1),
  ;

  const ScanSort(this.value);

  factory ScanSort.read(MessageBuffer buffer) {
    final value = buffer.readInt64();
    switch (value) {
      case 0:
        return none;
      case 1:
        return ascending;
      default:
        throw Exception('Unknown value: $value');
    }
  }

  static ScanSort? byValue(int value) {
    for (final enumValue in values) {
      if (enumValue.value == value) {
        return enumValue;
      }
    }
    return null;
  }

  final int value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(value);
  }
}

class ManagementAnalyticsDataset {
  ManagementAnalyticsDataset({
    required this.name,
    required this.dataverseName,
    required this.linkName,
    required this.bucketName,
  });

  factory ManagementAnalyticsDataset.read(MessageBuffer buffer) {
    return ManagementAnalyticsDataset(
      name: buffer.readString(),
      dataverseName: buffer.readString(),
      linkName: buffer.readString(),
      bucketName: buffer.readString(),
    );
  }

  final String name;
  final String dataverseName;
  final String linkName;
  final String bucketName;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeString(dataverseName);
    buffer.writeString(linkName);
    buffer.writeString(bucketName);
  }
}

class ManagementAnalyticsIndex {
  ManagementAnalyticsIndex({
    required this.name,
    required this.dataverseName,
    required this.datasetName,
    required this.isPrimary,
  });

  factory ManagementAnalyticsIndex.read(MessageBuffer buffer) {
    return ManagementAnalyticsIndex(
      name: buffer.readString(),
      dataverseName: buffer.readString(),
      datasetName: buffer.readString(),
      isPrimary: buffer.readBool(),
    );
  }

  final String name;
  final String dataverseName;
  final String datasetName;
  final bool isPrimary;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeString(dataverseName);
    buffer.writeString(datasetName);
    buffer.writeBool(isPrimary);
  }
}

class ManagementAnalyticsAzureBlobExternalLink {
  ManagementAnalyticsAzureBlobExternalLink({
    required this.linkName,
    required this.dataverse,
    required this.connectionString,
    required this.accountName,
    required this.accountKey,
    required this.sharedAccessSignature,
    required this.blobEndpoint,
    required this.endpointSuffix,
  });

  factory ManagementAnalyticsAzureBlobExternalLink.read(MessageBuffer buffer) {
    return ManagementAnalyticsAzureBlobExternalLink(
      linkName: buffer.readString(),
      dataverse: buffer.readString(),
      connectionString: buffer.readBool() ? buffer.readString() : null,
      accountName: buffer.readBool() ? buffer.readString() : null,
      accountKey: buffer.readBool() ? buffer.readString() : null,
      sharedAccessSignature: buffer.readBool() ? buffer.readString() : null,
      blobEndpoint: buffer.readBool() ? buffer.readString() : null,
      endpointSuffix: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String linkName;
  final String dataverse;
  final String? connectionString;
  final String? accountName;
  final String? accountKey;
  final String? sharedAccessSignature;
  final String? blobEndpoint;
  final String? endpointSuffix;

  void write(MessageBuffer buffer) {
    buffer.writeString(linkName);
    buffer.writeString(dataverse);
    buffer.writeBool(connectionString != null);
    if (connectionString != null) {
      buffer.writeString(connectionString!);
    }
    buffer.writeBool(accountName != null);
    if (accountName != null) {
      buffer.writeString(accountName!);
    }
    buffer.writeBool(accountKey != null);
    if (accountKey != null) {
      buffer.writeString(accountKey!);
    }
    buffer.writeBool(sharedAccessSignature != null);
    if (sharedAccessSignature != null) {
      buffer.writeString(sharedAccessSignature!);
    }
    buffer.writeBool(blobEndpoint != null);
    if (blobEndpoint != null) {
      buffer.writeString(blobEndpoint!);
    }
    buffer.writeBool(endpointSuffix != null);
    if (endpointSuffix != null) {
      buffer.writeString(endpointSuffix!);
    }
  }
}

class ManagementAnalyticsCouchbaseLinkEncryptionSettings {
  ManagementAnalyticsCouchbaseLinkEncryptionSettings({
    required this.level,
    required this.certificate,
    required this.clientCertificate,
    required this.clientKey,
  });

  factory ManagementAnalyticsCouchbaseLinkEncryptionSettings.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsCouchbaseLinkEncryptionSettings(
      level: CouchbaseLinkEncryptionLevel.read(buffer),
      certificate: buffer.readBool() ? buffer.readString() : null,
      clientCertificate: buffer.readBool() ? buffer.readString() : null,
      clientKey: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final CouchbaseLinkEncryptionLevel level;
  final String? certificate;
  final String? clientCertificate;
  final String? clientKey;

  void write(MessageBuffer buffer) {
    level.write(buffer);
    buffer.writeBool(certificate != null);
    if (certificate != null) {
      buffer.writeString(certificate!);
    }
    buffer.writeBool(clientCertificate != null);
    if (clientCertificate != null) {
      buffer.writeString(clientCertificate!);
    }
    buffer.writeBool(clientKey != null);
    if (clientKey != null) {
      buffer.writeString(clientKey!);
    }
  }
}

class ManagementAnalyticsCouchbaseRemoteLink {
  ManagementAnalyticsCouchbaseRemoteLink({
    required this.linkName,
    required this.dataverse,
    required this.hostname,
    required this.username,
    required this.password,
    required this.encryption,
  });

  factory ManagementAnalyticsCouchbaseRemoteLink.read(MessageBuffer buffer) {
    return ManagementAnalyticsCouchbaseRemoteLink(
      linkName: buffer.readString(),
      dataverse: buffer.readString(),
      hostname: buffer.readString(),
      username: buffer.readBool() ? buffer.readString() : null,
      password: buffer.readBool() ? buffer.readString() : null,
      encryption:
          ManagementAnalyticsCouchbaseLinkEncryptionSettings.read(buffer),
    );
  }

  final String linkName;
  final String dataverse;
  final String hostname;
  final String? username;
  final String? password;
  final ManagementAnalyticsCouchbaseLinkEncryptionSettings encryption;

  void write(MessageBuffer buffer) {
    buffer.writeString(linkName);
    buffer.writeString(dataverse);
    buffer.writeString(hostname);
    buffer.writeBool(username != null);
    if (username != null) {
      buffer.writeString(username!);
    }
    buffer.writeBool(password != null);
    if (password != null) {
      buffer.writeString(password!);
    }
    encryption.write(buffer);
  }
}

class ManagementAnalyticsS3ExternalLink {
  ManagementAnalyticsS3ExternalLink({
    required this.linkName,
    required this.dataverse,
    required this.accessKeyId,
    required this.secretAccessKey,
    required this.sessionToken,
    required this.region,
    required this.serviceEndpoint,
  });

  factory ManagementAnalyticsS3ExternalLink.read(MessageBuffer buffer) {
    return ManagementAnalyticsS3ExternalLink(
      linkName: buffer.readString(),
      dataverse: buffer.readString(),
      accessKeyId: buffer.readString(),
      secretAccessKey: buffer.readString(),
      sessionToken: buffer.readBool() ? buffer.readString() : null,
      region: buffer.readString(),
      serviceEndpoint: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String linkName;
  final String dataverse;
  final String accessKeyId;
  final String secretAccessKey;
  final String? sessionToken;
  final String region;
  final String? serviceEndpoint;

  void write(MessageBuffer buffer) {
    buffer.writeString(linkName);
    buffer.writeString(dataverse);
    buffer.writeString(accessKeyId);
    buffer.writeString(secretAccessKey);
    buffer.writeBool(sessionToken != null);
    if (sessionToken != null) {
      buffer.writeString(sessionToken!);
    }
    buffer.writeString(region);
    buffer.writeBool(serviceEndpoint != null);
    if (serviceEndpoint != null) {
      buffer.writeString(serviceEndpoint!);
    }
  }
}

class ManagementClusterBucketSettings {
  ManagementClusterBucketSettings({
    required this.name,
    required this.uuid,
    required this.bucketType,
    required this.ramQuotaMb,
    required this.maxExpiry,
    required this.compressionMode,
    required this.minimumDurabilityLevel,
    required this.numReplicas,
    required this.replicaIndexes,
    required this.flushEnabled,
    required this.evictionPolicy,
    required this.conflictResolutionType,
    required this.storageBackend,
    required this.capabilities,
    required this.nodes,
  });

  factory ManagementClusterBucketSettings.read(MessageBuffer buffer) {
    return ManagementClusterBucketSettings(
      name: buffer.readString(),
      uuid: buffer.readString(),
      bucketType: BucketType.read(buffer),
      ramQuotaMb: buffer.readInt64(),
      maxExpiry: buffer.readInt64(),
      compressionMode: BucketCompression.read(buffer),
      minimumDurabilityLevel:
          buffer.readBool() ? DurabilityLevel.read(buffer) : null,
      numReplicas: buffer.readInt64(),
      replicaIndexes: buffer.readBool(),
      flushEnabled: buffer.readBool(),
      evictionPolicy: BucketEvictionPolicy.read(buffer),
      conflictResolutionType: BucketConflictResolution.read(buffer),
      storageBackend: BucketStorageBackend.read(buffer),
      capabilities:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      nodes: List.generate(buffer.readUInt64(),
          (_) => ManagementClusterBucketSettingsNode.read(buffer)),
    );
  }

  final String name;
  final String uuid;
  final BucketType bucketType;
  final int ramQuotaMb;
  final int maxExpiry;
  final BucketCompression compressionMode;
  final DurabilityLevel? minimumDurabilityLevel;
  final int numReplicas;
  final bool replicaIndexes;
  final bool flushEnabled;
  final BucketEvictionPolicy evictionPolicy;
  final BucketConflictResolution conflictResolutionType;
  final BucketStorageBackend storageBackend;
  final List<String> capabilities;
  final List<ManagementClusterBucketSettingsNode> nodes;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeString(uuid);
    bucketType.write(buffer);
    buffer.writeInt64(ramQuotaMb);
    buffer.writeInt64(maxExpiry);
    compressionMode.write(buffer);
    buffer.writeBool(minimumDurabilityLevel != null);
    if (minimumDurabilityLevel != null) {
      minimumDurabilityLevel!.write(buffer);
    }
    buffer.writeInt64(numReplicas);
    buffer.writeBool(replicaIndexes);
    buffer.writeBool(flushEnabled);
    evictionPolicy.write(buffer);
    conflictResolutionType.write(buffer);
    storageBackend.write(buffer);
    buffer.writeUInt64(capabilities.length);
    for (final item in capabilities) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(nodes.length);
    for (final item in nodes) {
      item.write(buffer);
    }
  }
}

class ManagementClusterBucketSettingsNode {
  ManagementClusterBucketSettingsNode({
    required this.hostname,
    required this.status,
    required this.version,
    required this.services,
    required this.ports,
  });

  factory ManagementClusterBucketSettingsNode.read(MessageBuffer buffer) {
    return ManagementClusterBucketSettingsNode(
      hostname: buffer.readString(),
      status: buffer.readString(),
      version: buffer.readString(),
      services: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      ports: (() {
        final map = <String, int>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readInt64();
        }
        return map;
      })(),
    );
  }

  final String hostname;
  final String status;
  final String version;
  final List<String> services;
  final Map<String, int> ports;

  void write(MessageBuffer buffer) {
    buffer.writeString(hostname);
    buffer.writeString(status);
    buffer.writeString(version);
    buffer.writeUInt64(services.length);
    for (final item in services) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(ports.length);
    for (final entry in ports.entries) {
      buffer.writeString(entry.key);
      buffer.writeInt64(entry.value);
    }
  }
}

class ManagementViewsDesignDocument {
  ManagementViewsDesignDocument({
    required this.rev,
    required this.name,
    required this.ns,
    required this.views,
  });

  factory ManagementViewsDesignDocument.read(MessageBuffer buffer) {
    return ManagementViewsDesignDocument(
      rev: buffer.readString(),
      name: buffer.readString(),
      ns: DesignDocumentNamespace.read(buffer),
      views: (() {
        final map = <String, ManagementViewsDesignDocumentView>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] =
              ManagementViewsDesignDocumentView.read(buffer);
        }
        return map;
      })(),
    );
  }

  final String rev;
  final String name;
  final DesignDocumentNamespace ns;
  final Map<String, ManagementViewsDesignDocumentView> views;

  void write(MessageBuffer buffer) {
    buffer.writeString(rev);
    buffer.writeString(name);
    ns.write(buffer);
    buffer.writeUInt64(views.length);
    for (final entry in views.entries) {
      buffer.writeString(entry.key);
      entry.value.write(buffer);
    }
  }
}

class ManagementViewsDesignDocumentView {
  ManagementViewsDesignDocumentView({
    required this.name,
    required this.map,
    required this.reduce,
  });

  factory ManagementViewsDesignDocumentView.read(MessageBuffer buffer) {
    return ManagementViewsDesignDocumentView(
      name: buffer.readString(),
      map: buffer.readBool() ? buffer.readString() : null,
      reduce: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String name;
  final String? map;
  final String? reduce;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(map != null);
    if (map != null) {
      buffer.writeString(map!);
    }
    buffer.writeBool(reduce != null);
    if (reduce != null) {
      buffer.writeString(reduce!);
    }
  }
}

class ManagementEventingFunctionKeyspace {
  ManagementEventingFunctionKeyspace({
    required this.bucket,
    required this.scope,
    required this.collection,
  });

  factory ManagementEventingFunctionKeyspace.read(MessageBuffer buffer) {
    return ManagementEventingFunctionKeyspace(
      bucket: buffer.readString(),
      scope: buffer.readBool() ? buffer.readString() : null,
      collection: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String bucket;
  final String? scope;
  final String? collection;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucket);
    buffer.writeBool(scope != null);
    if (scope != null) {
      buffer.writeString(scope!);
    }
    buffer.writeBool(collection != null);
    if (collection != null) {
      buffer.writeString(collection!);
    }
  }
}

class ManagementEventingFunctionSettings {
  ManagementEventingFunctionSettings({
    required this.cppWorkerCount,
    required this.dcpStreamBoundary,
    required this.description,
    required this.deploymentStatus,
    required this.processingStatus,
    required this.logLevel,
    required this.languageCompatibility,
    required this.executionTimeout,
    required this.lcbInstCapacity,
    required this.lcbRetryCount,
    required this.lcbTimeout,
    required this.queryConsistency,
    required this.numTimerPartitions,
    required this.sockBatchSize,
    required this.tickDuration,
    required this.timerContextSize,
    required this.userPrefix,
    required this.bucketCacheSize,
    required this.bucketCacheAge,
    required this.curlMaxAllowedRespSize,
    required this.queryPrepareAll,
    required this.workerCount,
    required this.handlerHeaders,
    required this.handlerFooters,
    required this.enableAppLogRotation,
    required this.appLogDir,
    required this.appLogMaxSize,
    required this.appLogMaxFiles,
    required this.checkpointInterval,
  });

  factory ManagementEventingFunctionSettings.read(MessageBuffer buffer) {
    return ManagementEventingFunctionSettings(
      cppWorkerCount: buffer.readBool() ? buffer.readInt64() : null,
      dcpStreamBoundary:
          buffer.readBool() ? FunctionDcpBoundary.read(buffer) : null,
      description: buffer.readBool() ? buffer.readString() : null,
      deploymentStatus:
          buffer.readBool() ? FunctionDeploymentStatus.read(buffer) : null,
      processingStatus:
          buffer.readBool() ? FunctionProcessingStatus.read(buffer) : null,
      logLevel: buffer.readBool() ? FunctionLogLevel.read(buffer) : null,
      languageCompatibility:
          buffer.readBool() ? FunctionLanguageCompatibility.read(buffer) : null,
      executionTimeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      lcbInstCapacity: buffer.readBool() ? buffer.readInt64() : null,
      lcbRetryCount: buffer.readBool() ? buffer.readInt64() : null,
      lcbTimeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      queryConsistency:
          buffer.readBool() ? QueryScanConsistency.read(buffer) : null,
      numTimerPartitions: buffer.readBool() ? buffer.readInt64() : null,
      sockBatchSize: buffer.readBool() ? buffer.readInt64() : null,
      tickDuration:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      timerContextSize: buffer.readBool() ? buffer.readInt64() : null,
      userPrefix: buffer.readBool() ? buffer.readString() : null,
      bucketCacheSize: buffer.readBool() ? buffer.readInt64() : null,
      bucketCacheAge:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      curlMaxAllowedRespSize: buffer.readBool() ? buffer.readInt64() : null,
      queryPrepareAll: buffer.readBool() ? buffer.readBool() : null,
      workerCount: buffer.readBool() ? buffer.readInt64() : null,
      handlerHeaders:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      handlerFooters:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      enableAppLogRotation: buffer.readBool() ? buffer.readBool() : null,
      appLogDir: buffer.readBool() ? buffer.readString() : null,
      appLogMaxSize: buffer.readBool() ? buffer.readInt64() : null,
      appLogMaxFiles: buffer.readBool() ? buffer.readInt64() : null,
      checkpointInterval:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final int? cppWorkerCount;
  final FunctionDcpBoundary? dcpStreamBoundary;
  final String? description;
  final FunctionDeploymentStatus? deploymentStatus;
  final FunctionProcessingStatus? processingStatus;
  final FunctionLogLevel? logLevel;
  final FunctionLanguageCompatibility? languageCompatibility;
  final Duration? executionTimeout;
  final int? lcbInstCapacity;
  final int? lcbRetryCount;
  final Duration? lcbTimeout;
  final QueryScanConsistency? queryConsistency;
  final int? numTimerPartitions;
  final int? sockBatchSize;
  final Duration? tickDuration;
  final int? timerContextSize;
  final String? userPrefix;
  final int? bucketCacheSize;
  final Duration? bucketCacheAge;
  final int? curlMaxAllowedRespSize;
  final bool? queryPrepareAll;
  final int? workerCount;
  final List<String> handlerHeaders;
  final List<String> handlerFooters;
  final bool? enableAppLogRotation;
  final String? appLogDir;
  final int? appLogMaxSize;
  final int? appLogMaxFiles;
  final Duration? checkpointInterval;

  void write(MessageBuffer buffer) {
    buffer.writeBool(cppWorkerCount != null);
    if (cppWorkerCount != null) {
      buffer.writeInt64(cppWorkerCount!);
    }
    buffer.writeBool(dcpStreamBoundary != null);
    if (dcpStreamBoundary != null) {
      dcpStreamBoundary!.write(buffer);
    }
    buffer.writeBool(description != null);
    if (description != null) {
      buffer.writeString(description!);
    }
    buffer.writeBool(deploymentStatus != null);
    if (deploymentStatus != null) {
      deploymentStatus!.write(buffer);
    }
    buffer.writeBool(processingStatus != null);
    if (processingStatus != null) {
      processingStatus!.write(buffer);
    }
    buffer.writeBool(logLevel != null);
    if (logLevel != null) {
      logLevel!.write(buffer);
    }
    buffer.writeBool(languageCompatibility != null);
    if (languageCompatibility != null) {
      languageCompatibility!.write(buffer);
    }
    buffer.writeBool(executionTimeout != null);
    if (executionTimeout != null) {
      buffer.writeInt64(executionTimeout!.inMicroseconds);
    }
    buffer.writeBool(lcbInstCapacity != null);
    if (lcbInstCapacity != null) {
      buffer.writeInt64(lcbInstCapacity!);
    }
    buffer.writeBool(lcbRetryCount != null);
    if (lcbRetryCount != null) {
      buffer.writeInt64(lcbRetryCount!);
    }
    buffer.writeBool(lcbTimeout != null);
    if (lcbTimeout != null) {
      buffer.writeInt64(lcbTimeout!.inMicroseconds);
    }
    buffer.writeBool(queryConsistency != null);
    if (queryConsistency != null) {
      queryConsistency!.write(buffer);
    }
    buffer.writeBool(numTimerPartitions != null);
    if (numTimerPartitions != null) {
      buffer.writeInt64(numTimerPartitions!);
    }
    buffer.writeBool(sockBatchSize != null);
    if (sockBatchSize != null) {
      buffer.writeInt64(sockBatchSize!);
    }
    buffer.writeBool(tickDuration != null);
    if (tickDuration != null) {
      buffer.writeInt64(tickDuration!.inMicroseconds);
    }
    buffer.writeBool(timerContextSize != null);
    if (timerContextSize != null) {
      buffer.writeInt64(timerContextSize!);
    }
    buffer.writeBool(userPrefix != null);
    if (userPrefix != null) {
      buffer.writeString(userPrefix!);
    }
    buffer.writeBool(bucketCacheSize != null);
    if (bucketCacheSize != null) {
      buffer.writeInt64(bucketCacheSize!);
    }
    buffer.writeBool(bucketCacheAge != null);
    if (bucketCacheAge != null) {
      buffer.writeInt64(bucketCacheAge!.inMicroseconds);
    }
    buffer.writeBool(curlMaxAllowedRespSize != null);
    if (curlMaxAllowedRespSize != null) {
      buffer.writeInt64(curlMaxAllowedRespSize!);
    }
    buffer.writeBool(queryPrepareAll != null);
    if (queryPrepareAll != null) {
      buffer.writeBool(queryPrepareAll!);
    }
    buffer.writeBool(workerCount != null);
    if (workerCount != null) {
      buffer.writeInt64(workerCount!);
    }
    buffer.writeUInt64(handlerHeaders.length);
    for (final item in handlerHeaders) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(handlerFooters.length);
    for (final item in handlerFooters) {
      buffer.writeString(item);
    }
    buffer.writeBool(enableAppLogRotation != null);
    if (enableAppLogRotation != null) {
      buffer.writeBool(enableAppLogRotation!);
    }
    buffer.writeBool(appLogDir != null);
    if (appLogDir != null) {
      buffer.writeString(appLogDir!);
    }
    buffer.writeBool(appLogMaxSize != null);
    if (appLogMaxSize != null) {
      buffer.writeInt64(appLogMaxSize!);
    }
    buffer.writeBool(appLogMaxFiles != null);
    if (appLogMaxFiles != null) {
      buffer.writeInt64(appLogMaxFiles!);
    }
    buffer.writeBool(checkpointInterval != null);
    if (checkpointInterval != null) {
      buffer.writeInt64(checkpointInterval!.inMicroseconds);
    }
  }
}

class ManagementEventingFunctionBucketBinding {
  ManagementEventingFunctionBucketBinding({
    required this.alias,
    required this.name,
    required this.access,
  });

  factory ManagementEventingFunctionBucketBinding.read(MessageBuffer buffer) {
    return ManagementEventingFunctionBucketBinding(
      alias: buffer.readString(),
      name: ManagementEventingFunctionKeyspace.read(buffer),
      access: FunctionBucketAccess.read(buffer),
    );
  }

  final String alias;
  final ManagementEventingFunctionKeyspace name;
  final FunctionBucketAccess access;

  void write(MessageBuffer buffer) {
    buffer.writeString(alias);
    name.write(buffer);
    access.write(buffer);
  }
}

class ManagementEventingFunctionUrlNoAuth {
  ManagementEventingFunctionUrlNoAuth();

  factory ManagementEventingFunctionUrlNoAuth.read(MessageBuffer buffer) {
    return ManagementEventingFunctionUrlNoAuth();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementEventingFunctionUrlAuthBasic {
  ManagementEventingFunctionUrlAuthBasic({
    required this.username,
    required this.password,
  });

  factory ManagementEventingFunctionUrlAuthBasic.read(MessageBuffer buffer) {
    return ManagementEventingFunctionUrlAuthBasic(
      username: buffer.readString(),
      password: buffer.readString(),
    );
  }

  final String username;
  final String password;

  void write(MessageBuffer buffer) {
    buffer.writeString(username);
    buffer.writeString(password);
  }
}

class ManagementEventingFunctionUrlAuthDigest {
  ManagementEventingFunctionUrlAuthDigest({
    required this.username,
    required this.password,
  });

  factory ManagementEventingFunctionUrlAuthDigest.read(MessageBuffer buffer) {
    return ManagementEventingFunctionUrlAuthDigest(
      username: buffer.readString(),
      password: buffer.readString(),
    );
  }

  final String username;
  final String password;

  void write(MessageBuffer buffer) {
    buffer.writeString(username);
    buffer.writeString(password);
  }
}

class ManagementEventingFunctionUrlAuthBearer {
  ManagementEventingFunctionUrlAuthBearer({
    required this.key,
  });

  factory ManagementEventingFunctionUrlAuthBearer.read(MessageBuffer buffer) {
    return ManagementEventingFunctionUrlAuthBearer(
      key: buffer.readString(),
    );
  }

  final String key;

  void write(MessageBuffer buffer) {
    buffer.writeString(key);
  }
}

class ManagementEventingFunctionUrlBinding {
  ManagementEventingFunctionUrlBinding({
    required this.alias,
    required this.hostname,
    required this.allowCookies,
    required this.validateSslCertificate,
    required this.auth,
  });

  factory ManagementEventingFunctionUrlBinding.read(MessageBuffer buffer) {
    return ManagementEventingFunctionUrlBinding(
      alias: buffer.readString(),
      hostname: buffer.readString(),
      allowCookies: buffer.readBool(),
      validateSslCertificate: buffer.readBool(),
      auth: (() {
        final variantIndex = buffer.readUInt8();
        switch (variantIndex) {
          case 0:
            return ManagementEventingFunctionUrlNoAuth.read(buffer);
          case 1:
            return ManagementEventingFunctionUrlAuthBasic.read(buffer);
          case 2:
            return ManagementEventingFunctionUrlAuthDigest.read(buffer);
          case 3:
            return ManagementEventingFunctionUrlAuthBearer.read(buffer);
          default:
            throw StateError("Invalid variant index: $variantIndex");
        }
      })(),
    );
  }

  final String alias;
  final String hostname;
  final bool allowCookies;
  final bool validateSslCertificate;
  final Object auth;

  void write(MessageBuffer buffer) {
    buffer.writeString(alias);
    buffer.writeString(hostname);
    buffer.writeBool(allowCookies);
    buffer.writeBool(validateSslCertificate);
    if (auth is ManagementEventingFunctionUrlNoAuth) {
      buffer.writeUInt8(0);
      (auth as ManagementEventingFunctionUrlNoAuth).write(buffer);
    } else if (auth is ManagementEventingFunctionUrlAuthBasic) {
      buffer.writeUInt8(1);
      (auth as ManagementEventingFunctionUrlAuthBasic).write(buffer);
    } else if (auth is ManagementEventingFunctionUrlAuthDigest) {
      buffer.writeUInt8(2);
      (auth as ManagementEventingFunctionUrlAuthDigest).write(buffer);
    } else if (auth is ManagementEventingFunctionUrlAuthBearer) {
      buffer.writeUInt8(3);
      (auth as ManagementEventingFunctionUrlAuthBearer).write(buffer);
    } else {
      throw StateError("Invalid variant type: $auth");
    }
  }
}

class ManagementEventingFunctionConstantBinding {
  ManagementEventingFunctionConstantBinding({
    required this.alias,
    required this.literal,
  });

  factory ManagementEventingFunctionConstantBinding.read(MessageBuffer buffer) {
    return ManagementEventingFunctionConstantBinding(
      alias: buffer.readString(),
      literal: buffer.readString(),
    );
  }

  final String alias;
  final String literal;

  void write(MessageBuffer buffer) {
    buffer.writeString(alias);
    buffer.writeString(literal);
  }
}

class ManagementEventingFunction {
  ManagementEventingFunction({
    required this.name,
    required this.code,
    required this.metadataKeyspace,
    required this.sourceKeyspace,
    required this.version,
    required this.enforceSchema,
    required this.handlerUuid,
    required this.functionInstanceId,
    required this.bucketBindings,
    required this.urlBindings,
    required this.constantBindings,
    required this.settings,
  });

  factory ManagementEventingFunction.read(MessageBuffer buffer) {
    return ManagementEventingFunction(
      name: buffer.readString(),
      code: buffer.readString(),
      metadataKeyspace: ManagementEventingFunctionKeyspace.read(buffer),
      sourceKeyspace: ManagementEventingFunctionKeyspace.read(buffer),
      version: buffer.readBool() ? buffer.readString() : null,
      enforceSchema: buffer.readBool() ? buffer.readBool() : null,
      handlerUuid: buffer.readBool() ? buffer.readInt64() : null,
      functionInstanceId: buffer.readBool() ? buffer.readString() : null,
      bucketBindings: List.generate(buffer.readUInt64(),
          (_) => ManagementEventingFunctionBucketBinding.read(buffer)),
      urlBindings: List.generate(buffer.readUInt64(),
          (_) => ManagementEventingFunctionUrlBinding.read(buffer)),
      constantBindings: List.generate(buffer.readUInt64(),
          (_) => ManagementEventingFunctionConstantBinding.read(buffer)),
      settings: ManagementEventingFunctionSettings.read(buffer),
    );
  }

  final String name;
  final String code;
  final ManagementEventingFunctionKeyspace metadataKeyspace;
  final ManagementEventingFunctionKeyspace sourceKeyspace;
  final String? version;
  final bool? enforceSchema;
  final int? handlerUuid;
  final String? functionInstanceId;
  final List<ManagementEventingFunctionBucketBinding> bucketBindings;
  final List<ManagementEventingFunctionUrlBinding> urlBindings;
  final List<ManagementEventingFunctionConstantBinding> constantBindings;
  final ManagementEventingFunctionSettings settings;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeString(code);
    metadataKeyspace.write(buffer);
    sourceKeyspace.write(buffer);
    buffer.writeBool(version != null);
    if (version != null) {
      buffer.writeString(version!);
    }
    buffer.writeBool(enforceSchema != null);
    if (enforceSchema != null) {
      buffer.writeBool(enforceSchema!);
    }
    buffer.writeBool(handlerUuid != null);
    if (handlerUuid != null) {
      buffer.writeInt64(handlerUuid!);
    }
    buffer.writeBool(functionInstanceId != null);
    if (functionInstanceId != null) {
      buffer.writeString(functionInstanceId!);
    }
    buffer.writeUInt64(bucketBindings.length);
    for (final item in bucketBindings) {
      item.write(buffer);
    }
    buffer.writeUInt64(urlBindings.length);
    for (final item in urlBindings) {
      item.write(buffer);
    }
    buffer.writeUInt64(constantBindings.length);
    for (final item in constantBindings) {
      item.write(buffer);
    }
    settings.write(buffer);
  }
}

class ManagementEventingFunctionState {
  ManagementEventingFunctionState({
    required this.name,
    required this.status,
    required this.numBootstrappingNodes,
    required this.numDeployedNodes,
    required this.deploymentStatus,
    required this.processingStatus,
    required this.redeployRequired,
  });

  factory ManagementEventingFunctionState.read(MessageBuffer buffer) {
    return ManagementEventingFunctionState(
      name: buffer.readString(),
      status: FunctionStatus.read(buffer),
      numBootstrappingNodes: buffer.readInt64(),
      numDeployedNodes: buffer.readInt64(),
      deploymentStatus: FunctionDeploymentStatus.read(buffer),
      processingStatus: FunctionProcessingStatus.read(buffer),
      redeployRequired: buffer.readBool() ? buffer.readBool() : null,
    );
  }

  final String name;
  final FunctionStatus status;
  final int numBootstrappingNodes;
  final int numDeployedNodes;
  final FunctionDeploymentStatus deploymentStatus;
  final FunctionProcessingStatus processingStatus;
  final bool? redeployRequired;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    status.write(buffer);
    buffer.writeInt64(numBootstrappingNodes);
    buffer.writeInt64(numDeployedNodes);
    deploymentStatus.write(buffer);
    processingStatus.write(buffer);
    buffer.writeBool(redeployRequired != null);
    if (redeployRequired != null) {
      buffer.writeBool(redeployRequired!);
    }
  }
}

class ManagementEventingStatus {
  ManagementEventingStatus({
    required this.numEventingNodes,
    required this.functions,
  });

  factory ManagementEventingStatus.read(MessageBuffer buffer) {
    return ManagementEventingStatus(
      numEventingNodes: buffer.readInt64(),
      functions: List.generate(buffer.readUInt64(),
          (_) => ManagementEventingFunctionState.read(buffer)),
    );
  }

  final int numEventingNodes;
  final List<ManagementEventingFunctionState> functions;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(numEventingNodes);
    buffer.writeUInt64(functions.length);
    for (final item in functions) {
      item.write(buffer);
    }
  }
}

class ManagementRbacRole {
  ManagementRbacRole({
    required this.name,
    required this.bucket,
    required this.scope,
    required this.collection,
  });

  factory ManagementRbacRole.read(MessageBuffer buffer) {
    return ManagementRbacRole(
      name: buffer.readString(),
      bucket: buffer.readBool() ? buffer.readString() : null,
      scope: buffer.readBool() ? buffer.readString() : null,
      collection: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String name;
  final String? bucket;
  final String? scope;
  final String? collection;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(bucket != null);
    if (bucket != null) {
      buffer.writeString(bucket!);
    }
    buffer.writeBool(scope != null);
    if (scope != null) {
      buffer.writeString(scope!);
    }
    buffer.writeBool(collection != null);
    if (collection != null) {
      buffer.writeString(collection!);
    }
  }
}

class ManagementRbacRoleAndDescription {
  ManagementRbacRoleAndDescription({
    required this.displayName,
    required this.description,
  });

  factory ManagementRbacRoleAndDescription.read(MessageBuffer buffer) {
    return ManagementRbacRoleAndDescription(
      displayName: buffer.readString(),
      description: buffer.readString(),
    );
  }

  final String displayName;
  final String description;

  void write(MessageBuffer buffer) {
    buffer.writeString(displayName);
    buffer.writeString(description);
  }
}

class ManagementRbacOrigin {
  ManagementRbacOrigin({
    required this.type,
    required this.name,
  });

  factory ManagementRbacOrigin.read(MessageBuffer buffer) {
    return ManagementRbacOrigin(
      type: buffer.readString(),
      name: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String type;
  final String? name;

  void write(MessageBuffer buffer) {
    buffer.writeString(type);
    buffer.writeBool(name != null);
    if (name != null) {
      buffer.writeString(name!);
    }
  }
}

class ManagementRbacRoleAndOrigins {
  ManagementRbacRoleAndOrigins({
    required this.origins,
  });

  factory ManagementRbacRoleAndOrigins.read(MessageBuffer buffer) {
    return ManagementRbacRoleAndOrigins(
      origins: List.generate(
          buffer.readUInt64(), (_) => ManagementRbacOrigin.read(buffer)),
    );
  }

  final List<ManagementRbacOrigin> origins;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(origins.length);
    for (final item in origins) {
      item.write(buffer);
    }
  }
}

class ManagementRbacUser {
  ManagementRbacUser({
    required this.username,
    required this.displayName,
    required this.groups,
    required this.roles,
    required this.password,
  });

  factory ManagementRbacUser.read(MessageBuffer buffer) {
    return ManagementRbacUser(
      username: buffer.readString(),
      displayName: buffer.readBool() ? buffer.readString() : null,
      groups: Iterable.generate(buffer.readUInt64(), (_) => buffer.readString())
          .toSet(),
      roles: List.generate(
          buffer.readUInt64(), (_) => ManagementRbacRole.read(buffer)),
      password: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String username;
  final String? displayName;
  final Set<String> groups;
  final List<ManagementRbacRole> roles;
  final String? password;

  void write(MessageBuffer buffer) {
    buffer.writeString(username);
    buffer.writeBool(displayName != null);
    if (displayName != null) {
      buffer.writeString(displayName!);
    }
    buffer.writeUInt64(groups.length);
    for (final item in groups) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(roles.length);
    for (final item in roles) {
      item.write(buffer);
    }
    buffer.writeBool(password != null);
    if (password != null) {
      buffer.writeString(password!);
    }
  }
}

class ManagementRbacUserAndMetadata {
  ManagementRbacUserAndMetadata({
    required this.domain,
    required this.effectiveRoles,
    required this.passwordChanged,
    required this.externalGroups,
  });

  factory ManagementRbacUserAndMetadata.read(MessageBuffer buffer) {
    return ManagementRbacUserAndMetadata(
      domain: AuthDomain.read(buffer),
      effectiveRoles: List.generate(buffer.readUInt64(),
          (_) => ManagementRbacRoleAndOrigins.read(buffer)),
      passwordChanged: buffer.readBool() ? buffer.readString() : null,
      externalGroups:
          Iterable.generate(buffer.readUInt64(), (_) => buffer.readString())
              .toSet(),
    );
  }

  final AuthDomain domain;
  final List<ManagementRbacRoleAndOrigins> effectiveRoles;
  final String? passwordChanged;
  final Set<String> externalGroups;

  void write(MessageBuffer buffer) {
    domain.write(buffer);
    buffer.writeUInt64(effectiveRoles.length);
    for (final item in effectiveRoles) {
      item.write(buffer);
    }
    buffer.writeBool(passwordChanged != null);
    if (passwordChanged != null) {
      buffer.writeString(passwordChanged!);
    }
    buffer.writeUInt64(externalGroups.length);
    for (final item in externalGroups) {
      buffer.writeString(item);
    }
  }
}

class ManagementRbacGroup {
  ManagementRbacGroup({
    required this.name,
    required this.description,
    required this.roles,
    required this.ldapGroupReference,
  });

  factory ManagementRbacGroup.read(MessageBuffer buffer) {
    return ManagementRbacGroup(
      name: buffer.readString(),
      description: buffer.readBool() ? buffer.readString() : null,
      roles: List.generate(
          buffer.readUInt64(), (_) => ManagementRbacRole.read(buffer)),
      ldapGroupReference: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String name;
  final String? description;
  final List<ManagementRbacRole> roles;
  final String? ldapGroupReference;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(description != null);
    if (description != null) {
      buffer.writeString(description!);
    }
    buffer.writeUInt64(roles.length);
    for (final item in roles) {
      item.write(buffer);
    }
    buffer.writeBool(ldapGroupReference != null);
    if (ldapGroupReference != null) {
      buffer.writeString(ldapGroupReference!);
    }
  }
}

class ManagementSearchIndex {
  ManagementSearchIndex({
    required this.uuid,
    required this.name,
    required this.type,
    required this.paramsJson,
    required this.sourceUuid,
    required this.sourceName,
    required this.sourceType,
    required this.sourceParamsJson,
    required this.planParamsJson,
  });

  factory ManagementSearchIndex.read(MessageBuffer buffer) {
    return ManagementSearchIndex(
      uuid: buffer.readString(),
      name: buffer.readString(),
      type: buffer.readString(),
      paramsJson: buffer.readString(),
      sourceUuid: buffer.readString(),
      sourceName: buffer.readString(),
      sourceType: buffer.readString(),
      sourceParamsJson: buffer.readString(),
      planParamsJson: buffer.readString(),
    );
  }

  final String uuid;
  final String name;
  final String type;
  final String paramsJson;
  final String sourceUuid;
  final String sourceName;
  final String sourceType;
  final String sourceParamsJson;
  final String planParamsJson;

  void write(MessageBuffer buffer) {
    buffer.writeString(uuid);
    buffer.writeString(name);
    buffer.writeString(type);
    buffer.writeString(paramsJson);
    buffer.writeString(sourceUuid);
    buffer.writeString(sourceName);
    buffer.writeString(sourceType);
    buffer.writeString(sourceParamsJson);
    buffer.writeString(planParamsJson);
  }
}

class ManagementQueryIndex {
  ManagementQueryIndex({
    required this.isPrimary,
    required this.name,
    required this.state,
    required this.type,
    required this.indexKey,
    required this.partition,
    required this.condition,
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
  });

  factory ManagementQueryIndex.read(MessageBuffer buffer) {
    return ManagementQueryIndex(
      isPrimary: buffer.readBool(),
      name: buffer.readString(),
      state: buffer.readString(),
      type: buffer.readString(),
      indexKey: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      partition: buffer.readBool() ? buffer.readString() : null,
      condition: buffer.readBool() ? buffer.readString() : null,
      bucketName: buffer.readString(),
      scopeName: buffer.readBool() ? buffer.readString() : null,
      collectionName: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final bool isPrimary;
  final String name;
  final String state;
  final String type;
  final List<String> indexKey;
  final String? partition;
  final String? condition;
  final String bucketName;
  final String? scopeName;
  final String? collectionName;

  void write(MessageBuffer buffer) {
    buffer.writeBool(isPrimary);
    buffer.writeString(name);
    buffer.writeString(state);
    buffer.writeString(type);
    buffer.writeUInt64(indexKey.length);
    for (final item in indexKey) {
      buffer.writeString(item);
    }
    buffer.writeBool(partition != null);
    if (partition != null) {
      buffer.writeString(partition!);
    }
    buffer.writeBool(condition != null);
    if (condition != null) {
      buffer.writeString(condition!);
    }
    buffer.writeString(bucketName);
    buffer.writeBool(scopeName != null);
    if (scopeName != null) {
      buffer.writeString(scopeName!);
    }
    buffer.writeBool(collectionName != null);
    if (collectionName != null) {
      buffer.writeString(collectionName!);
    }
  }
}

class TopologyCollectionsManifest {
  TopologyCollectionsManifest({
    required this.id,
    required this.uid,
    required this.scopes,
  });

  factory TopologyCollectionsManifest.read(MessageBuffer buffer) {
    return TopologyCollectionsManifest(
      id: List.generate(16, (_) => buffer.readInt64()),
      uid: buffer.readInt64(),
      scopes: List.generate(buffer.readUInt64(),
          (_) => TopologyCollectionsManifestScope.read(buffer)),
    );
  }

  final List<int> id;
  final int uid;
  final List<TopologyCollectionsManifestScope> scopes;

  void write(MessageBuffer buffer) {
    for (final item in id) {
      buffer.writeInt64(item);
    }
    buffer.writeInt64(uid);
    buffer.writeUInt64(scopes.length);
    for (final item in scopes) {
      item.write(buffer);
    }
  }
}

class TopologyCollectionsManifestCollection {
  TopologyCollectionsManifestCollection({
    required this.uid,
    required this.name,
    required this.maxExpiry,
  });

  factory TopologyCollectionsManifestCollection.read(MessageBuffer buffer) {
    return TopologyCollectionsManifestCollection(
      uid: buffer.readInt64(),
      name: buffer.readString(),
      maxExpiry: buffer.readInt64(),
    );
  }

  final int uid;
  final String name;
  final int maxExpiry;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(uid);
    buffer.writeString(name);
    buffer.writeInt64(maxExpiry);
  }
}

class TopologyCollectionsManifestScope {
  TopologyCollectionsManifestScope({
    required this.uid,
    required this.name,
    required this.collections,
  });

  factory TopologyCollectionsManifestScope.read(MessageBuffer buffer) {
    return TopologyCollectionsManifestScope(
      uid: buffer.readInt64(),
      name: buffer.readString(),
      collections: List.generate(buffer.readUInt64(),
          (_) => TopologyCollectionsManifestCollection.read(buffer)),
    );
  }

  final int uid;
  final String name;
  final List<TopologyCollectionsManifestCollection> collections;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(uid);
    buffer.writeString(name);
    buffer.writeUInt64(collections.length);
    for (final item in collections) {
      item.write(buffer);
    }
  }
}

class DiagEndpointDiagInfo {
  DiagEndpointDiagInfo({
    required this.type,
    required this.id,
    required this.lastActivity,
    required this.remote,
    required this.local,
    required this.state,
    required this.bucket,
    required this.details,
  });

  factory DiagEndpointDiagInfo.read(MessageBuffer buffer) {
    return DiagEndpointDiagInfo(
      type: ServiceType.read(buffer),
      id: buffer.readString(),
      lastActivity:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      remote: buffer.readString(),
      local: buffer.readString(),
      state: EndpointState.read(buffer),
      bucket: buffer.readBool() ? buffer.readString() : null,
      details: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final ServiceType type;
  final String id;
  final Duration? lastActivity;
  final String remote;
  final String local;
  final EndpointState state;
  final String? bucket;
  final String? details;

  void write(MessageBuffer buffer) {
    type.write(buffer);
    buffer.writeString(id);
    buffer.writeBool(lastActivity != null);
    if (lastActivity != null) {
      buffer.writeInt64(lastActivity!.inMicroseconds);
    }
    buffer.writeString(remote);
    buffer.writeString(local);
    state.write(buffer);
    buffer.writeBool(bucket != null);
    if (bucket != null) {
      buffer.writeString(bucket!);
    }
    buffer.writeBool(details != null);
    if (details != null) {
      buffer.writeString(details!);
    }
  }
}

class DiagDiagnosticsResult {
  DiagDiagnosticsResult({
    required this.id,
    required this.sdk,
    required this.services,
    required this.version,
  });

  factory DiagDiagnosticsResult.read(MessageBuffer buffer) {
    return DiagDiagnosticsResult(
      id: buffer.readString(),
      sdk: buffer.readString(),
      services: (() {
        final map = <ServiceType, List<DiagEndpointDiagInfo>>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[ServiceType.read(buffer)] = List.generate(
              buffer.readUInt64(), (_) => DiagEndpointDiagInfo.read(buffer));
        }
        return map;
      })(),
      version: buffer.readInt64(),
    );
  }

  final String id;
  final String sdk;
  final Map<ServiceType, List<DiagEndpointDiagInfo>> services;
  final int version;

  void write(MessageBuffer buffer) {
    buffer.writeString(id);
    buffer.writeString(sdk);
    buffer.writeUInt64(services.length);
    for (final entry in services.entries) {
      entry.key.write(buffer);
      buffer.writeUInt64(entry.value.length);
      for (final item in entry.value) {
        item.write(buffer);
      }
    }
    buffer.writeInt64(version);
  }
}

class DiagEndpointPingInfo {
  DiagEndpointPingInfo({
    required this.type,
    required this.id,
    required this.latency,
    required this.remote,
    required this.local,
    required this.state,
    required this.bucket,
    required this.error,
  });

  factory DiagEndpointPingInfo.read(MessageBuffer buffer) {
    return DiagEndpointPingInfo(
      type: ServiceType.read(buffer),
      id: buffer.readString(),
      latency: Duration(microseconds: buffer.readInt64()),
      remote: buffer.readString(),
      local: buffer.readString(),
      state: PingState.read(buffer),
      bucket: buffer.readBool() ? buffer.readString() : null,
      error: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final ServiceType type;
  final String id;
  final Duration latency;
  final String remote;
  final String local;
  final PingState state;
  final String? bucket;
  final String? error;

  void write(MessageBuffer buffer) {
    type.write(buffer);
    buffer.writeString(id);
    buffer.writeInt64(latency.inMicroseconds);
    buffer.writeString(remote);
    buffer.writeString(local);
    state.write(buffer);
    buffer.writeBool(bucket != null);
    if (bucket != null) {
      buffer.writeString(bucket!);
    }
    buffer.writeBool(error != null);
    if (error != null) {
      buffer.writeString(error!);
    }
  }
}

class DiagPingResult {
  DiagPingResult({
    required this.id,
    required this.sdk,
    required this.services,
    required this.version,
  });

  factory DiagPingResult.read(MessageBuffer buffer) {
    return DiagPingResult(
      id: buffer.readString(),
      sdk: buffer.readString(),
      services: (() {
        final map = <ServiceType, List<DiagEndpointPingInfo>>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[ServiceType.read(buffer)] = List.generate(
              buffer.readUInt64(), (_) => DiagEndpointPingInfo.read(buffer));
        }
        return map;
      })(),
      version: buffer.readInt64(),
    );
  }

  final String id;
  final String sdk;
  final Map<ServiceType, List<DiagEndpointPingInfo>> services;
  final int version;

  void write(MessageBuffer buffer) {
    buffer.writeString(id);
    buffer.writeString(sdk);
    buffer.writeUInt64(services.length);
    for (final entry in services.entries) {
      entry.key.write(buffer);
      buffer.writeUInt64(entry.value.length);
      for (final item in entry.value) {
        item.write(buffer);
      }
    }
    buffer.writeInt64(version);
  }
}

class PrependResponse {
  PrependResponse({
    required this.cas,
    required this.token,
  });

  factory PrependResponse.read(MessageBuffer buffer) {
    return PrependResponse(
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    token.write(buffer);
  }
}

class PrependRequest {
  PrependRequest({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.durabilityLevel,
    required this.timeout,
  });

  factory PrependRequest.read(MessageBuffer buffer) {
    return PrependRequest(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class PrependWithLegacyDurability {
  PrependWithLegacyDurability({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.timeout,
    required this.persistTo,
    required this.replicateTo,
  });

  factory PrependWithLegacyDurability.read(MessageBuffer buffer) {
    return PrependWithLegacyDurability(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final Duration? timeout;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class ExistsResponse {
  ExistsResponse({
    required this.deleted,
    required this.cas,
    required this.flags,
    required this.expiry,
    required this.sequenceNumber,
    required this.datatype,
    required this.documentExists,
  });

  factory ExistsResponse.read(MessageBuffer buffer) {
    return ExistsResponse(
      deleted: buffer.readBool(),
      cas: CasMessage.read(buffer),
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      sequenceNumber: buffer.readInt64(),
      datatype: buffer.readInt64(),
      documentExists: buffer.readBool(),
    );
  }

  final bool deleted;
  final Cas cas;
  final int flags;
  final int expiry;
  final int sequenceNumber;
  final int datatype;
  final bool documentExists;

  void write(MessageBuffer buffer) {
    buffer.writeBool(deleted);
    cas.write(buffer);
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    buffer.writeInt64(sequenceNumber);
    buffer.writeInt64(datatype);
    buffer.writeBool(documentExists);
  }
}

class ExistsRequest {
  ExistsRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.timeout,
  });

  factory ExistsRequest.read(MessageBuffer buffer) {
    return ExistsRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class HttpNoopResponse {
  HttpNoopResponse();

  factory HttpNoopResponse.read(MessageBuffer buffer) {
    return HttpNoopResponse();
  }

  void write(MessageBuffer buffer) {}
}

class HttpNoopRequest {
  HttpNoopRequest({
    required this.type,
    required this.clientContextId,
    required this.timeout,
  });

  factory HttpNoopRequest.read(MessageBuffer buffer) {
    return HttpNoopRequest(
      type: ServiceType.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final ServiceType type;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    type.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class UnlockResponse {
  UnlockResponse({
    required this.cas,
  });

  factory UnlockResponse.read(MessageBuffer buffer) {
    return UnlockResponse(
      cas: CasMessage.read(buffer),
    );
  }

  final Cas cas;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
  }
}

class UnlockRequest {
  UnlockRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.cas,
    required this.timeout,
  });

  factory UnlockRequest.read(MessageBuffer buffer) {
    return UnlockRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Cas cas;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    cas.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class GetAllReplicasResponse {
  GetAllReplicasResponse({
    required this.entries,
  });

  factory GetAllReplicasResponse.read(MessageBuffer buffer) {
    return GetAllReplicasResponse(
      entries: List.generate(
          buffer.readUInt64(), (_) => GetAllReplicasResponseEntry.read(buffer)),
    );
  }

  final List<GetAllReplicasResponseEntry> entries;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(entries.length);
    for (final item in entries) {
      item.write(buffer);
    }
  }
}

class GetAllReplicasResponseEntry {
  GetAllReplicasResponseEntry({
    required this.value,
    required this.cas,
    required this.flags,
    required this.replica,
  });

  factory GetAllReplicasResponseEntry.read(MessageBuffer buffer) {
    return GetAllReplicasResponseEntry(
      value: buffer.readData(),
      cas: CasMessage.read(buffer),
      flags: buffer.readInt64(),
      replica: buffer.readBool(),
    );
  }

  final Uint8List value;
  final Cas cas;
  final int flags;
  final bool replica;

  void write(MessageBuffer buffer) {
    buffer.writeData(value);
    cas.write(buffer);
    buffer.writeInt64(flags);
    buffer.writeBool(replica);
  }
}

class GetAllReplicasRequest {
  GetAllReplicasRequest({
    required this.id,
    required this.timeout,
  });

  factory GetAllReplicasRequest.read(MessageBuffer buffer) {
    return GetAllReplicasRequest(
      id: DocumentId.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class UpsertResponse {
  UpsertResponse({
    required this.cas,
    required this.token,
  });

  factory UpsertResponse.read(MessageBuffer buffer) {
    return UpsertResponse(
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    token.write(buffer);
  }
}

class UpsertRequest {
  UpsertRequest({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.flags,
    required this.expiry,
    required this.durabilityLevel,
    required this.timeout,
    required this.preserveExpiry,
  });

  factory UpsertRequest.read(MessageBuffer buffer) {
    return UpsertRequest(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      preserveExpiry: buffer.readBool(),
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final int flags;
  final int expiry;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;
  final bool preserveExpiry;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeBool(preserveExpiry);
  }
}

class UpsertWithLegacyDurability {
  UpsertWithLegacyDurability({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.flags,
    required this.expiry,
    required this.timeout,
    required this.preserveExpiry,
    required this.persistTo,
    required this.replicateTo,
  });

  factory UpsertWithLegacyDurability.read(MessageBuffer buffer) {
    return UpsertWithLegacyDurability(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      preserveExpiry: buffer.readBool(),
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final int flags;
  final int expiry;
  final Duration? timeout;
  final bool preserveExpiry;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeBool(preserveExpiry);
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class GetAnyReplicaResponse {
  GetAnyReplicaResponse({
    required this.value,
    required this.cas,
    required this.flags,
    required this.replica,
  });

  factory GetAnyReplicaResponse.read(MessageBuffer buffer) {
    return GetAnyReplicaResponse(
      value: buffer.readData(),
      cas: CasMessage.read(buffer),
      flags: buffer.readInt64(),
      replica: buffer.readBool(),
    );
  }

  final Uint8List value;
  final Cas cas;
  final int flags;
  final bool replica;

  void write(MessageBuffer buffer) {
    buffer.writeData(value);
    cas.write(buffer);
    buffer.writeInt64(flags);
    buffer.writeBool(replica);
  }
}

class GetAnyReplicaRequest {
  GetAnyReplicaRequest({
    required this.id,
    required this.timeout,
  });

  factory GetAnyReplicaRequest.read(MessageBuffer buffer) {
    return GetAnyReplicaRequest(
      id: DocumentId.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class AppendResponse {
  AppendResponse({
    required this.cas,
    required this.token,
  });

  factory AppendResponse.read(MessageBuffer buffer) {
    return AppendResponse(
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    token.write(buffer);
  }
}

class AppendRequest {
  AppendRequest({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.durabilityLevel,
    required this.timeout,
  });

  factory AppendRequest.read(MessageBuffer buffer) {
    return AppendRequest(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class AppendWithLegacyDurability {
  AppendWithLegacyDurability({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.timeout,
    required this.persistTo,
    required this.replicateTo,
  });

  factory AppendWithLegacyDurability.read(MessageBuffer buffer) {
    return AppendWithLegacyDurability(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final Duration? timeout;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class QueryResponse {
  QueryResponse({
    required this.meta,
    required this.prepared,
    required this.rows,
    required this.servedByNode,
  });

  factory QueryResponse.read(MessageBuffer buffer) {
    return QueryResponse(
      meta: QueryResponseQueryMetaData.read(buffer),
      prepared: buffer.readBool() ? buffer.readString() : null,
      rows: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      servedByNode: buffer.readString(),
    );
  }

  final QueryResponseQueryMetaData meta;
  final String? prepared;
  final List<String> rows;
  final String servedByNode;

  void write(MessageBuffer buffer) {
    meta.write(buffer);
    buffer.writeBool(prepared != null);
    if (prepared != null) {
      buffer.writeString(prepared!);
    }
    buffer.writeUInt64(rows.length);
    for (final item in rows) {
      buffer.writeString(item);
    }
    buffer.writeString(servedByNode);
  }
}

class QueryResponseQueryMetrics {
  QueryResponseQueryMetrics({
    required this.elapsedTime,
    required this.executionTime,
    required this.resultCount,
    required this.resultSize,
    required this.sortCount,
    required this.mutationCount,
    required this.errorCount,
    required this.warningCount,
  });

  factory QueryResponseQueryMetrics.read(MessageBuffer buffer) {
    return QueryResponseQueryMetrics(
      elapsedTime: Duration(microseconds: buffer.readInt64()),
      executionTime: Duration(microseconds: buffer.readInt64()),
      resultCount: buffer.readInt64(),
      resultSize: buffer.readInt64(),
      sortCount: buffer.readInt64(),
      mutationCount: buffer.readInt64(),
      errorCount: buffer.readInt64(),
      warningCount: buffer.readInt64(),
    );
  }

  final Duration elapsedTime;
  final Duration executionTime;
  final int resultCount;
  final int resultSize;
  final int sortCount;
  final int mutationCount;
  final int errorCount;
  final int warningCount;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(elapsedTime.inMicroseconds);
    buffer.writeInt64(executionTime.inMicroseconds);
    buffer.writeInt64(resultCount);
    buffer.writeInt64(resultSize);
    buffer.writeInt64(sortCount);
    buffer.writeInt64(mutationCount);
    buffer.writeInt64(errorCount);
    buffer.writeInt64(warningCount);
  }
}

class QueryResponseQueryProblem {
  QueryResponseQueryProblem({
    required this.code,
    required this.message,
    required this.reason,
    required this.retry,
  });

  factory QueryResponseQueryProblem.read(MessageBuffer buffer) {
    return QueryResponseQueryProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
      reason: buffer.readBool() ? buffer.readInt64() : null,
      retry: buffer.readBool() ? buffer.readBool() : null,
    );
  }

  final int code;
  final String message;
  final int? reason;
  final bool? retry;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
    buffer.writeBool(reason != null);
    if (reason != null) {
      buffer.writeInt64(reason!);
    }
    buffer.writeBool(retry != null);
    if (retry != null) {
      buffer.writeBool(retry!);
    }
  }
}

class QueryResponseQueryMetaData {
  QueryResponseQueryMetaData({
    required this.requestId,
    required this.clientContextId,
    required this.status,
    required this.metrics,
    required this.signature,
    required this.profile,
    required this.warnings,
    required this.errors,
  });

  factory QueryResponseQueryMetaData.read(MessageBuffer buffer) {
    return QueryResponseQueryMetaData(
      requestId: buffer.readString(),
      clientContextId: buffer.readString(),
      status: buffer.readString(),
      metrics:
          buffer.readBool() ? QueryResponseQueryMetrics.read(buffer) : null,
      signature: buffer.readBool() ? buffer.readString() : null,
      profile: buffer.readBool() ? buffer.readString() : null,
      warnings: buffer.readBool()
          ? List.generate(buffer.readUInt64(),
              (_) => QueryResponseQueryProblem.read(buffer))
          : null,
      errors: buffer.readBool()
          ? List.generate(buffer.readUInt64(),
              (_) => QueryResponseQueryProblem.read(buffer))
          : null,
    );
  }

  final String requestId;
  final String clientContextId;
  final String status;
  final QueryResponseQueryMetrics? metrics;
  final String? signature;
  final String? profile;
  final List<QueryResponseQueryProblem>? warnings;
  final List<QueryResponseQueryProblem>? errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(requestId);
    buffer.writeString(clientContextId);
    buffer.writeString(status);
    buffer.writeBool(metrics != null);
    if (metrics != null) {
      metrics!.write(buffer);
    }
    buffer.writeBool(signature != null);
    if (signature != null) {
      buffer.writeString(signature!);
    }
    buffer.writeBool(profile != null);
    if (profile != null) {
      buffer.writeString(profile!);
    }
    buffer.writeBool(warnings != null);
    if (warnings != null) {
      buffer.writeUInt64(warnings!.length);
      for (final item in warnings!) {
        item.write(buffer);
      }
    }
    buffer.writeBool(errors != null);
    if (errors != null) {
      buffer.writeUInt64(errors!.length);
      for (final item in errors!) {
        item.write(buffer);
      }
    }
  }
}

class QueryRequest {
  QueryRequest({
    required this.statement,
    required this.adhoc,
    required this.metrics,
    required this.readonly,
    required this.flexIndex,
    required this.preserveExpiry,
    required this.maxParallelism,
    required this.scanCap,
    required this.scanWait,
    required this.pipelineBatch,
    required this.pipelineCap,
    required this.scanConsistency,
    required this.mutationState,
    required this.queryContext,
    required this.clientContextId,
    required this.timeout,
    required this.profile,
    required this.raw,
    required this.positionalParameters,
    required this.namedParameters,
    required this.sendToNode,
    required this.bodyStr,
  });

  factory QueryRequest.read(MessageBuffer buffer) {
    return QueryRequest(
      statement: buffer.readString(),
      adhoc: buffer.readBool(),
      metrics: buffer.readBool(),
      readonly: buffer.readBool(),
      flexIndex: buffer.readBool(),
      preserveExpiry: buffer.readBool(),
      maxParallelism: buffer.readBool() ? buffer.readInt64() : null,
      scanCap: buffer.readBool() ? buffer.readInt64() : null,
      scanWait:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      pipelineBatch: buffer.readBool() ? buffer.readInt64() : null,
      pipelineCap: buffer.readBool() ? buffer.readInt64() : null,
      scanConsistency:
          buffer.readBool() ? QueryScanConsistency.read(buffer) : null,
      mutationState: List.generate(
          buffer.readUInt64(), (_) => MutationTokenMessage.read(buffer)),
      queryContext: buffer.readBool() ? buffer.readString() : null,
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      profile: QueryProfile.read(buffer),
      raw: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      positionalParameters:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      namedParameters: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      sendToNode: buffer.readBool() ? buffer.readString() : null,
      bodyStr: buffer.readString(),
    );
  }

  final String statement;
  final bool adhoc;
  final bool metrics;
  final bool readonly;
  final bool flexIndex;
  final bool preserveExpiry;
  final int? maxParallelism;
  final int? scanCap;
  final Duration? scanWait;
  final int? pipelineBatch;
  final int? pipelineCap;
  final QueryScanConsistency? scanConsistency;
  final List<MutationToken> mutationState;
  final String? queryContext;
  final String? clientContextId;
  final Duration? timeout;
  final QueryProfile profile;
  final Map<String, String> raw;
  final List<String> positionalParameters;
  final Map<String, String> namedParameters;
  final String? sendToNode;
  final String bodyStr;

  void write(MessageBuffer buffer) {
    buffer.writeString(statement);
    buffer.writeBool(adhoc);
    buffer.writeBool(metrics);
    buffer.writeBool(readonly);
    buffer.writeBool(flexIndex);
    buffer.writeBool(preserveExpiry);
    buffer.writeBool(maxParallelism != null);
    if (maxParallelism != null) {
      buffer.writeInt64(maxParallelism!);
    }
    buffer.writeBool(scanCap != null);
    if (scanCap != null) {
      buffer.writeInt64(scanCap!);
    }
    buffer.writeBool(scanWait != null);
    if (scanWait != null) {
      buffer.writeInt64(scanWait!.inMicroseconds);
    }
    buffer.writeBool(pipelineBatch != null);
    if (pipelineBatch != null) {
      buffer.writeInt64(pipelineBatch!);
    }
    buffer.writeBool(pipelineCap != null);
    if (pipelineCap != null) {
      buffer.writeInt64(pipelineCap!);
    }
    buffer.writeBool(scanConsistency != null);
    if (scanConsistency != null) {
      scanConsistency!.write(buffer);
    }
    buffer.writeUInt64(mutationState.length);
    for (final item in mutationState) {
      item.write(buffer);
    }
    buffer.writeBool(queryContext != null);
    if (queryContext != null) {
      buffer.writeString(queryContext!);
    }
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    profile.write(buffer);
    buffer.writeUInt64(raw.length);
    for (final entry in raw.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeUInt64(positionalParameters.length);
    for (final item in positionalParameters) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(namedParameters.length);
    for (final entry in namedParameters.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeBool(sendToNode != null);
    if (sendToNode != null) {
      buffer.writeString(sendToNode!);
    }
    buffer.writeString(bodyStr);
  }
}

class McbpNoopResponse {
  McbpNoopResponse();

  factory McbpNoopResponse.read(MessageBuffer buffer) {
    return McbpNoopResponse();
  }

  void write(MessageBuffer buffer) {}
}

class McbpNoopRequest {
  McbpNoopRequest({
    required this.partition,
    required this.opaque,
    required this.timeout,
  });

  factory McbpNoopRequest.read(MessageBuffer buffer) {
    return McbpNoopRequest(
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final int partition;
  final int opaque;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ReplaceResponse {
  ReplaceResponse({
    required this.cas,
    required this.token,
  });

  factory ReplaceResponse.read(MessageBuffer buffer) {
    return ReplaceResponse(
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    token.write(buffer);
  }
}

class ReplaceRequest {
  ReplaceRequest({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.flags,
    required this.expiry,
    required this.cas,
    required this.durabilityLevel,
    required this.timeout,
    required this.preserveExpiry,
  });

  factory ReplaceRequest.read(MessageBuffer buffer) {
    return ReplaceRequest(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      preserveExpiry: buffer.readBool(),
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final int flags;
  final int expiry;
  final Cas cas;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;
  final bool preserveExpiry;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    cas.write(buffer);
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeBool(preserveExpiry);
  }
}

class ReplaceWithLegacyDurability {
  ReplaceWithLegacyDurability({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.flags,
    required this.expiry,
    required this.cas,
    required this.timeout,
    required this.preserveExpiry,
    required this.persistTo,
    required this.replicateTo,
  });

  factory ReplaceWithLegacyDurability.read(MessageBuffer buffer) {
    return ReplaceWithLegacyDurability(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      preserveExpiry: buffer.readBool(),
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final int flags;
  final int expiry;
  final Cas cas;
  final Duration? timeout;
  final bool preserveExpiry;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    cas.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeBool(preserveExpiry);
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class GetAndTouchResponse {
  GetAndTouchResponse({
    required this.value,
    required this.cas,
    required this.flags,
  });

  factory GetAndTouchResponse.read(MessageBuffer buffer) {
    return GetAndTouchResponse(
      value: buffer.readData(),
      cas: CasMessage.read(buffer),
      flags: buffer.readInt64(),
    );
  }

  final Uint8List value;
  final Cas cas;
  final int flags;

  void write(MessageBuffer buffer) {
    buffer.writeData(value);
    cas.write(buffer);
    buffer.writeInt64(flags);
  }
}

class GetAndTouchRequest {
  GetAndTouchRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.expiry,
    required this.timeout,
  });

  factory GetAndTouchRequest.read(MessageBuffer buffer) {
    return GetAndTouchRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      expiry: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final int expiry;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(expiry);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class RemoveResponse {
  RemoveResponse({
    required this.cas,
    required this.token,
  });

  factory RemoveResponse.read(MessageBuffer buffer) {
    return RemoveResponse(
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    token.write(buffer);
  }
}

class RemoveRequest {
  RemoveRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.cas,
    required this.durabilityLevel,
    required this.timeout,
  });

  factory RemoveRequest.read(MessageBuffer buffer) {
    return RemoveRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Cas cas;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    cas.write(buffer);
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class RemoveWithLegacyDurability {
  RemoveWithLegacyDurability({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.cas,
    required this.timeout,
    required this.persistTo,
    required this.replicateTo,
  });

  factory RemoveWithLegacyDurability.read(MessageBuffer buffer) {
    return RemoveWithLegacyDurability(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Cas cas;
  final Duration? timeout;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    cas.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class GetResponse {
  GetResponse({
    required this.value,
    required this.cas,
    required this.flags,
  });

  factory GetResponse.read(MessageBuffer buffer) {
    return GetResponse(
      value: buffer.readData(),
      cas: CasMessage.read(buffer),
      flags: buffer.readInt64(),
    );
  }

  final Uint8List value;
  final Cas cas;
  final int flags;

  void write(MessageBuffer buffer) {
    buffer.writeData(value);
    cas.write(buffer);
    buffer.writeInt64(flags);
  }
}

class GetRequest {
  GetRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.timeout,
  });

  factory GetRequest.read(MessageBuffer buffer) {
    return GetRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class AnalyticsResponse {
  AnalyticsResponse({
    required this.meta,
    required this.rows,
  });

  factory AnalyticsResponse.read(MessageBuffer buffer) {
    return AnalyticsResponse(
      meta: AnalyticsResponseAnalyticsMetaData.read(buffer),
      rows: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
    );
  }

  final AnalyticsResponseAnalyticsMetaData meta;
  final List<String> rows;

  void write(MessageBuffer buffer) {
    meta.write(buffer);
    buffer.writeUInt64(rows.length);
    for (final item in rows) {
      buffer.writeString(item);
    }
  }
}

class AnalyticsResponseAnalyticsMetrics {
  AnalyticsResponseAnalyticsMetrics({
    required this.elapsedTime,
    required this.executionTime,
    required this.resultCount,
    required this.resultSize,
    required this.errorCount,
    required this.processedObjects,
    required this.warningCount,
  });

  factory AnalyticsResponseAnalyticsMetrics.read(MessageBuffer buffer) {
    return AnalyticsResponseAnalyticsMetrics(
      elapsedTime: Duration(microseconds: buffer.readInt64()),
      executionTime: Duration(microseconds: buffer.readInt64()),
      resultCount: buffer.readInt64(),
      resultSize: buffer.readInt64(),
      errorCount: buffer.readInt64(),
      processedObjects: buffer.readInt64(),
      warningCount: buffer.readInt64(),
    );
  }

  final Duration elapsedTime;
  final Duration executionTime;
  final int resultCount;
  final int resultSize;
  final int errorCount;
  final int processedObjects;
  final int warningCount;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(elapsedTime.inMicroseconds);
    buffer.writeInt64(executionTime.inMicroseconds);
    buffer.writeInt64(resultCount);
    buffer.writeInt64(resultSize);
    buffer.writeInt64(errorCount);
    buffer.writeInt64(processedObjects);
    buffer.writeInt64(warningCount);
  }
}

class AnalyticsResponseAnalyticsProblem {
  AnalyticsResponseAnalyticsProblem({
    required this.code,
    required this.message,
  });

  factory AnalyticsResponseAnalyticsProblem.read(MessageBuffer buffer) {
    return AnalyticsResponseAnalyticsProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class AnalyticsResponseAnalyticsMetaData {
  AnalyticsResponseAnalyticsMetaData({
    required this.requestId,
    required this.clientContextId,
    required this.status,
    required this.metrics,
    required this.signature,
    required this.errors,
    required this.warnings,
  });

  factory AnalyticsResponseAnalyticsMetaData.read(MessageBuffer buffer) {
    return AnalyticsResponseAnalyticsMetaData(
      requestId: buffer.readString(),
      clientContextId: buffer.readString(),
      status: AnalyticsStatus.read(buffer),
      metrics: AnalyticsResponseAnalyticsMetrics.read(buffer),
      signature: buffer.readBool() ? buffer.readString() : null,
      errors: List.generate(buffer.readUInt64(),
          (_) => AnalyticsResponseAnalyticsProblem.read(buffer)),
      warnings: List.generate(buffer.readUInt64(),
          (_) => AnalyticsResponseAnalyticsProblem.read(buffer)),
    );
  }

  final String requestId;
  final String clientContextId;
  final AnalyticsStatus status;
  final AnalyticsResponseAnalyticsMetrics metrics;
  final String? signature;
  final List<AnalyticsResponseAnalyticsProblem> errors;
  final List<AnalyticsResponseAnalyticsProblem> warnings;

  void write(MessageBuffer buffer) {
    buffer.writeString(requestId);
    buffer.writeString(clientContextId);
    status.write(buffer);
    metrics.write(buffer);
    buffer.writeBool(signature != null);
    if (signature != null) {
      buffer.writeString(signature!);
    }
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
    buffer.writeUInt64(warnings.length);
    for (final item in warnings) {
      item.write(buffer);
    }
  }
}

class AnalyticsRequest {
  AnalyticsRequest({
    required this.statement,
    required this.readonly,
    required this.priority,
    required this.bucketName,
    required this.scopeName,
    required this.scopeQualifier,
    required this.scanConsistency,
    required this.raw,
    required this.positionalParameters,
    required this.namedParameters,
    required this.clientContextId,
    required this.timeout,
    required this.bodyStr,
  });

  factory AnalyticsRequest.read(MessageBuffer buffer) {
    return AnalyticsRequest(
      statement: buffer.readString(),
      readonly: buffer.readBool(),
      priority: buffer.readBool(),
      bucketName: buffer.readBool() ? buffer.readString() : null,
      scopeName: buffer.readBool() ? buffer.readString() : null,
      scopeQualifier: buffer.readBool() ? buffer.readString() : null,
      scanConsistency:
          buffer.readBool() ? AnalyticsScanConsistency.read(buffer) : null,
      raw: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      positionalParameters:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      namedParameters: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      bodyStr: buffer.readString(),
    );
  }

  final String statement;
  final bool readonly;
  final bool priority;
  final String? bucketName;
  final String? scopeName;
  final String? scopeQualifier;
  final AnalyticsScanConsistency? scanConsistency;
  final Map<String, String> raw;
  final List<String> positionalParameters;
  final Map<String, String> namedParameters;
  final String? clientContextId;
  final Duration? timeout;
  final String bodyStr;

  void write(MessageBuffer buffer) {
    buffer.writeString(statement);
    buffer.writeBool(readonly);
    buffer.writeBool(priority);
    buffer.writeBool(bucketName != null);
    if (bucketName != null) {
      buffer.writeString(bucketName!);
    }
    buffer.writeBool(scopeName != null);
    if (scopeName != null) {
      buffer.writeString(scopeName!);
    }
    buffer.writeBool(scopeQualifier != null);
    if (scopeQualifier != null) {
      buffer.writeString(scopeQualifier!);
    }
    buffer.writeBool(scanConsistency != null);
    if (scanConsistency != null) {
      scanConsistency!.write(buffer);
    }
    buffer.writeUInt64(raw.length);
    for (final entry in raw.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeUInt64(positionalParameters.length);
    for (final item in positionalParameters) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(namedParameters.length);
    for (final entry in namedParameters.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeString(bodyStr);
  }
}

class GetProjectedResponse {
  GetProjectedResponse({
    required this.value,
    required this.cas,
    required this.flags,
    required this.expiry,
  });

  factory GetProjectedResponse.read(MessageBuffer buffer) {
    return GetProjectedResponse(
      value: buffer.readData(),
      cas: CasMessage.read(buffer),
      flags: buffer.readInt64(),
      expiry: buffer.readBool() ? buffer.readInt64() : null,
    );
  }

  final Uint8List value;
  final Cas cas;
  final int flags;
  final int? expiry;

  void write(MessageBuffer buffer) {
    buffer.writeData(value);
    cas.write(buffer);
    buffer.writeInt64(flags);
    buffer.writeBool(expiry != null);
    if (expiry != null) {
      buffer.writeInt64(expiry!);
    }
  }
}

class GetProjectedRequest {
  GetProjectedRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.projections,
    required this.withExpiry,
    required this.effectiveProjections,
    required this.preserveArrayIndexes,
    required this.timeout,
  });

  factory GetProjectedRequest.read(MessageBuffer buffer) {
    return GetProjectedRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      projections:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      withExpiry: buffer.readBool(),
      effectiveProjections:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      preserveArrayIndexes: buffer.readBool(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final List<String> projections;
  final bool withExpiry;
  final List<String> effectiveProjections;
  final bool preserveArrayIndexes;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeUInt64(projections.length);
    for (final item in projections) {
      buffer.writeString(item);
    }
    buffer.writeBool(withExpiry);
    buffer.writeUInt64(effectiveProjections.length);
    for (final item in effectiveProjections) {
      buffer.writeString(item);
    }
    buffer.writeBool(preserveArrayIndexes);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class DecrementResponse {
  DecrementResponse({
    required this.content,
    required this.cas,
    required this.token,
  });

  factory DecrementResponse.read(MessageBuffer buffer) {
    return DecrementResponse(
      content: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final int content;
  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(content);
    cas.write(buffer);
    token.write(buffer);
  }
}

class DecrementRequest {
  DecrementRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.expiry,
    required this.delta,
    required this.initialValue,
    required this.durabilityLevel,
    required this.timeout,
  });

  factory DecrementRequest.read(MessageBuffer buffer) {
    return DecrementRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      expiry: buffer.readInt64(),
      delta: buffer.readInt64(),
      initialValue: buffer.readBool() ? buffer.readInt64() : null,
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final int expiry;
  final int delta;
  final int? initialValue;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(expiry);
    buffer.writeInt64(delta);
    buffer.writeBool(initialValue != null);
    if (initialValue != null) {
      buffer.writeInt64(initialValue!);
    }
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class DecrementWithLegacyDurability {
  DecrementWithLegacyDurability({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.expiry,
    required this.delta,
    required this.initialValue,
    required this.timeout,
    required this.persistTo,
    required this.replicateTo,
  });

  factory DecrementWithLegacyDurability.read(MessageBuffer buffer) {
    return DecrementWithLegacyDurability(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      expiry: buffer.readInt64(),
      delta: buffer.readInt64(),
      initialValue: buffer.readBool() ? buffer.readInt64() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final int expiry;
  final int delta;
  final int? initialValue;
  final Duration? timeout;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(expiry);
    buffer.writeInt64(delta);
    buffer.writeBool(initialValue != null);
    if (initialValue != null) {
      buffer.writeInt64(initialValue!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class SearchResponse {
  SearchResponse({
    required this.status,
    required this.meta,
    required this.error,
    required this.rows,
    required this.facets,
  });

  factory SearchResponse.read(MessageBuffer buffer) {
    return SearchResponse(
      status: buffer.readString(),
      meta: SearchResponseSearchMetaData.read(buffer),
      error: buffer.readString(),
      rows: List.generate(
          buffer.readUInt64(), (_) => SearchResponseSearchRow.read(buffer)),
      facets: List.generate(
          buffer.readUInt64(), (_) => SearchResponseSearchFacet.read(buffer)),
    );
  }

  final String status;
  final SearchResponseSearchMetaData meta;
  final String error;
  final List<SearchResponseSearchRow> rows;
  final List<SearchResponseSearchFacet> facets;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    meta.write(buffer);
    buffer.writeString(error);
    buffer.writeUInt64(rows.length);
    for (final item in rows) {
      item.write(buffer);
    }
    buffer.writeUInt64(facets.length);
    for (final item in facets) {
      item.write(buffer);
    }
  }
}

class SearchResponseSearchMetrics {
  SearchResponseSearchMetrics({
    required this.took,
    required this.totalRows,
    required this.maxScore,
    required this.successPartitionCount,
    required this.errorPartitionCount,
  });

  factory SearchResponseSearchMetrics.read(MessageBuffer buffer) {
    return SearchResponseSearchMetrics(
      took: Duration(microseconds: buffer.readInt64()),
      totalRows: buffer.readInt64(),
      maxScore: buffer.readDouble(),
      successPartitionCount: buffer.readInt64(),
      errorPartitionCount: buffer.readInt64(),
    );
  }

  final Duration took;
  final int totalRows;
  final double maxScore;
  final int successPartitionCount;
  final int errorPartitionCount;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(took.inMicroseconds);
    buffer.writeInt64(totalRows);
    buffer.writeDouble(maxScore);
    buffer.writeInt64(successPartitionCount);
    buffer.writeInt64(errorPartitionCount);
  }
}

class SearchResponseSearchMetaData {
  SearchResponseSearchMetaData({
    required this.clientContextId,
    required this.metrics,
    required this.errors,
  });

  factory SearchResponseSearchMetaData.read(MessageBuffer buffer) {
    return SearchResponseSearchMetaData(
      clientContextId: buffer.readString(),
      metrics: SearchResponseSearchMetrics.read(buffer),
      errors: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
    );
  }

  final String clientContextId;
  final SearchResponseSearchMetrics metrics;
  final Map<String, String> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(clientContextId);
    metrics.write(buffer);
    buffer.writeUInt64(errors.length);
    for (final entry in errors.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
  }
}

class SearchResponseSearchLocation {
  SearchResponseSearchLocation({
    required this.field,
    required this.term,
    required this.position,
    required this.startOffset,
    required this.endOffset,
    required this.arrayPositions,
  });

  factory SearchResponseSearchLocation.read(MessageBuffer buffer) {
    return SearchResponseSearchLocation(
      field: buffer.readString(),
      term: buffer.readString(),
      position: buffer.readInt64(),
      startOffset: buffer.readInt64(),
      endOffset: buffer.readInt64(),
      arrayPositions: buffer.readBool()
          ? List.generate(buffer.readUInt64(), (_) => buffer.readInt64())
          : null,
    );
  }

  final String field;
  final String term;
  final int position;
  final int startOffset;
  final int endOffset;
  final List<int>? arrayPositions;

  void write(MessageBuffer buffer) {
    buffer.writeString(field);
    buffer.writeString(term);
    buffer.writeInt64(position);
    buffer.writeInt64(startOffset);
    buffer.writeInt64(endOffset);
    buffer.writeBool(arrayPositions != null);
    if (arrayPositions != null) {
      buffer.writeUInt64(arrayPositions!.length);
      for (final item in arrayPositions!) {
        buffer.writeInt64(item);
      }
    }
  }
}

class SearchResponseSearchRow {
  SearchResponseSearchRow({
    required this.index,
    required this.id,
    required this.score,
    required this.locations,
    required this.fragments,
    required this.fields,
    required this.explanation,
  });

  factory SearchResponseSearchRow.read(MessageBuffer buffer) {
    return SearchResponseSearchRow(
      index: buffer.readString(),
      id: buffer.readString(),
      score: buffer.readDouble(),
      locations: List.generate(buffer.readUInt64(),
          (_) => SearchResponseSearchLocation.read(buffer)),
      fragments: (() {
        final map = <String, List<String>>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] =
              List.generate(buffer.readUInt64(), (_) => buffer.readString());
        }
        return map;
      })(),
      fields: buffer.readString(),
      explanation: buffer.readString(),
    );
  }

  final String index;
  final String id;
  final double score;
  final List<SearchResponseSearchLocation> locations;
  final Map<String, List<String>> fragments;
  final String fields;
  final String explanation;

  void write(MessageBuffer buffer) {
    buffer.writeString(index);
    buffer.writeString(id);
    buffer.writeDouble(score);
    buffer.writeUInt64(locations.length);
    for (final item in locations) {
      item.write(buffer);
    }
    buffer.writeUInt64(fragments.length);
    for (final entry in fragments.entries) {
      buffer.writeString(entry.key);
      buffer.writeUInt64(entry.value.length);
      for (final item in entry.value) {
        buffer.writeString(item);
      }
    }
    buffer.writeString(fields);
    buffer.writeString(explanation);
  }
}

class SearchResponseSearchFacet {
  SearchResponseSearchFacet({
    required this.name,
    required this.field,
    required this.total,
    required this.missing,
    required this.other,
    required this.terms,
    required this.dateRanges,
    required this.numericRanges,
  });

  factory SearchResponseSearchFacet.read(MessageBuffer buffer) {
    return SearchResponseSearchFacet(
      name: buffer.readString(),
      field: buffer.readString(),
      total: buffer.readInt64(),
      missing: buffer.readInt64(),
      other: buffer.readInt64(),
      terms: List.generate(buffer.readUInt64(),
          (_) => SearchResponseSearchFacetTermFacet.read(buffer)),
      dateRanges: List.generate(buffer.readUInt64(),
          (_) => SearchResponseSearchFacetDateRangeFacet.read(buffer)),
      numericRanges: List.generate(buffer.readUInt64(),
          (_) => SearchResponseSearchFacetNumericRangeFacet.read(buffer)),
    );
  }

  final String name;
  final String field;
  final int total;
  final int missing;
  final int other;
  final List<SearchResponseSearchFacetTermFacet> terms;
  final List<SearchResponseSearchFacetDateRangeFacet> dateRanges;
  final List<SearchResponseSearchFacetNumericRangeFacet> numericRanges;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeString(field);
    buffer.writeInt64(total);
    buffer.writeInt64(missing);
    buffer.writeInt64(other);
    buffer.writeUInt64(terms.length);
    for (final item in terms) {
      item.write(buffer);
    }
    buffer.writeUInt64(dateRanges.length);
    for (final item in dateRanges) {
      item.write(buffer);
    }
    buffer.writeUInt64(numericRanges.length);
    for (final item in numericRanges) {
      item.write(buffer);
    }
  }
}

class SearchResponseSearchFacetTermFacet {
  SearchResponseSearchFacetTermFacet({
    required this.term,
    required this.count,
  });

  factory SearchResponseSearchFacetTermFacet.read(MessageBuffer buffer) {
    return SearchResponseSearchFacetTermFacet(
      term: buffer.readString(),
      count: buffer.readInt64(),
    );
  }

  final String term;
  final int count;

  void write(MessageBuffer buffer) {
    buffer.writeString(term);
    buffer.writeInt64(count);
  }
}

class SearchResponseSearchFacetDateRangeFacet {
  SearchResponseSearchFacetDateRangeFacet({
    required this.name,
    required this.count,
    required this.start,
    required this.end,
  });

  factory SearchResponseSearchFacetDateRangeFacet.read(MessageBuffer buffer) {
    return SearchResponseSearchFacetDateRangeFacet(
      name: buffer.readString(),
      count: buffer.readInt64(),
      start: buffer.readBool() ? buffer.readString() : null,
      end: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final String name;
  final int count;
  final String? start;
  final String? end;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeInt64(count);
    buffer.writeBool(start != null);
    if (start != null) {
      buffer.writeString(start!);
    }
    buffer.writeBool(end != null);
    if (end != null) {
      buffer.writeString(end!);
    }
  }
}

class SearchResponseSearchFacetNumericRangeFacet {
  SearchResponseSearchFacetNumericRangeFacet({
    required this.name,
    required this.count,
    required this.min,
    required this.max,
  });

  factory SearchResponseSearchFacetNumericRangeFacet.read(
      MessageBuffer buffer) {
    return SearchResponseSearchFacetNumericRangeFacet(
      name: buffer.readString(),
      count: buffer.readInt64(),
      min: (() {
        final variantIndex = buffer.readUInt8();
        switch (variantIndex) {
          case 0:
            return null;
          case 1:
            return buffer.readInt64();
          case 2:
            return buffer.readDouble();
          default:
            throw StateError("Invalid variant index: $variantIndex");
        }
      })(),
      max: (() {
        final variantIndex = buffer.readUInt8();
        switch (variantIndex) {
          case 0:
            return null;
          case 1:
            return buffer.readInt64();
          case 2:
            return buffer.readDouble();
          default:
            throw StateError("Invalid variant index: $variantIndex");
        }
      })(),
    );
  }

  final String name;
  final int count;
  final Object? min;
  final Object? max;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeInt64(count);
    if (min is Null) {
      buffer.writeUInt8(0);
    } else if (min is int) {
      buffer.writeUInt8(1);
      buffer.writeInt64((min as int));
    } else if (min is double) {
      buffer.writeUInt8(2);
      buffer.writeDouble((min as double));
    } else {
      throw StateError("Invalid variant type: $min");
    }
    if (max is Null) {
      buffer.writeUInt8(0);
    } else if (max is int) {
      buffer.writeUInt8(1);
      buffer.writeInt64((max as int));
    } else if (max is double) {
      buffer.writeUInt8(2);
      buffer.writeDouble((max as double));
    } else {
      throw StateError("Invalid variant type: $max");
    }
  }
}

class SearchRequest {
  SearchRequest({
    required this.indexName,
    required this.query,
    required this.limit,
    required this.skip,
    required this.explain,
    required this.disableScoring,
    required this.includeLocations,
    required this.highlightStyle,
    required this.highlightFields,
    required this.fields,
    required this.collections,
    required this.scanConsistency,
    required this.mutationState,
    required this.sortSpecs,
    required this.facets,
    required this.raw,
    required this.clientContextId,
    required this.timeout,
    required this.bodyStr,
  });

  factory SearchRequest.read(MessageBuffer buffer) {
    return SearchRequest(
      indexName: buffer.readString(),
      query: buffer.readString(),
      limit: buffer.readBool() ? buffer.readInt64() : null,
      skip: buffer.readBool() ? buffer.readInt64() : null,
      explain: buffer.readBool(),
      disableScoring: buffer.readBool(),
      includeLocations: buffer.readBool(),
      highlightStyle:
          buffer.readBool() ? SearchHighlightStyle.read(buffer) : null,
      highlightFields:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      fields: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      collections:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      scanConsistency:
          buffer.readBool() ? SearchScanConsistency.read(buffer) : null,
      mutationState: List.generate(
          buffer.readUInt64(), (_) => MutationTokenMessage.read(buffer)),
      sortSpecs: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      facets: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      raw: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      bodyStr: buffer.readString(),
    );
  }

  final String indexName;
  final String query;
  final int? limit;
  final int? skip;
  final bool explain;
  final bool disableScoring;
  final bool includeLocations;
  final SearchHighlightStyle? highlightStyle;
  final List<String> highlightFields;
  final List<String> fields;
  final List<String> collections;
  final SearchScanConsistency? scanConsistency;
  final List<MutationToken> mutationState;
  final List<String> sortSpecs;
  final Map<String, String> facets;
  final Map<String, String> raw;
  final String? clientContextId;
  final Duration? timeout;
  final String bodyStr;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeString(query);
    buffer.writeBool(limit != null);
    if (limit != null) {
      buffer.writeInt64(limit!);
    }
    buffer.writeBool(skip != null);
    if (skip != null) {
      buffer.writeInt64(skip!);
    }
    buffer.writeBool(explain);
    buffer.writeBool(disableScoring);
    buffer.writeBool(includeLocations);
    buffer.writeBool(highlightStyle != null);
    if (highlightStyle != null) {
      highlightStyle!.write(buffer);
    }
    buffer.writeUInt64(highlightFields.length);
    for (final item in highlightFields) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(fields.length);
    for (final item in fields) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(collections.length);
    for (final item in collections) {
      buffer.writeString(item);
    }
    buffer.writeBool(scanConsistency != null);
    if (scanConsistency != null) {
      scanConsistency!.write(buffer);
    }
    buffer.writeUInt64(mutationState.length);
    for (final item in mutationState) {
      item.write(buffer);
    }
    buffer.writeUInt64(sortSpecs.length);
    for (final item in sortSpecs) {
      buffer.writeString(item);
    }
    buffer.writeUInt64(facets.length);
    for (final entry in facets.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeUInt64(raw.length);
    for (final entry in raw.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeString(bodyStr);
  }
}

class TouchResponse {
  TouchResponse({
    required this.cas,
  });

  factory TouchResponse.read(MessageBuffer buffer) {
    return TouchResponse(
      cas: CasMessage.read(buffer),
    );
  }

  final Cas cas;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
  }
}

class TouchRequest {
  TouchRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.expiry,
    required this.timeout,
  });

  factory TouchRequest.read(MessageBuffer buffer) {
    return TouchRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      expiry: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final int expiry;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(expiry);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class LookupInResponse {
  LookupInResponse({
    required this.cas,
    required this.fields,
    required this.deleted,
  });

  factory LookupInResponse.read(MessageBuffer buffer) {
    return LookupInResponse(
      cas: CasMessage.read(buffer),
      fields: List.generate(
          buffer.readUInt64(), (_) => LookupInResponseEntry.read(buffer)),
      deleted: buffer.readBool(),
    );
  }

  final Cas cas;
  final List<LookupInResponseEntry> fields;
  final bool deleted;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    buffer.writeUInt64(fields.length);
    for (final item in fields) {
      item.write(buffer);
    }
    buffer.writeBool(deleted);
  }
}

class LookupInResponseEntry {
  LookupInResponseEntry({
    required this.path,
    required this.value,
    required this.originalIndex,
    required this.exists,
    required this.opcode,
    required this.status,
    required this.ec,
  });

  factory LookupInResponseEntry.read(MessageBuffer buffer) {
    return LookupInResponseEntry(
      path: buffer.readString(),
      value: buffer.readData(),
      originalIndex: buffer.readInt64(),
      exists: buffer.readBool(),
      opcode: SubdocOpcode.read(buffer),
      status: KeyValueStatusCode.read(buffer),
      ec: ErrorCode.read(buffer),
    );
  }

  final String path;
  final Uint8List value;
  final int originalIndex;
  final bool exists;
  final SubdocOpcode opcode;
  final KeyValueStatusCode status;
  final ErrorCode ec;

  void write(MessageBuffer buffer) {
    buffer.writeString(path);
    buffer.writeData(value);
    buffer.writeInt64(originalIndex);
    buffer.writeBool(exists);
    opcode.write(buffer);
    status.write(buffer);
    ec.write(buffer);
  }
}

class LookupInRequest {
  LookupInRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.accessDeleted,
    required this.specs,
    required this.timeout,
  });

  factory LookupInRequest.read(MessageBuffer buffer) {
    return LookupInRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      accessDeleted: buffer.readBool(),
      specs: List.generate(
          buffer.readUInt64(), (_) => ImplSubdocCommand.read(buffer)),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final bool accessDeleted;
  final List<ImplSubdocCommand> specs;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeBool(accessDeleted);
    buffer.writeUInt64(specs.length);
    for (final item in specs) {
      item.write(buffer);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class DocumentViewResponse {
  DocumentViewResponse({
    required this.meta,
    required this.rows,
    required this.error,
  });

  factory DocumentViewResponse.read(MessageBuffer buffer) {
    return DocumentViewResponse(
      meta: DocumentViewResponseMetaData.read(buffer),
      rows: List.generate(
          buffer.readUInt64(), (_) => DocumentViewResponseRow.read(buffer)),
      error:
          buffer.readBool() ? DocumentViewResponseProblem.read(buffer) : null,
    );
  }

  final DocumentViewResponseMetaData meta;
  final List<DocumentViewResponseRow> rows;
  final DocumentViewResponseProblem? error;

  void write(MessageBuffer buffer) {
    meta.write(buffer);
    buffer.writeUInt64(rows.length);
    for (final item in rows) {
      item.write(buffer);
    }
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class DocumentViewResponseMetaData {
  DocumentViewResponseMetaData({
    required this.totalRows,
    required this.debugInfo,
  });

  factory DocumentViewResponseMetaData.read(MessageBuffer buffer) {
    return DocumentViewResponseMetaData(
      totalRows: buffer.readBool() ? buffer.readInt64() : null,
      debugInfo: buffer.readBool() ? buffer.readString() : null,
    );
  }

  final int? totalRows;
  final String? debugInfo;

  void write(MessageBuffer buffer) {
    buffer.writeBool(totalRows != null);
    if (totalRows != null) {
      buffer.writeInt64(totalRows!);
    }
    buffer.writeBool(debugInfo != null);
    if (debugInfo != null) {
      buffer.writeString(debugInfo!);
    }
  }
}

class DocumentViewResponseRow {
  DocumentViewResponseRow({
    required this.id,
    required this.key,
    required this.value,
  });

  factory DocumentViewResponseRow.read(MessageBuffer buffer) {
    return DocumentViewResponseRow(
      id: buffer.readBool() ? buffer.readString() : null,
      key: buffer.readString(),
      value: buffer.readString(),
    );
  }

  final String? id;
  final String key;
  final String value;

  void write(MessageBuffer buffer) {
    buffer.writeBool(id != null);
    if (id != null) {
      buffer.writeString(id!);
    }
    buffer.writeString(key);
    buffer.writeString(value);
  }
}

class DocumentViewResponseProblem {
  DocumentViewResponseProblem({
    required this.code,
    required this.message,
  });

  factory DocumentViewResponseProblem.read(MessageBuffer buffer) {
    return DocumentViewResponseProblem(
      code: buffer.readString(),
      message: buffer.readString(),
    );
  }

  final String code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeString(code);
    buffer.writeString(message);
  }
}

class DocumentViewRequest {
  DocumentViewRequest({
    required this.bucketName,
    required this.documentName,
    required this.viewName,
    required this.ns,
    required this.limit,
    required this.skip,
    required this.consistency,
    required this.keys,
    required this.key,
    required this.startKey,
    required this.endKey,
    required this.startKeyDocId,
    required this.endKeyDocId,
    required this.inclusiveEnd,
    required this.reduce,
    required this.group,
    required this.groupLevel,
    required this.debug,
    required this.raw,
    required this.order,
    required this.onError,
    required this.queryString,
    required this.clientContextId,
    required this.timeout,
  });

  factory DocumentViewRequest.read(MessageBuffer buffer) {
    return DocumentViewRequest(
      bucketName: buffer.readString(),
      documentName: buffer.readString(),
      viewName: buffer.readString(),
      ns: DesignDocumentNamespace.read(buffer),
      limit: buffer.readBool() ? buffer.readInt64() : null,
      skip: buffer.readBool() ? buffer.readInt64() : null,
      consistency: buffer.readBool() ? ViewScanConsistency.read(buffer) : null,
      keys: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      key: buffer.readBool() ? buffer.readString() : null,
      startKey: buffer.readBool() ? buffer.readString() : null,
      endKey: buffer.readBool() ? buffer.readString() : null,
      startKeyDocId: buffer.readBool() ? buffer.readString() : null,
      endKeyDocId: buffer.readBool() ? buffer.readString() : null,
      inclusiveEnd: buffer.readBool() ? buffer.readBool() : null,
      reduce: buffer.readBool() ? buffer.readBool() : null,
      group: buffer.readBool() ? buffer.readBool() : null,
      groupLevel: buffer.readBool() ? buffer.readInt64() : null,
      debug: buffer.readBool(),
      raw: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      order: buffer.readBool() ? ViewSortOrder.read(buffer) : null,
      onError: buffer.readBool() ? ViewOnError.read(buffer) : null,
      queryString:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String documentName;
  final String viewName;
  final DesignDocumentNamespace ns;
  final int? limit;
  final int? skip;
  final ViewScanConsistency? consistency;
  final List<String> keys;
  final String? key;
  final String? startKey;
  final String? endKey;
  final String? startKeyDocId;
  final String? endKeyDocId;
  final bool? inclusiveEnd;
  final bool? reduce;
  final bool? group;
  final int? groupLevel;
  final bool debug;
  final Map<String, String> raw;
  final ViewSortOrder? order;
  final ViewOnError? onError;
  final List<String> queryString;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(documentName);
    buffer.writeString(viewName);
    ns.write(buffer);
    buffer.writeBool(limit != null);
    if (limit != null) {
      buffer.writeInt64(limit!);
    }
    buffer.writeBool(skip != null);
    if (skip != null) {
      buffer.writeInt64(skip!);
    }
    buffer.writeBool(consistency != null);
    if (consistency != null) {
      consistency!.write(buffer);
    }
    buffer.writeUInt64(keys.length);
    for (final item in keys) {
      buffer.writeString(item);
    }
    buffer.writeBool(key != null);
    if (key != null) {
      buffer.writeString(key!);
    }
    buffer.writeBool(startKey != null);
    if (startKey != null) {
      buffer.writeString(startKey!);
    }
    buffer.writeBool(endKey != null);
    if (endKey != null) {
      buffer.writeString(endKey!);
    }
    buffer.writeBool(startKeyDocId != null);
    if (startKeyDocId != null) {
      buffer.writeString(startKeyDocId!);
    }
    buffer.writeBool(endKeyDocId != null);
    if (endKeyDocId != null) {
      buffer.writeString(endKeyDocId!);
    }
    buffer.writeBool(inclusiveEnd != null);
    if (inclusiveEnd != null) {
      buffer.writeBool(inclusiveEnd!);
    }
    buffer.writeBool(reduce != null);
    if (reduce != null) {
      buffer.writeBool(reduce!);
    }
    buffer.writeBool(group != null);
    if (group != null) {
      buffer.writeBool(group!);
    }
    buffer.writeBool(groupLevel != null);
    if (groupLevel != null) {
      buffer.writeInt64(groupLevel!);
    }
    buffer.writeBool(debug);
    buffer.writeUInt64(raw.length);
    for (final entry in raw.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeBool(order != null);
    if (order != null) {
      order!.write(buffer);
    }
    buffer.writeBool(onError != null);
    if (onError != null) {
      onError!.write(buffer);
    }
    buffer.writeUInt64(queryString.length);
    for (final item in queryString) {
      buffer.writeString(item);
    }
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class GetAndLockResponse {
  GetAndLockResponse({
    required this.value,
    required this.cas,
    required this.flags,
  });

  factory GetAndLockResponse.read(MessageBuffer buffer) {
    return GetAndLockResponse(
      value: buffer.readData(),
      cas: CasMessage.read(buffer),
      flags: buffer.readInt64(),
    );
  }

  final Uint8List value;
  final Cas cas;
  final int flags;

  void write(MessageBuffer buffer) {
    buffer.writeData(value);
    cas.write(buffer);
    buffer.writeInt64(flags);
  }
}

class GetAndLockRequest {
  GetAndLockRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.lockTime,
    required this.timeout,
  });

  factory GetAndLockRequest.read(MessageBuffer buffer) {
    return GetAndLockRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      lockTime: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final int lockTime;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(lockTime);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class InsertResponse {
  InsertResponse({
    required this.cas,
    required this.token,
  });

  factory InsertResponse.read(MessageBuffer buffer) {
    return InsertResponse(
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    token.write(buffer);
  }
}

class InsertRequest {
  InsertRequest({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.flags,
    required this.expiry,
    required this.durabilityLevel,
    required this.timeout,
  });

  factory InsertRequest.read(MessageBuffer buffer) {
    return InsertRequest(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final int flags;
  final int expiry;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class InsertWithLegacyDurability {
  InsertWithLegacyDurability({
    required this.id,
    required this.value,
    required this.partition,
    required this.opaque,
    required this.flags,
    required this.expiry,
    required this.timeout,
    required this.persistTo,
    required this.replicateTo,
  });

  factory InsertWithLegacyDurability.read(MessageBuffer buffer) {
    return InsertWithLegacyDurability(
      id: DocumentId.read(buffer),
      value: buffer.readData(),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final Uint8List value;
  final int partition;
  final int opaque;
  final int flags;
  final int expiry;
  final Duration? timeout;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeData(value);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class MutateInResponse {
  MutateInResponse({
    required this.cas,
    required this.token,
    required this.fields,
    required this.deleted,
  });

  factory MutateInResponse.read(MessageBuffer buffer) {
    return MutateInResponse(
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
      fields: List.generate(
          buffer.readUInt64(), (_) => MutateInResponseEntry.read(buffer)),
      deleted: buffer.readBool(),
    );
  }

  final Cas cas;
  final MutationToken token;
  final List<MutateInResponseEntry> fields;
  final bool deleted;

  void write(MessageBuffer buffer) {
    cas.write(buffer);
    token.write(buffer);
    buffer.writeUInt64(fields.length);
    for (final item in fields) {
      item.write(buffer);
    }
    buffer.writeBool(deleted);
  }
}

class MutateInResponseEntry {
  MutateInResponseEntry({
    required this.path,
    required this.value,
    required this.originalIndex,
    required this.opcode,
    required this.status,
    required this.ec,
  });

  factory MutateInResponseEntry.read(MessageBuffer buffer) {
    return MutateInResponseEntry(
      path: buffer.readString(),
      value: buffer.readData(),
      originalIndex: buffer.readInt64(),
      opcode: SubdocOpcode.read(buffer),
      status: KeyValueStatusCode.read(buffer),
      ec: ErrorCode.read(buffer),
    );
  }

  final String path;
  final Uint8List value;
  final int originalIndex;
  final SubdocOpcode opcode;
  final KeyValueStatusCode status;
  final ErrorCode ec;

  void write(MessageBuffer buffer) {
    buffer.writeString(path);
    buffer.writeData(value);
    buffer.writeInt64(originalIndex);
    opcode.write(buffer);
    status.write(buffer);
    ec.write(buffer);
  }
}

class MutateInRequest {
  MutateInRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.cas,
    required this.accessDeleted,
    required this.createAsDeleted,
    required this.expiry,
    required this.storeSemantics,
    required this.specs,
    required this.durabilityLevel,
    required this.timeout,
    required this.preserveExpiry,
  });

  factory MutateInRequest.read(MessageBuffer buffer) {
    return MutateInRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      accessDeleted: buffer.readBool(),
      createAsDeleted: buffer.readBool(),
      expiry: buffer.readBool() ? buffer.readInt64() : null,
      storeSemantics: StoreSemantics.read(buffer),
      specs: List.generate(
          buffer.readUInt64(), (_) => ImplSubdocCommand.read(buffer)),
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      preserveExpiry: buffer.readBool(),
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Cas cas;
  final bool accessDeleted;
  final bool createAsDeleted;
  final int? expiry;
  final StoreSemantics storeSemantics;
  final List<ImplSubdocCommand> specs;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;
  final bool preserveExpiry;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    cas.write(buffer);
    buffer.writeBool(accessDeleted);
    buffer.writeBool(createAsDeleted);
    buffer.writeBool(expiry != null);
    if (expiry != null) {
      buffer.writeInt64(expiry!);
    }
    storeSemantics.write(buffer);
    buffer.writeUInt64(specs.length);
    for (final item in specs) {
      item.write(buffer);
    }
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeBool(preserveExpiry);
  }
}

class MutateInWithLegacyDurability {
  MutateInWithLegacyDurability({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.cas,
    required this.accessDeleted,
    required this.createAsDeleted,
    required this.expiry,
    required this.storeSemantics,
    required this.specs,
    required this.timeout,
    required this.preserveExpiry,
    required this.persistTo,
    required this.replicateTo,
  });

  factory MutateInWithLegacyDurability.read(MessageBuffer buffer) {
    return MutateInWithLegacyDurability(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      accessDeleted: buffer.readBool(),
      createAsDeleted: buffer.readBool(),
      expiry: buffer.readBool() ? buffer.readInt64() : null,
      storeSemantics: StoreSemantics.read(buffer),
      specs: List.generate(
          buffer.readUInt64(), (_) => ImplSubdocCommand.read(buffer)),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      preserveExpiry: buffer.readBool(),
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Cas cas;
  final bool accessDeleted;
  final bool createAsDeleted;
  final int? expiry;
  final StoreSemantics storeSemantics;
  final List<ImplSubdocCommand> specs;
  final Duration? timeout;
  final bool preserveExpiry;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    cas.write(buffer);
    buffer.writeBool(accessDeleted);
    buffer.writeBool(createAsDeleted);
    buffer.writeBool(expiry != null);
    if (expiry != null) {
      buffer.writeInt64(expiry!);
    }
    storeSemantics.write(buffer);
    buffer.writeUInt64(specs.length);
    for (final item in specs) {
      item.write(buffer);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeBool(preserveExpiry);
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class IncrementResponse {
  IncrementResponse({
    required this.content,
    required this.cas,
    required this.token,
  });

  factory IncrementResponse.read(MessageBuffer buffer) {
    return IncrementResponse(
      content: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      token: MutationTokenMessage.read(buffer),
    );
  }

  final int content;
  final Cas cas;
  final MutationToken token;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(content);
    cas.write(buffer);
    token.write(buffer);
  }
}

class IncrementRequest {
  IncrementRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.expiry,
    required this.delta,
    required this.initialValue,
    required this.durabilityLevel,
    required this.timeout,
  });

  factory IncrementRequest.read(MessageBuffer buffer) {
    return IncrementRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      expiry: buffer.readInt64(),
      delta: buffer.readInt64(),
      initialValue: buffer.readBool() ? buffer.readInt64() : null,
      durabilityLevel: DurabilityLevel.read(buffer),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final int expiry;
  final int delta;
  final int? initialValue;
  final DurabilityLevel durabilityLevel;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(expiry);
    buffer.writeInt64(delta);
    buffer.writeBool(initialValue != null);
    if (initialValue != null) {
      buffer.writeInt64(initialValue!);
    }
    durabilityLevel.write(buffer);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class IncrementWithLegacyDurability {
  IncrementWithLegacyDurability({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.expiry,
    required this.delta,
    required this.initialValue,
    required this.timeout,
    required this.persistTo,
    required this.replicateTo,
  });

  factory IncrementWithLegacyDurability.read(MessageBuffer buffer) {
    return IncrementWithLegacyDurability(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      expiry: buffer.readInt64(),
      delta: buffer.readInt64(),
      initialValue: buffer.readBool() ? buffer.readInt64() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      persistTo: PersistTo.read(buffer),
      replicateTo: ReplicateTo.read(buffer),
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final int expiry;
  final int delta;
  final int? initialValue;
  final Duration? timeout;
  final PersistTo persistTo;
  final ReplicateTo replicateTo;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeInt64(expiry);
    buffer.writeInt64(delta);
    buffer.writeBool(initialValue != null);
    if (initialValue != null) {
      buffer.writeInt64(initialValue!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    persistTo.write(buffer);
    replicateTo.write(buffer);
  }
}

class ManagementGroupUpsertResponse {
  ManagementGroupUpsertResponse({
    required this.errors,
  });

  factory ManagementGroupUpsertResponse.read(MessageBuffer buffer) {
    return ManagementGroupUpsertResponse(
      errors: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
    );
  }

  final List<String> errors;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      buffer.writeString(item);
    }
  }
}

class ManagementGroupUpsertRequest {
  ManagementGroupUpsertRequest({
    required this.group,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementGroupUpsertRequest.read(MessageBuffer buffer) {
    return ManagementGroupUpsertRequest(
      group: ManagementRbacGroup.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final ManagementRbacGroup group;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    group.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingPauseFunctionResponse {
  ManagementEventingPauseFunctionResponse({
    required this.error,
  });

  factory ManagementEventingPauseFunctionResponse.read(MessageBuffer buffer) {
    return ManagementEventingPauseFunctionResponse(
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingPauseFunctionRequest {
  ManagementEventingPauseFunctionRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingPauseFunctionRequest.read(MessageBuffer buffer) {
    return ManagementEventingPauseFunctionRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementQueryIndexGetAllResponse {
  ManagementQueryIndexGetAllResponse({
    required this.status,
    required this.indexes,
  });

  factory ManagementQueryIndexGetAllResponse.read(MessageBuffer buffer) {
    return ManagementQueryIndexGetAllResponse(
      status: buffer.readString(),
      indexes: List.generate(
          buffer.readUInt64(), (_) => ManagementQueryIndex.read(buffer)),
    );
  }

  final String status;
  final List<ManagementQueryIndex> indexes;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(indexes.length);
    for (final item in indexes) {
      item.write(buffer);
    }
  }
}

class ManagementQueryIndexGetAllRequest {
  ManagementQueryIndexGetAllRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.queryCtx,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementQueryIndexGetAllRequest.read(MessageBuffer buffer) {
    return ManagementQueryIndexGetAllRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      queryCtx: QueryContext.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String collectionName;
  final QueryContext queryCtx;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    queryCtx.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementCollectionCreateResponse {
  ManagementCollectionCreateResponse({
    required this.uid,
  });

  factory ManagementCollectionCreateResponse.read(MessageBuffer buffer) {
    return ManagementCollectionCreateResponse(
      uid: buffer.readInt64(),
    );
  }

  final int uid;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(uid);
  }
}

class ManagementCollectionCreateRequest {
  ManagementCollectionCreateRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.maxExpiry,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementCollectionCreateRequest.read(MessageBuffer buffer) {
    return ManagementCollectionCreateRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      maxExpiry: buffer.readInt64(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String collectionName;
  final int maxExpiry;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    buffer.writeInt64(maxExpiry);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingResumeFunctionResponse {
  ManagementEventingResumeFunctionResponse({
    required this.error,
  });

  factory ManagementEventingResumeFunctionResponse.read(MessageBuffer buffer) {
    return ManagementEventingResumeFunctionResponse(
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingResumeFunctionRequest {
  ManagementEventingResumeFunctionRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingResumeFunctionRequest.read(MessageBuffer buffer) {
    return ManagementEventingResumeFunctionRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexGetStatsResponse {
  ManagementSearchIndexGetStatsResponse({
    required this.status,
    required this.error,
    required this.stats,
  });

  factory ManagementSearchIndexGetStatsResponse.read(MessageBuffer buffer) {
    return ManagementSearchIndexGetStatsResponse(
      status: buffer.readString(),
      error: buffer.readString(),
      stats: buffer.readString(),
    );
  }

  final String status;
  final String error;
  final String stats;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(error);
    buffer.writeString(stats);
  }
}

class ManagementSearchIndexGetStatsRequest {
  ManagementSearchIndexGetStatsRequest({
    required this.indexName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexGetStatsRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexGetStatsRequest(
      indexName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementBucketGetAllResponse {
  ManagementBucketGetAllResponse({
    required this.buckets,
  });

  factory ManagementBucketGetAllResponse.read(MessageBuffer buffer) {
    return ManagementBucketGetAllResponse(
      buckets: List.generate(buffer.readUInt64(),
          (_) => ManagementClusterBucketSettings.read(buffer)),
    );
  }

  final List<ManagementClusterBucketSettings> buckets;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(buckets.length);
    for (final item in buckets) {
      item.write(buffer);
    }
  }
}

class ManagementBucketGetAllRequest {
  ManagementBucketGetAllRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementBucketGetAllRequest.read(MessageBuffer buffer) {
    return ManagementBucketGetAllRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementQueryIndexBuildDeferredResponse {
  ManagementQueryIndexBuildDeferredResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementQueryIndexBuildDeferredResponse.read(MessageBuffer buffer) {
    return ManagementQueryIndexBuildDeferredResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(),
          (_) => ManagementQueryIndexBuildDeferredResponseQueryProblem.read(
              buffer)),
    );
  }

  final String status;
  final List<ManagementQueryIndexBuildDeferredResponseQueryProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementQueryIndexBuildDeferredResponseQueryProblem {
  ManagementQueryIndexBuildDeferredResponseQueryProblem({
    required this.code,
    required this.message,
  });

  factory ManagementQueryIndexBuildDeferredResponseQueryProblem.read(
      MessageBuffer buffer) {
    return ManagementQueryIndexBuildDeferredResponseQueryProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementQueryIndexBuildDeferredRequest {
  ManagementQueryIndexBuildDeferredRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.queryCtx,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementQueryIndexBuildDeferredRequest.read(MessageBuffer buffer) {
    return ManagementQueryIndexBuildDeferredRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readBool() ? buffer.readString() : null,
      collectionName: buffer.readBool() ? buffer.readString() : null,
      queryCtx: QueryContext.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String? scopeName;
  final String? collectionName;
  final QueryContext queryCtx;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeBool(scopeName != null);
    if (scopeName != null) {
      buffer.writeString(scopeName!);
    }
    buffer.writeBool(collectionName != null);
    if (collectionName != null) {
      buffer.writeString(collectionName!);
    }
    queryCtx.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementClusterDescribeResponse {
  ManagementClusterDescribeResponse({
    required this.info,
  });

  factory ManagementClusterDescribeResponse.read(MessageBuffer buffer) {
    return ManagementClusterDescribeResponse(
      info: ManagementClusterDescribeResponseClusterInfo.read(buffer),
    );
  }

  final ManagementClusterDescribeResponseClusterInfo info;

  void write(MessageBuffer buffer) {
    info.write(buffer);
  }
}

class ManagementClusterDescribeResponseClusterInfo {
  ManagementClusterDescribeResponseClusterInfo({
    required this.nodes,
    required this.buckets,
    required this.services,
  });

  factory ManagementClusterDescribeResponseClusterInfo.read(
      MessageBuffer buffer) {
    return ManagementClusterDescribeResponseClusterInfo(
      nodes: List.generate(buffer.readUInt64(),
          (_) => ManagementClusterDescribeResponseClusterInfoNode.read(buffer)),
      buckets: List.generate(
          buffer.readUInt64(),
          (_) =>
              ManagementClusterDescribeResponseClusterInfoBucket.read(buffer)),
      services: Iterable.generate(
          buffer.readUInt64(), (_) => ServiceType.read(buffer)).toSet(),
    );
  }

  final List<ManagementClusterDescribeResponseClusterInfoNode> nodes;
  final List<ManagementClusterDescribeResponseClusterInfoBucket> buckets;
  final Set<ServiceType> services;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(nodes.length);
    for (final item in nodes) {
      item.write(buffer);
    }
    buffer.writeUInt64(buckets.length);
    for (final item in buckets) {
      item.write(buffer);
    }
    buffer.writeUInt64(services.length);
    for (final item in services) {
      item.write(buffer);
    }
  }
}

class ManagementClusterDescribeResponseClusterInfoNode {
  ManagementClusterDescribeResponseClusterInfoNode({
    required this.uuid,
    required this.otpNode,
    required this.status,
    required this.hostname,
    required this.os,
    required this.version,
    required this.services,
  });

  factory ManagementClusterDescribeResponseClusterInfoNode.read(
      MessageBuffer buffer) {
    return ManagementClusterDescribeResponseClusterInfoNode(
      uuid: buffer.readString(),
      otpNode: buffer.readString(),
      status: buffer.readString(),
      hostname: buffer.readString(),
      os: buffer.readString(),
      version: buffer.readString(),
      services: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
    );
  }

  final String uuid;
  final String otpNode;
  final String status;
  final String hostname;
  final String os;
  final String version;
  final List<String> services;

  void write(MessageBuffer buffer) {
    buffer.writeString(uuid);
    buffer.writeString(otpNode);
    buffer.writeString(status);
    buffer.writeString(hostname);
    buffer.writeString(os);
    buffer.writeString(version);
    buffer.writeUInt64(services.length);
    for (final item in services) {
      buffer.writeString(item);
    }
  }
}

class ManagementClusterDescribeResponseClusterInfoBucket {
  ManagementClusterDescribeResponseClusterInfoBucket({
    required this.uuid,
    required this.name,
  });

  factory ManagementClusterDescribeResponseClusterInfoBucket.read(
      MessageBuffer buffer) {
    return ManagementClusterDescribeResponseClusterInfoBucket(
      uuid: buffer.readString(),
      name: buffer.readString(),
    );
  }

  final String uuid;
  final String name;

  void write(MessageBuffer buffer) {
    buffer.writeString(uuid);
    buffer.writeString(name);
  }
}

class ManagementClusterDescribeRequest {
  ManagementClusterDescribeRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementClusterDescribeRequest.read(MessageBuffer buffer) {
    return ManagementClusterDescribeRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexGetAllResponse {
  ManagementSearchIndexGetAllResponse({
    required this.status,
    required this.implVersion,
    required this.indexes,
  });

  factory ManagementSearchIndexGetAllResponse.read(MessageBuffer buffer) {
    return ManagementSearchIndexGetAllResponse(
      status: buffer.readString(),
      implVersion: buffer.readString(),
      indexes: List.generate(
          buffer.readUInt64(), (_) => ManagementSearchIndex.read(buffer)),
    );
  }

  final String status;
  final String implVersion;
  final List<ManagementSearchIndex> indexes;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(implVersion);
    buffer.writeUInt64(indexes.length);
    for (final item in indexes) {
      item.write(buffer);
    }
  }
}

class ManagementSearchIndexGetAllRequest {
  ManagementSearchIndexGetAllRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexGetAllRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexGetAllRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexAnalyzeDocumentResponse {
  ManagementSearchIndexAnalyzeDocumentResponse({
    required this.status,
    required this.error,
    required this.analysis,
  });

  factory ManagementSearchIndexAnalyzeDocumentResponse.read(
      MessageBuffer buffer) {
    return ManagementSearchIndexAnalyzeDocumentResponse(
      status: buffer.readString(),
      error: buffer.readString(),
      analysis: buffer.readString(),
    );
  }

  final String status;
  final String error;
  final String analysis;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(error);
    buffer.writeString(analysis);
  }
}

class ManagementSearchIndexAnalyzeDocumentRequest {
  ManagementSearchIndexAnalyzeDocumentRequest({
    required this.indexName,
    required this.encodedDocument,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexAnalyzeDocumentRequest.read(
      MessageBuffer buffer) {
    return ManagementSearchIndexAnalyzeDocumentRequest(
      indexName: buffer.readString(),
      encodedDocument: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final String encodedDocument;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeString(encodedDocument);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementQueryIndexDropResponse {
  ManagementQueryIndexDropResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementQueryIndexDropResponse.read(MessageBuffer buffer) {
    return ManagementQueryIndexDropResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementQueryIndexDropResponseQueryProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementQueryIndexDropResponseQueryProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementQueryIndexDropResponseQueryProblem {
  ManagementQueryIndexDropResponseQueryProblem({
    required this.code,
    required this.message,
  });

  factory ManagementQueryIndexDropResponseQueryProblem.read(
      MessageBuffer buffer) {
    return ManagementQueryIndexDropResponseQueryProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementQueryIndexDropRequest {
  ManagementQueryIndexDropRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.indexName,
    required this.queryCtx,
    required this.isPrimary,
    required this.ignoreIfDoesNotExist,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementQueryIndexDropRequest.read(MessageBuffer buffer) {
    return ManagementQueryIndexDropRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      indexName: buffer.readString(),
      queryCtx: QueryContext.read(buffer),
      isPrimary: buffer.readBool(),
      ignoreIfDoesNotExist: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String collectionName;
  final String indexName;
  final QueryContext queryCtx;
  final bool isPrimary;
  final bool ignoreIfDoesNotExist;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    buffer.writeString(indexName);
    queryCtx.write(buffer);
    buffer.writeBool(isPrimary);
    buffer.writeBool(ignoreIfDoesNotExist);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsDatasetCreateResponse {
  ManagementAnalyticsDatasetCreateResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsDatasetCreateResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsDatasetCreateResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsDatasetCreateRequest {
  ManagementAnalyticsDatasetCreateRequest({
    required this.dataverseName,
    required this.datasetName,
    required this.bucketName,
    required this.condition,
    required this.clientContextId,
    required this.timeout,
    required this.ignoreIfExists,
  });

  factory ManagementAnalyticsDatasetCreateRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsDatasetCreateRequest(
      dataverseName: buffer.readString(),
      datasetName: buffer.readString(),
      bucketName: buffer.readString(),
      condition: buffer.readBool() ? buffer.readString() : null,
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
      ignoreIfExists: buffer.readBool(),
    );
  }

  final String dataverseName;
  final String datasetName;
  final String bucketName;
  final String? condition;
  final String? clientContextId;
  final Duration? timeout;
  final bool ignoreIfExists;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeString(datasetName);
    buffer.writeString(bucketName);
    buffer.writeBool(condition != null);
    if (condition != null) {
      buffer.writeString(condition!);
    }
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
    buffer.writeBool(ignoreIfExists);
  }
}

class ManagementBucketFlushResponse {
  ManagementBucketFlushResponse();

  factory ManagementBucketFlushResponse.read(MessageBuffer buffer) {
    return ManagementBucketFlushResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementBucketFlushRequest {
  ManagementBucketFlushRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementBucketFlushRequest.read(MessageBuffer buffer) {
    return ManagementBucketFlushRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsIndexDropResponse {
  ManagementAnalyticsIndexDropResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsIndexDropResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsIndexDropResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsIndexDropRequest {
  ManagementAnalyticsIndexDropRequest({
    required this.dataverseName,
    required this.datasetName,
    required this.indexName,
    required this.ignoreIfDoesNotExist,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsIndexDropRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsIndexDropRequest(
      dataverseName: buffer.readString(),
      datasetName: buffer.readString(),
      indexName: buffer.readString(),
      ignoreIfDoesNotExist: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String dataverseName;
  final String datasetName;
  final String indexName;
  final bool ignoreIfDoesNotExist;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeString(datasetName);
    buffer.writeString(indexName);
    buffer.writeBool(ignoreIfDoesNotExist);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementQueryIndexCreateResponse {
  ManagementQueryIndexCreateResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementQueryIndexCreateResponse.read(MessageBuffer buffer) {
    return ManagementQueryIndexCreateResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementQueryIndexCreateResponseQueryProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementQueryIndexCreateResponseQueryProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementQueryIndexCreateResponseQueryProblem {
  ManagementQueryIndexCreateResponseQueryProblem({
    required this.code,
    required this.message,
  });

  factory ManagementQueryIndexCreateResponseQueryProblem.read(
      MessageBuffer buffer) {
    return ManagementQueryIndexCreateResponseQueryProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementQueryIndexCreateRequest {
  ManagementQueryIndexCreateRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.indexName,
    required this.fields,
    required this.queryCtx,
    required this.isPrimary,
    required this.ignoreIfExists,
    required this.condition,
    required this.deferred,
    required this.numReplicas,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementQueryIndexCreateRequest.read(MessageBuffer buffer) {
    return ManagementQueryIndexCreateRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      indexName: buffer.readString(),
      fields: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      queryCtx: QueryContext.read(buffer),
      isPrimary: buffer.readBool(),
      ignoreIfExists: buffer.readBool(),
      condition: buffer.readBool() ? buffer.readString() : null,
      deferred: buffer.readBool() ? buffer.readBool() : null,
      numReplicas: buffer.readBool() ? buffer.readInt64() : null,
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String collectionName;
  final String indexName;
  final List<String> fields;
  final QueryContext queryCtx;
  final bool isPrimary;
  final bool ignoreIfExists;
  final String? condition;
  final bool? deferred;
  final int? numReplicas;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    buffer.writeString(indexName);
    buffer.writeUInt64(fields.length);
    for (final item in fields) {
      buffer.writeString(item);
    }
    queryCtx.write(buffer);
    buffer.writeBool(isPrimary);
    buffer.writeBool(ignoreIfExists);
    buffer.writeBool(condition != null);
    if (condition != null) {
      buffer.writeString(condition!);
    }
    buffer.writeBool(deferred != null);
    if (deferred != null) {
      buffer.writeBool(deferred!);
    }
    buffer.writeBool(numReplicas != null);
    if (numReplicas != null) {
      buffer.writeInt64(numReplicas!);
    }
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexUpsertResponse {
  ManagementSearchIndexUpsertResponse({
    required this.status,
    required this.name,
    required this.uuid,
    required this.error,
  });

  factory ManagementSearchIndexUpsertResponse.read(MessageBuffer buffer) {
    return ManagementSearchIndexUpsertResponse(
      status: buffer.readString(),
      name: buffer.readString(),
      uuid: buffer.readString(),
      error: buffer.readString(),
    );
  }

  final String status;
  final String name;
  final String uuid;
  final String error;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(name);
    buffer.writeString(uuid);
    buffer.writeString(error);
  }
}

class ManagementSearchIndexUpsertRequest {
  ManagementSearchIndexUpsertRequest({
    required this.index,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexUpsertRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexUpsertRequest(
      index: ManagementSearchIndex.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final ManagementSearchIndex index;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    index.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsDatasetGetAllResponse {
  ManagementAnalyticsDatasetGetAllResponse({
    required this.status,
    required this.datasets,
    required this.errors,
  });

  factory ManagementAnalyticsDatasetGetAllResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsDatasetGetAllResponse(
      status: buffer.readString(),
      datasets: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsDataset.read(buffer)),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsDataset> datasets;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(datasets.length);
    for (final item in datasets) {
      item.write(buffer);
    }
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsDatasetGetAllRequest {
  ManagementAnalyticsDatasetGetAllRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsDatasetGetAllRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsDatasetGetAllRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsIndexGetAllResponse {
  ManagementAnalyticsIndexGetAllResponse({
    required this.status,
    required this.indexes,
    required this.errors,
  });

  factory ManagementAnalyticsIndexGetAllResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsIndexGetAllResponse(
      status: buffer.readString(),
      indexes: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsIndex.read(buffer)),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsIndex> indexes;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(indexes.length);
    for (final item in indexes) {
      item.write(buffer);
    }
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsIndexGetAllRequest {
  ManagementAnalyticsIndexGetAllRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsIndexGetAllRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsIndexGetAllRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsGetPendingMutationsResponse {
  ManagementAnalyticsGetPendingMutationsResponse({
    required this.status,
    required this.errors,
    required this.stats,
  });

  factory ManagementAnalyticsGetPendingMutationsResponse.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsGetPendingMutationsResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
      stats: (() {
        final map = <String, int>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readInt64();
        }
        return map;
      })(),
    );
  }

  final String status;
  final List<ManagementAnalyticsProblem> errors;
  final Map<String, int> stats;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
    buffer.writeUInt64(stats.length);
    for (final entry in stats.entries) {
      buffer.writeString(entry.key);
      buffer.writeInt64(entry.value);
    }
  }
}

class ManagementAnalyticsGetPendingMutationsRequest {
  ManagementAnalyticsGetPendingMutationsRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsGetPendingMutationsRequest.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsGetPendingMutationsRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsDataverseDropResponse {
  ManagementAnalyticsDataverseDropResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsDataverseDropResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsDataverseDropResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsDataverseDropRequest {
  ManagementAnalyticsDataverseDropRequest({
    required this.dataverseName,
    required this.ignoreIfDoesNotExist,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsDataverseDropRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsDataverseDropRequest(
      dataverseName: buffer.readString(),
      ignoreIfDoesNotExist: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String dataverseName;
  final bool ignoreIfDoesNotExist;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeBool(ignoreIfDoesNotExist);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingProblem {
  ManagementEventingProblem({
    required this.code,
    required this.name,
    required this.description,
  });

  factory ManagementEventingProblem.read(MessageBuffer buffer) {
    return ManagementEventingProblem(
      code: buffer.readInt64(),
      name: buffer.readString(),
      description: buffer.readString(),
    );
  }

  final int code;
  final String name;
  final String description;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(name);
    buffer.writeString(description);
  }
}

class ManagementAnalyticsLinkConnectResponse {
  ManagementAnalyticsLinkConnectResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsLinkConnectResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkConnectResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsLinkConnectResponseProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsLinkConnectResponseProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsLinkConnectResponseProblem {
  ManagementAnalyticsLinkConnectResponseProblem({
    required this.code,
    required this.message,
  });

  factory ManagementAnalyticsLinkConnectResponseProblem.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsLinkConnectResponseProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementAnalyticsLinkConnectRequest {
  ManagementAnalyticsLinkConnectRequest({
    required this.dataverseName,
    required this.linkName,
    required this.force,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsLinkConnectRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkConnectRequest(
      dataverseName: buffer.readString(),
      linkName: buffer.readString(),
      force: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String dataverseName;
  final String linkName;
  final bool force;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeString(linkName);
    buffer.writeBool(force);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementCollectionsManifestGetResponse {
  ManagementCollectionsManifestGetResponse({
    required this.manifest,
  });

  factory ManagementCollectionsManifestGetResponse.read(MessageBuffer buffer) {
    return ManagementCollectionsManifestGetResponse(
      manifest: TopologyCollectionsManifest.read(buffer),
    );
  }

  final TopologyCollectionsManifest manifest;

  void write(MessageBuffer buffer) {
    manifest.write(buffer);
  }
}

class ManagementCollectionsManifestGetRequest {
  ManagementCollectionsManifestGetRequest({
    required this.id,
    required this.partition,
    required this.opaque,
    required this.timeout,
  });

  factory ManagementCollectionsManifestGetRequest.read(MessageBuffer buffer) {
    return ManagementCollectionsManifestGetRequest(
      id: DocumentId.read(buffer),
      partition: buffer.readInt64(),
      opaque: buffer.readInt64(),
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final DocumentId id;
  final int partition;
  final int opaque;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    id.write(buffer);
    buffer.writeInt64(partition);
    buffer.writeInt64(opaque);
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementChangePasswordResponse {
  ManagementChangePasswordResponse();

  factory ManagementChangePasswordResponse.read(MessageBuffer buffer) {
    return ManagementChangePasswordResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementChangePasswordRequest {
  ManagementChangePasswordRequest({
    required this.newPassword,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementChangePasswordRequest.read(MessageBuffer buffer) {
    return ManagementChangePasswordRequest(
      newPassword: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String newPassword;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(newPassword);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementClusterDeveloperPreviewEnableResponse {
  ManagementClusterDeveloperPreviewEnableResponse();

  factory ManagementClusterDeveloperPreviewEnableResponse.read(
      MessageBuffer buffer) {
    return ManagementClusterDeveloperPreviewEnableResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementClusterDeveloperPreviewEnableRequest {
  ManagementClusterDeveloperPreviewEnableRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementClusterDeveloperPreviewEnableRequest.read(
      MessageBuffer buffer) {
    return ManagementClusterDeveloperPreviewEnableRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsLinkDropResponse {
  ManagementAnalyticsLinkDropResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsLinkDropResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkDropResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsLinkDropResponseProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsLinkDropResponseProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsLinkDropResponseProblem {
  ManagementAnalyticsLinkDropResponseProblem({
    required this.code,
    required this.message,
  });

  factory ManagementAnalyticsLinkDropResponseProblem.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsLinkDropResponseProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementAnalyticsLinkDropRequest {
  ManagementAnalyticsLinkDropRequest({
    required this.linkName,
    required this.dataverseName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsLinkDropRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkDropRequest(
      linkName: buffer.readString(),
      dataverseName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String linkName;
  final String dataverseName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(linkName);
    buffer.writeString(dataverseName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementBucketDescribeResponse {
  ManagementBucketDescribeResponse({
    required this.info,
  });

  factory ManagementBucketDescribeResponse.read(MessageBuffer buffer) {
    return ManagementBucketDescribeResponse(
      info: ManagementBucketDescribeResponseBucketInfo.read(buffer),
    );
  }

  final ManagementBucketDescribeResponseBucketInfo info;

  void write(MessageBuffer buffer) {
    info.write(buffer);
  }
}

class ManagementBucketDescribeResponseBucketInfo {
  ManagementBucketDescribeResponseBucketInfo({
    required this.name,
    required this.uuid,
    required this.numberOfNodes,
    required this.numberOfReplicas,
    required this.bucketCapabilities,
    required this.storageBackend,
  });

  factory ManagementBucketDescribeResponseBucketInfo.read(
      MessageBuffer buffer) {
    return ManagementBucketDescribeResponseBucketInfo(
      name: buffer.readString(),
      uuid: buffer.readString(),
      numberOfNodes: buffer.readInt64(),
      numberOfReplicas: buffer.readInt64(),
      bucketCapabilities:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      storageBackend: BucketStorageBackend.read(buffer),
    );
  }

  final String name;
  final String uuid;
  final int numberOfNodes;
  final int numberOfReplicas;
  final List<String> bucketCapabilities;
  final BucketStorageBackend storageBackend;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeString(uuid);
    buffer.writeInt64(numberOfNodes);
    buffer.writeInt64(numberOfReplicas);
    buffer.writeUInt64(bucketCapabilities.length);
    for (final item in bucketCapabilities) {
      buffer.writeString(item);
    }
    storageBackend.write(buffer);
  }
}

class ManagementBucketDescribeRequest {
  ManagementBucketDescribeRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementBucketDescribeRequest.read(MessageBuffer buffer) {
    return ManagementBucketDescribeRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingUpsertFunctionResponse {
  ManagementEventingUpsertFunctionResponse({
    required this.error,
  });

  factory ManagementEventingUpsertFunctionResponse.read(MessageBuffer buffer) {
    return ManagementEventingUpsertFunctionResponse(
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingUpsertFunctionRequest {
  ManagementEventingUpsertFunctionRequest({
    required this.function,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingUpsertFunctionRequest.read(MessageBuffer buffer) {
    return ManagementEventingUpsertFunctionRequest(
      function: ManagementEventingFunction.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final ManagementEventingFunction function;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    function.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementViewIndexGetAllResponse {
  ManagementViewIndexGetAllResponse({
    required this.designDocuments,
  });

  factory ManagementViewIndexGetAllResponse.read(MessageBuffer buffer) {
    return ManagementViewIndexGetAllResponse(
      designDocuments: List.generate(buffer.readUInt64(),
          (_) => ManagementViewsDesignDocument.read(buffer)),
    );
  }

  final List<ManagementViewsDesignDocument> designDocuments;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(designDocuments.length);
    for (final item in designDocuments) {
      item.write(buffer);
    }
  }
}

class ManagementViewIndexGetAllRequest {
  ManagementViewIndexGetAllRequest({
    required this.bucketName,
    required this.ns,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementViewIndexGetAllRequest.read(MessageBuffer buffer) {
    return ManagementViewIndexGetAllRequest(
      bucketName: buffer.readString(),
      ns: DesignDocumentNamespace.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final DesignDocumentNamespace ns;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    ns.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementBucketGetResponse {
  ManagementBucketGetResponse({
    required this.bucket,
  });

  factory ManagementBucketGetResponse.read(MessageBuffer buffer) {
    return ManagementBucketGetResponse(
      bucket: ManagementClusterBucketSettings.read(buffer),
    );
  }

  final ManagementClusterBucketSettings bucket;

  void write(MessageBuffer buffer) {
    bucket.write(buffer);
  }
}

class ManagementBucketGetRequest {
  ManagementBucketGetRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementBucketGetRequest.read(MessageBuffer buffer) {
    return ManagementBucketGetRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementBucketUpdateResponse {
  ManagementBucketUpdateResponse({
    required this.bucket,
    required this.errorMessage,
  });

  factory ManagementBucketUpdateResponse.read(MessageBuffer buffer) {
    return ManagementBucketUpdateResponse(
      bucket: ManagementClusterBucketSettings.read(buffer),
      errorMessage: buffer.readString(),
    );
  }

  final ManagementClusterBucketSettings bucket;
  final String errorMessage;

  void write(MessageBuffer buffer) {
    bucket.write(buffer);
    buffer.writeString(errorMessage);
  }
}

class ManagementBucketUpdateRequest {
  ManagementBucketUpdateRequest({
    required this.bucket,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementBucketUpdateRequest.read(MessageBuffer buffer) {
    return ManagementBucketUpdateRequest(
      bucket: ManagementClusterBucketSettings.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final ManagementClusterBucketSettings bucket;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    bucket.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementBucketDropResponse {
  ManagementBucketDropResponse();

  factory ManagementBucketDropResponse.read(MessageBuffer buffer) {
    return ManagementBucketDropResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementBucketDropRequest {
  ManagementBucketDropRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementBucketDropRequest.read(MessageBuffer buffer) {
    return ManagementBucketDropRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementFreeformResponse {
  ManagementFreeformResponse({
    required this.status,
    required this.headers,
    required this.body,
  });

  factory ManagementFreeformResponse.read(MessageBuffer buffer) {
    return ManagementFreeformResponse(
      status: buffer.readInt64(),
      headers: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      body: buffer.readString(),
    );
  }

  final int status;
  final Map<String, String> headers;
  final String body;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(status);
    buffer.writeUInt64(headers.length);
    for (final entry in headers.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeString(body);
  }
}

class ManagementFreeformRequest {
  ManagementFreeformRequest({
    required this.type,
    required this.method,
    required this.path,
    required this.headers,
    required this.body,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementFreeformRequest.read(MessageBuffer buffer) {
    return ManagementFreeformRequest(
      type: ServiceType.read(buffer),
      method: buffer.readString(),
      path: buffer.readString(),
      headers: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      body: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final ServiceType type;
  final String method;
  final String path;
  final Map<String, String> headers;
  final String body;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    type.write(buffer);
    buffer.writeString(method);
    buffer.writeString(path);
    buffer.writeUInt64(headers.length);
    for (final entry in headers.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeString(body);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementScopeDropResponse {
  ManagementScopeDropResponse({
    required this.uid,
  });

  factory ManagementScopeDropResponse.read(MessageBuffer buffer) {
    return ManagementScopeDropResponse(
      uid: buffer.readInt64(),
    );
  }

  final int uid;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(uid);
  }
}

class ManagementScopeDropRequest {
  ManagementScopeDropRequest({
    required this.bucketName,
    required this.scopeName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementScopeDropRequest.read(MessageBuffer buffer) {
    return ManagementScopeDropRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementViewIndexUpsertResponse {
  ManagementViewIndexUpsertResponse();

  factory ManagementViewIndexUpsertResponse.read(MessageBuffer buffer) {
    return ManagementViewIndexUpsertResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementViewIndexUpsertRequest {
  ManagementViewIndexUpsertRequest({
    required this.bucketName,
    required this.document,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementViewIndexUpsertRequest.read(MessageBuffer buffer) {
    return ManagementViewIndexUpsertRequest(
      bucketName: buffer.readString(),
      document: ManagementViewsDesignDocument.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final ManagementViewsDesignDocument document;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    document.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementUserGetAllResponse {
  ManagementUserGetAllResponse({
    required this.users,
  });

  factory ManagementUserGetAllResponse.read(MessageBuffer buffer) {
    return ManagementUserGetAllResponse(
      users: List.generate(buffer.readUInt64(),
          (_) => ManagementRbacUserAndMetadata.read(buffer)),
    );
  }

  final List<ManagementRbacUserAndMetadata> users;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(users.length);
    for (final item in users) {
      item.write(buffer);
    }
  }
}

class ManagementUserGetAllRequest {
  ManagementUserGetAllRequest({
    required this.domain,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementUserGetAllRequest.read(MessageBuffer buffer) {
    return ManagementUserGetAllRequest(
      domain: AuthDomain.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final AuthDomain domain;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    domain.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementScopeCreateResponse {
  ManagementScopeCreateResponse({
    required this.uid,
  });

  factory ManagementScopeCreateResponse.read(MessageBuffer buffer) {
    return ManagementScopeCreateResponse(
      uid: buffer.readInt64(),
    );
  }

  final int uid;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(uid);
  }
}

class ManagementScopeCreateRequest {
  ManagementScopeCreateRequest({
    required this.bucketName,
    required this.scopeName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementScopeCreateRequest.read(MessageBuffer buffer) {
    return ManagementScopeCreateRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingGetFunctionResponse {
  ManagementEventingGetFunctionResponse({
    required this.function,
    required this.error,
  });

  factory ManagementEventingGetFunctionResponse.read(MessageBuffer buffer) {
    return ManagementEventingGetFunctionResponse(
      function: ManagementEventingFunction.read(buffer),
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingFunction function;
  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    function.write(buffer);
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingGetFunctionRequest {
  ManagementEventingGetFunctionRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingGetFunctionRequest.read(MessageBuffer buffer) {
    return ManagementEventingGetFunctionRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementViewIndexDropResponse {
  ManagementViewIndexDropResponse();

  factory ManagementViewIndexDropResponse.read(MessageBuffer buffer) {
    return ManagementViewIndexDropResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementViewIndexDropRequest {
  ManagementViewIndexDropRequest({
    required this.bucketName,
    required this.documentName,
    required this.ns,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementViewIndexDropRequest.read(MessageBuffer buffer) {
    return ManagementViewIndexDropRequest(
      bucketName: buffer.readString(),
      documentName: buffer.readString(),
      ns: DesignDocumentNamespace.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String documentName;
  final DesignDocumentNamespace ns;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(documentName);
    ns.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsLinkReplaceResponse {
  ManagementAnalyticsLinkReplaceResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsLinkReplaceResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkReplaceResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsLinkReplaceResponseProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsLinkReplaceResponseProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsLinkReplaceResponseProblem {
  ManagementAnalyticsLinkReplaceResponseProblem({
    required this.code,
    required this.message,
  });

  factory ManagementAnalyticsLinkReplaceResponseProblem.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsLinkReplaceResponseProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementAnalyticsLinkDisconnectResponse {
  ManagementAnalyticsLinkDisconnectResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsLinkDisconnectResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkDisconnectResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsLinkDisconnectResponseProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsLinkDisconnectResponseProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsLinkDisconnectResponseProblem {
  ManagementAnalyticsLinkDisconnectResponseProblem({
    required this.code,
    required this.message,
  });

  factory ManagementAnalyticsLinkDisconnectResponseProblem.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsLinkDisconnectResponseProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementAnalyticsLinkDisconnectRequest {
  ManagementAnalyticsLinkDisconnectRequest({
    required this.dataverseName,
    required this.linkName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsLinkDisconnectRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkDisconnectRequest(
      dataverseName: buffer.readString(),
      linkName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String dataverseName;
  final String linkName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeString(linkName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementUserUpsertResponse {
  ManagementUserUpsertResponse({
    required this.errors,
  });

  factory ManagementUserUpsertResponse.read(MessageBuffer buffer) {
    return ManagementUserUpsertResponse(
      errors: List.generate(buffer.readUInt64(), (_) => buffer.readString()),
    );
  }

  final List<String> errors;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      buffer.writeString(item);
    }
  }
}

class ManagementUserUpsertRequest {
  ManagementUserUpsertRequest({
    required this.domain,
    required this.user,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementUserUpsertRequest.read(MessageBuffer buffer) {
    return ManagementUserUpsertRequest(
      domain: AuthDomain.read(buffer),
      user: ManagementRbacUser.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final AuthDomain domain;
  final ManagementRbacUser user;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    domain.write(buffer);
    user.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingGetStatusResponse {
  ManagementEventingGetStatusResponse({
    required this.status,
    required this.error,
  });

  factory ManagementEventingGetStatusResponse.read(MessageBuffer buffer) {
    return ManagementEventingGetStatusResponse(
      status: ManagementEventingStatus.read(buffer),
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingStatus status;
  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    status.write(buffer);
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingGetStatusRequest {
  ManagementEventingGetStatusRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingGetStatusRequest.read(MessageBuffer buffer) {
    return ManagementEventingGetStatusRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingGetAllFunctionsResponse {
  ManagementEventingGetAllFunctionsResponse({
    required this.functions,
    required this.error,
  });

  factory ManagementEventingGetAllFunctionsResponse.read(MessageBuffer buffer) {
    return ManagementEventingGetAllFunctionsResponse(
      functions: List.generate(
          buffer.readUInt64(), (_) => ManagementEventingFunction.read(buffer)),
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final List<ManagementEventingFunction> functions;
  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(functions.length);
    for (final item in functions) {
      item.write(buffer);
    }
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingGetAllFunctionsRequest {
  ManagementEventingGetAllFunctionsRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingGetAllFunctionsRequest.read(MessageBuffer buffer) {
    return ManagementEventingGetAllFunctionsRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsIndexCreateResponse {
  ManagementAnalyticsIndexCreateResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsIndexCreateResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsIndexCreateResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsIndexCreateRequest {
  ManagementAnalyticsIndexCreateRequest({
    required this.dataverseName,
    required this.datasetName,
    required this.indexName,
    required this.fields,
    required this.ignoreIfExists,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsIndexCreateRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsIndexCreateRequest(
      dataverseName: buffer.readString(),
      datasetName: buffer.readString(),
      indexName: buffer.readString(),
      fields: (() {
        final map = <String, String>{};
        final length = buffer.readUInt64();
        for (var i = 0; i < length; i++) {
          map[buffer.readString()] = buffer.readString();
        }
        return map;
      })(),
      ignoreIfExists: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String dataverseName;
  final String datasetName;
  final String indexName;
  final Map<String, String> fields;
  final bool ignoreIfExists;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeString(datasetName);
    buffer.writeString(indexName);
    buffer.writeUInt64(fields.length);
    for (final entry in fields.entries) {
      buffer.writeString(entry.key);
      buffer.writeString(entry.value);
    }
    buffer.writeBool(ignoreIfExists);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementScopeGetAllResponse {
  ManagementScopeGetAllResponse({
    required this.manifest,
  });

  factory ManagementScopeGetAllResponse.read(MessageBuffer buffer) {
    return ManagementScopeGetAllResponse(
      manifest: TopologyCollectionsManifest.read(buffer),
    );
  }

  final TopologyCollectionsManifest manifest;

  void write(MessageBuffer buffer) {
    manifest.write(buffer);
  }
}

class ManagementScopeGetAllRequest {
  ManagementScopeGetAllRequest({
    required this.bucketName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementScopeGetAllRequest.read(MessageBuffer buffer) {
    return ManagementScopeGetAllRequest(
      bucketName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementUserGetResponse {
  ManagementUserGetResponse({
    required this.user,
  });

  factory ManagementUserGetResponse.read(MessageBuffer buffer) {
    return ManagementUserGetResponse(
      user: ManagementRbacUserAndMetadata.read(buffer),
    );
  }

  final ManagementRbacUserAndMetadata user;

  void write(MessageBuffer buffer) {
    user.write(buffer);
  }
}

class ManagementUserGetRequest {
  ManagementUserGetRequest({
    required this.username,
    required this.domain,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementUserGetRequest.read(MessageBuffer buffer) {
    return ManagementUserGetRequest(
      username: buffer.readString(),
      domain: AuthDomain.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String username;
  final AuthDomain domain;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(username);
    domain.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexDropResponse {
  ManagementSearchIndexDropResponse({
    required this.status,
    required this.error,
  });

  factory ManagementSearchIndexDropResponse.read(MessageBuffer buffer) {
    return ManagementSearchIndexDropResponse(
      status: buffer.readString(),
      error: buffer.readString(),
    );
  }

  final String status;
  final String error;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(error);
  }
}

class ManagementSearchIndexDropRequest {
  ManagementSearchIndexDropRequest({
    required this.indexName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexDropRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexDropRequest(
      indexName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexControlPlanFreezeResponse {
  ManagementSearchIndexControlPlanFreezeResponse({
    required this.status,
    required this.error,
  });

  factory ManagementSearchIndexControlPlanFreezeResponse.read(
      MessageBuffer buffer) {
    return ManagementSearchIndexControlPlanFreezeResponse(
      status: buffer.readString(),
      error: buffer.readString(),
    );
  }

  final String status;
  final String error;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(error);
  }
}

class ManagementSearchIndexControlPlanFreezeRequest {
  ManagementSearchIndexControlPlanFreezeRequest({
    required this.indexName,
    required this.freeze,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexControlPlanFreezeRequest.read(
      MessageBuffer buffer) {
    return ManagementSearchIndexControlPlanFreezeRequest(
      indexName: buffer.readString(),
      freeze: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final bool freeze;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeBool(freeze);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexStatsResponse {
  ManagementSearchIndexStatsResponse({
    required this.stats,
  });

  factory ManagementSearchIndexStatsResponse.read(MessageBuffer buffer) {
    return ManagementSearchIndexStatsResponse(
      stats: buffer.readString(),
    );
  }

  final String stats;

  void write(MessageBuffer buffer) {
    buffer.writeString(stats);
  }
}

class ManagementSearchIndexStatsRequest {
  ManagementSearchIndexStatsRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexStatsRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexStatsRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementUserDropResponse {
  ManagementUserDropResponse();

  factory ManagementUserDropResponse.read(MessageBuffer buffer) {
    return ManagementUserDropResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementUserDropRequest {
  ManagementUserDropRequest({
    required this.username,
    required this.domain,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementUserDropRequest.read(MessageBuffer buffer) {
    return ManagementUserDropRequest(
      username: buffer.readString(),
      domain: AuthDomain.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String username;
  final AuthDomain domain;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(username);
    domain.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsDataverseCreateResponse {
  ManagementAnalyticsDataverseCreateResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsDataverseCreateResponse.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsDataverseCreateResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsDataverseCreateRequest {
  ManagementAnalyticsDataverseCreateRequest({
    required this.dataverseName,
    required this.ignoreIfExists,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsDataverseCreateRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsDataverseCreateRequest(
      dataverseName: buffer.readString(),
      ignoreIfExists: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String dataverseName;
  final bool ignoreIfExists;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeBool(ignoreIfExists);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexControlQueryResponse {
  ManagementSearchIndexControlQueryResponse({
    required this.status,
    required this.error,
  });

  factory ManagementSearchIndexControlQueryResponse.read(MessageBuffer buffer) {
    return ManagementSearchIndexControlQueryResponse(
      status: buffer.readString(),
      error: buffer.readString(),
    );
  }

  final String status;
  final String error;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(error);
  }
}

class ManagementSearchIndexControlQueryRequest {
  ManagementSearchIndexControlQueryRequest({
    required this.indexName,
    required this.allow,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexControlQueryRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexControlQueryRequest(
      indexName: buffer.readString(),
      allow: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final bool allow;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeBool(allow);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementRoleGetAllResponse {
  ManagementRoleGetAllResponse({
    required this.roles,
  });

  factory ManagementRoleGetAllResponse.read(MessageBuffer buffer) {
    return ManagementRoleGetAllResponse(
      roles: List.generate(buffer.readUInt64(),
          (_) => ManagementRbacRoleAndDescription.read(buffer)),
    );
  }

  final List<ManagementRbacRoleAndDescription> roles;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(roles.length);
    for (final item in roles) {
      item.write(buffer);
    }
  }
}

class ManagementRoleGetAllRequest {
  ManagementRoleGetAllRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementRoleGetAllRequest.read(MessageBuffer buffer) {
    return ManagementRoleGetAllRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementGroupGetAllResponse {
  ManagementGroupGetAllResponse({
    required this.groups,
  });

  factory ManagementGroupGetAllResponse.read(MessageBuffer buffer) {
    return ManagementGroupGetAllResponse(
      groups: List.generate(
          buffer.readUInt64(), (_) => ManagementRbacGroup.read(buffer)),
    );
  }

  final List<ManagementRbacGroup> groups;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(groups.length);
    for (final item in groups) {
      item.write(buffer);
    }
  }
}

class ManagementGroupGetAllRequest {
  ManagementGroupGetAllRequest({
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementGroupGetAllRequest.read(MessageBuffer buffer) {
    return ManagementGroupGetAllRequest(
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsLinkCreateResponse {
  ManagementAnalyticsLinkCreateResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsLinkCreateResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkCreateResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsLinkCreateResponseProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsLinkCreateResponseProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsLinkCreateResponseProblem {
  ManagementAnalyticsLinkCreateResponseProblem({
    required this.code,
    required this.message,
  });

  factory ManagementAnalyticsLinkCreateResponseProblem.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsLinkCreateResponseProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementEventingDropFunctionResponse {
  ManagementEventingDropFunctionResponse({
    required this.error,
  });

  factory ManagementEventingDropFunctionResponse.read(MessageBuffer buffer) {
    return ManagementEventingDropFunctionResponse(
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingDropFunctionRequest {
  ManagementEventingDropFunctionRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingDropFunctionRequest.read(MessageBuffer buffer) {
    return ManagementEventingDropFunctionRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementCollectionDropResponse {
  ManagementCollectionDropResponse({
    required this.uid,
  });

  factory ManagementCollectionDropResponse.read(MessageBuffer buffer) {
    return ManagementCollectionDropResponse(
      uid: buffer.readInt64(),
    );
  }

  final int uid;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(uid);
  }
}

class ManagementCollectionDropRequest {
  ManagementCollectionDropRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementCollectionDropRequest.read(MessageBuffer buffer) {
    return ManagementCollectionDropRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String collectionName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsProblem {
  ManagementAnalyticsProblem({
    required this.code,
    required this.message,
  });

  factory ManagementAnalyticsProblem.read(MessageBuffer buffer) {
    return ManagementAnalyticsProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementSearchIndexControlIngestResponse {
  ManagementSearchIndexControlIngestResponse({
    required this.status,
    required this.error,
  });

  factory ManagementSearchIndexControlIngestResponse.read(
      MessageBuffer buffer) {
    return ManagementSearchIndexControlIngestResponse(
      status: buffer.readString(),
      error: buffer.readString(),
    );
  }

  final String status;
  final String error;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeString(error);
  }
}

class ManagementSearchIndexControlIngestRequest {
  ManagementSearchIndexControlIngestRequest({
    required this.indexName,
    required this.pause,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexControlIngestRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexControlIngestRequest(
      indexName: buffer.readString(),
      pause: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final bool pause;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeBool(pause);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingDeployFunctionResponse {
  ManagementEventingDeployFunctionResponse({
    required this.error,
  });

  factory ManagementEventingDeployFunctionResponse.read(MessageBuffer buffer) {
    return ManagementEventingDeployFunctionResponse(
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingDeployFunctionRequest {
  ManagementEventingDeployFunctionRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingDeployFunctionRequest.read(MessageBuffer buffer) {
    return ManagementEventingDeployFunctionRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementGroupGetResponse {
  ManagementGroupGetResponse({
    required this.group,
  });

  factory ManagementGroupGetResponse.read(MessageBuffer buffer) {
    return ManagementGroupGetResponse(
      group: ManagementRbacGroup.read(buffer),
    );
  }

  final ManagementRbacGroup group;

  void write(MessageBuffer buffer) {
    group.write(buffer);
  }
}

class ManagementGroupGetRequest {
  ManagementGroupGetRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementGroupGetRequest.read(MessageBuffer buffer) {
    return ManagementGroupGetRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementViewIndexGetResponse {
  ManagementViewIndexGetResponse({
    required this.document,
  });

  factory ManagementViewIndexGetResponse.read(MessageBuffer buffer) {
    return ManagementViewIndexGetResponse(
      document: ManagementViewsDesignDocument.read(buffer),
    );
  }

  final ManagementViewsDesignDocument document;

  void write(MessageBuffer buffer) {
    document.write(buffer);
  }
}

class ManagementViewIndexGetRequest {
  ManagementViewIndexGetRequest({
    required this.bucketName,
    required this.documentName,
    required this.ns,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementViewIndexGetRequest.read(MessageBuffer buffer) {
    return ManagementViewIndexGetRequest(
      bucketName: buffer.readString(),
      documentName: buffer.readString(),
      ns: DesignDocumentNamespace.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String documentName;
  final DesignDocumentNamespace ns;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(documentName);
    ns.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementBucketCreateResponse {
  ManagementBucketCreateResponse({
    required this.errorMessage,
  });

  factory ManagementBucketCreateResponse.read(MessageBuffer buffer) {
    return ManagementBucketCreateResponse(
      errorMessage: buffer.readString(),
    );
  }

  final String errorMessage;

  void write(MessageBuffer buffer) {
    buffer.writeString(errorMessage);
  }
}

class ManagementBucketCreateRequest {
  ManagementBucketCreateRequest({
    required this.bucket,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementBucketCreateRequest.read(MessageBuffer buffer) {
    return ManagementBucketCreateRequest(
      bucket: ManagementClusterBucketSettings.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final ManagementClusterBucketSettings bucket;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    bucket.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsDatasetDropResponse {
  ManagementAnalyticsDatasetDropResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementAnalyticsDatasetDropResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsDatasetDropResponse(
      status: buffer.readString(),
      errors: List.generate(
          buffer.readUInt64(), (_) => ManagementAnalyticsProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsDatasetDropRequest {
  ManagementAnalyticsDatasetDropRequest({
    required this.dataverseName,
    required this.datasetName,
    required this.ignoreIfDoesNotExist,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsDatasetDropRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsDatasetDropRequest(
      dataverseName: buffer.readString(),
      datasetName: buffer.readString(),
      ignoreIfDoesNotExist: buffer.readBool(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String dataverseName;
  final String datasetName;
  final bool ignoreIfDoesNotExist;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(dataverseName);
    buffer.writeString(datasetName);
    buffer.writeBool(ignoreIfDoesNotExist);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementGroupDropResponse {
  ManagementGroupDropResponse();

  factory ManagementGroupDropResponse.read(MessageBuffer buffer) {
    return ManagementGroupDropResponse();
  }

  void write(MessageBuffer buffer) {}
}

class ManagementGroupDropRequest {
  ManagementGroupDropRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementGroupDropRequest.read(MessageBuffer buffer) {
    return ManagementGroupDropRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexGetResponse {
  ManagementSearchIndexGetResponse({
    required this.status,
    required this.index,
    required this.error,
  });

  factory ManagementSearchIndexGetResponse.read(MessageBuffer buffer) {
    return ManagementSearchIndexGetResponse(
      status: buffer.readString(),
      index: ManagementSearchIndex.read(buffer),
      error: buffer.readString(),
    );
  }

  final String status;
  final ManagementSearchIndex index;
  final String error;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    index.write(buffer);
    buffer.writeString(error);
  }
}

class ManagementSearchIndexGetRequest {
  ManagementSearchIndexGetRequest({
    required this.indexName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexGetRequest.read(MessageBuffer buffer) {
    return ManagementSearchIndexGetRequest(
      indexName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementQueryIndexGetAllDeferredResponse {
  ManagementQueryIndexGetAllDeferredResponse({
    required this.status,
    required this.indexNames,
  });

  factory ManagementQueryIndexGetAllDeferredResponse.read(
      MessageBuffer buffer) {
    return ManagementQueryIndexGetAllDeferredResponse(
      status: buffer.readString(),
      indexNames:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
    );
  }

  final String status;
  final List<String> indexNames;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(indexNames.length);
    for (final item in indexNames) {
      buffer.writeString(item);
    }
  }
}

class ManagementQueryIndexGetAllDeferredRequest {
  ManagementQueryIndexGetAllDeferredRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.queryCtx,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementQueryIndexGetAllDeferredRequest.read(MessageBuffer buffer) {
    return ManagementQueryIndexGetAllDeferredRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      queryCtx: QueryContext.read(buffer),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String collectionName;
  final QueryContext queryCtx;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    queryCtx.write(buffer);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementQueryIndexBuildResponse {
  ManagementQueryIndexBuildResponse({
    required this.status,
    required this.errors,
  });

  factory ManagementQueryIndexBuildResponse.read(MessageBuffer buffer) {
    return ManagementQueryIndexBuildResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementQueryIndexBuildResponseQueryProblem.read(buffer)),
    );
  }

  final String status;
  final List<ManagementQueryIndexBuildResponseQueryProblem> errors;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
  }
}

class ManagementQueryIndexBuildResponseQueryProblem {
  ManagementQueryIndexBuildResponseQueryProblem({
    required this.code,
    required this.message,
  });

  factory ManagementQueryIndexBuildResponseQueryProblem.read(
      MessageBuffer buffer) {
    return ManagementQueryIndexBuildResponseQueryProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementQueryIndexBuildRequest {
  ManagementQueryIndexBuildRequest({
    required this.bucketName,
    required this.scopeName,
    required this.collectionName,
    required this.queryCtx,
    required this.indexNames,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementQueryIndexBuildRequest.read(MessageBuffer buffer) {
    return ManagementQueryIndexBuildRequest(
      bucketName: buffer.readString(),
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      queryCtx: QueryContext.read(buffer),
      indexNames:
          List.generate(buffer.readUInt64(), (_) => buffer.readString()),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String bucketName;
  final String scopeName;
  final String collectionName;
  final QueryContext queryCtx;
  final List<String> indexNames;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(bucketName);
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    queryCtx.write(buffer);
    buffer.writeUInt64(indexNames.length);
    for (final item in indexNames) {
      buffer.writeString(item);
    }
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementEventingUndeployFunctionResponse {
  ManagementEventingUndeployFunctionResponse({
    required this.error,
  });

  factory ManagementEventingUndeployFunctionResponse.read(
      MessageBuffer buffer) {
    return ManagementEventingUndeployFunctionResponse(
      error: buffer.readBool() ? ManagementEventingProblem.read(buffer) : null,
    );
  }

  final ManagementEventingProblem? error;

  void write(MessageBuffer buffer) {
    buffer.writeBool(error != null);
    if (error != null) {
      error!.write(buffer);
    }
  }
}

class ManagementEventingUndeployFunctionRequest {
  ManagementEventingUndeployFunctionRequest({
    required this.name,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementEventingUndeployFunctionRequest.read(MessageBuffer buffer) {
    return ManagementEventingUndeployFunctionRequest(
      name: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String name;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(name);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementSearchIndexGetDocumentsCountResponse {
  ManagementSearchIndexGetDocumentsCountResponse({
    required this.status,
    required this.count,
    required this.error,
  });

  factory ManagementSearchIndexGetDocumentsCountResponse.read(
      MessageBuffer buffer) {
    return ManagementSearchIndexGetDocumentsCountResponse(
      status: buffer.readString(),
      count: buffer.readInt64(),
      error: buffer.readString(),
    );
  }

  final String status;
  final int count;
  final String error;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeInt64(count);
    buffer.writeString(error);
  }
}

class ManagementSearchIndexGetDocumentsCountRequest {
  ManagementSearchIndexGetDocumentsCountRequest({
    required this.indexName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementSearchIndexGetDocumentsCountRequest.read(
      MessageBuffer buffer) {
    return ManagementSearchIndexGetDocumentsCountRequest(
      indexName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String indexName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(indexName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ManagementAnalyticsLinkGetAllResponse {
  ManagementAnalyticsLinkGetAllResponse({
    required this.status,
    required this.errors,
    required this.couchbase,
    required this.s3,
    required this.azureBlob,
  });

  factory ManagementAnalyticsLinkGetAllResponse.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkGetAllResponse(
      status: buffer.readString(),
      errors: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsLinkGetAllResponseProblem.read(buffer)),
      couchbase: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsCouchbaseRemoteLink.read(buffer)),
      s3: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsS3ExternalLink.read(buffer)),
      azureBlob: List.generate(buffer.readUInt64(),
          (_) => ManagementAnalyticsAzureBlobExternalLink.read(buffer)),
    );
  }

  final String status;
  final List<ManagementAnalyticsLinkGetAllResponseProblem> errors;
  final List<ManagementAnalyticsCouchbaseRemoteLink> couchbase;
  final List<ManagementAnalyticsS3ExternalLink> s3;
  final List<ManagementAnalyticsAzureBlobExternalLink> azureBlob;

  void write(MessageBuffer buffer) {
    buffer.writeString(status);
    buffer.writeUInt64(errors.length);
    for (final item in errors) {
      item.write(buffer);
    }
    buffer.writeUInt64(couchbase.length);
    for (final item in couchbase) {
      item.write(buffer);
    }
    buffer.writeUInt64(s3.length);
    for (final item in s3) {
      item.write(buffer);
    }
    buffer.writeUInt64(azureBlob.length);
    for (final item in azureBlob) {
      item.write(buffer);
    }
  }
}

class ManagementAnalyticsLinkGetAllResponseProblem {
  ManagementAnalyticsLinkGetAllResponseProblem({
    required this.code,
    required this.message,
  });

  factory ManagementAnalyticsLinkGetAllResponseProblem.read(
      MessageBuffer buffer) {
    return ManagementAnalyticsLinkGetAllResponseProblem(
      code: buffer.readInt64(),
      message: buffer.readString(),
    );
  }

  final int code;
  final String message;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(code);
    buffer.writeString(message);
  }
}

class ManagementAnalyticsLinkGetAllRequest {
  ManagementAnalyticsLinkGetAllRequest({
    required this.linkType,
    required this.linkName,
    required this.dataverseName,
    required this.clientContextId,
    required this.timeout,
  });

  factory ManagementAnalyticsLinkGetAllRequest.read(MessageBuffer buffer) {
    return ManagementAnalyticsLinkGetAllRequest(
      linkType: buffer.readString(),
      linkName: buffer.readString(),
      dataverseName: buffer.readString(),
      clientContextId: buffer.readBool() ? buffer.readString() : null,
      timeout:
          buffer.readBool() ? Duration(microseconds: buffer.readInt64()) : null,
    );
  }

  final String linkType;
  final String linkName;
  final String dataverseName;
  final String? clientContextId;
  final Duration? timeout;

  void write(MessageBuffer buffer) {
    buffer.writeString(linkType);
    buffer.writeString(linkName);
    buffer.writeString(dataverseName);
    buffer.writeBool(clientContextId != null);
    if (clientContextId != null) {
      buffer.writeString(clientContextId!);
    }
    buffer.writeBool(timeout != null);
    if (timeout != null) {
      buffer.writeInt64(timeout!.inMicroseconds);
    }
  }
}

class ImplSubdocCommand {
  ImplSubdocCommand({
    required this.opcode,
    required this.path,
    required this.value,
    required this.flags,
    required this.originalIndex,
  });

  factory ImplSubdocCommand.read(MessageBuffer buffer) {
    return ImplSubdocCommand(
      opcode: Opcode.read(buffer),
      path: buffer.readString(),
      value: buffer.readData(),
      flags: buffer.readInt64(),
      originalIndex: buffer.readInt64(),
    );
  }

  final Opcode opcode;
  final String path;
  final Uint8List value;
  final int flags;
  final int originalIndex;

  void write(MessageBuffer buffer) {
    opcode.write(buffer);
    buffer.writeString(path);
    buffer.writeData(value);
    buffer.writeInt64(flags);
    buffer.writeInt64(originalIndex);
  }
}

class ScanTerm {
  ScanTerm({
    required this.id,
    required this.exclusive,
  });

  factory ScanTerm.read(MessageBuffer buffer) {
    return ScanTerm(
      id: buffer.readData(),
      exclusive: buffer.readBool(),
    );
  }

  final Uint8List id;
  final bool exclusive;

  void write(MessageBuffer buffer) {
    buffer.writeData(id);
    buffer.writeBool(exclusive);
  }
}

class RangeScan {
  RangeScan({
    required this.start,
    required this.end,
  });

  factory RangeScan.read(MessageBuffer buffer) {
    return RangeScan(
      start: ScanTerm.read(buffer),
      end: ScanTerm.read(buffer),
    );
  }

  final ScanTerm start;
  final ScanTerm end;

  void write(MessageBuffer buffer) {
    start.write(buffer);
    end.write(buffer);
  }
}

class SamplingScan {
  SamplingScan({
    required this.limit,
    required this.seed,
  });

  factory SamplingScan.read(MessageBuffer buffer) {
    return SamplingScan(
      limit: buffer.readInt64(),
      seed: buffer.readBool() ? buffer.readInt64() : null,
    );
  }

  final int limit;
  final int? seed;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(limit);
    buffer.writeBool(seed != null);
    if (seed != null) {
      buffer.writeInt64(seed!);
    }
  }
}

class RangeSnapshotRequirements {
  RangeSnapshotRequirements({
    required this.vbucketUuid,
    required this.sequenceNumber,
    required this.sequenceNumberExists,
  });

  factory RangeSnapshotRequirements.read(MessageBuffer buffer) {
    return RangeSnapshotRequirements(
      vbucketUuid: buffer.readInt64(),
      sequenceNumber: buffer.readInt64(),
      sequenceNumberExists: buffer.readBool(),
    );
  }

  final int vbucketUuid;
  final int sequenceNumber;
  final bool sequenceNumberExists;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(vbucketUuid);
    buffer.writeInt64(sequenceNumber);
    buffer.writeBool(sequenceNumberExists);
  }
}

class RangeScanCreateOptions {
  RangeScanCreateOptions({
    required this.scopeName,
    required this.collectionName,
    required this.scanType,
    required this.timeout,
    required this.collectionId,
    required this.snapshotRequirements,
    required this.idsOnly,
  });

  factory RangeScanCreateOptions.read(MessageBuffer buffer) {
    return RangeScanCreateOptions(
      scopeName: buffer.readString(),
      collectionName: buffer.readString(),
      scanType: (() {
        final variantIndex = buffer.readUInt8();
        switch (variantIndex) {
          case 0:
            return null;
          case 1:
            return RangeScan.read(buffer);
          case 2:
            return SamplingScan.read(buffer);
          default:
            throw StateError("Invalid variant index: $variantIndex");
        }
      })(),
      timeout: Duration(microseconds: buffer.readInt64()),
      collectionId: buffer.readInt64(),
      snapshotRequirements:
          buffer.readBool() ? RangeSnapshotRequirements.read(buffer) : null,
      idsOnly: buffer.readBool(),
    );
  }

  final String scopeName;
  final String collectionName;
  final Object? scanType;
  final Duration timeout;
  final int collectionId;
  final RangeSnapshotRequirements? snapshotRequirements;
  final bool idsOnly;

  void write(MessageBuffer buffer) {
    buffer.writeString(scopeName);
    buffer.writeString(collectionName);
    if (scanType is Null) {
      buffer.writeUInt8(0);
    } else if (scanType is RangeScan) {
      buffer.writeUInt8(1);
      (scanType as RangeScan).write(buffer);
    } else if (scanType is SamplingScan) {
      buffer.writeUInt8(2);
      (scanType as SamplingScan).write(buffer);
    } else {
      throw StateError("Invalid variant type: $scanType");
    }
    buffer.writeInt64(timeout.inMicroseconds);
    buffer.writeInt64(collectionId);
    buffer.writeBool(snapshotRequirements != null);
    if (snapshotRequirements != null) {
      snapshotRequirements!.write(buffer);
    }
    buffer.writeBool(idsOnly);
  }
}

class RangeScanCreateResult {
  RangeScanCreateResult({
    required this.scanUuid,
    required this.idsOnly,
  });

  factory RangeScanCreateResult.read(MessageBuffer buffer) {
    return RangeScanCreateResult(
      scanUuid: buffer.readData(),
      idsOnly: buffer.readBool(),
    );
  }

  final Uint8List scanUuid;
  final bool idsOnly;

  void write(MessageBuffer buffer) {
    buffer.writeData(scanUuid);
    buffer.writeBool(idsOnly);
  }
}

class RangeScanContinueOptions {
  RangeScanContinueOptions({
    required this.batchItemLimit,
    required this.batchByteLimit,
    required this.batchTimeLimit,
    required this.idsOnly,
  });

  factory RangeScanContinueOptions.read(MessageBuffer buffer) {
    return RangeScanContinueOptions(
      batchItemLimit: buffer.readInt64(),
      batchByteLimit: buffer.readInt64(),
      batchTimeLimit: Duration(microseconds: buffer.readInt64()),
      idsOnly: buffer.readBool(),
    );
  }

  final int batchItemLimit;
  final int batchByteLimit;
  final Duration batchTimeLimit;
  final bool idsOnly;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(batchItemLimit);
    buffer.writeInt64(batchByteLimit);
    buffer.writeInt64(batchTimeLimit.inMicroseconds);
    buffer.writeBool(idsOnly);
  }
}

class RangeScanContinueResult {
  RangeScanContinueResult({
    required this.more,
    required this.complete,
    required this.idsOnly,
  });

  factory RangeScanContinueResult.read(MessageBuffer buffer) {
    return RangeScanContinueResult(
      more: buffer.readBool(),
      complete: buffer.readBool(),
      idsOnly: buffer.readBool(),
    );
  }

  final bool more;
  final bool complete;
  final bool idsOnly;

  void write(MessageBuffer buffer) {
    buffer.writeBool(more);
    buffer.writeBool(complete);
    buffer.writeBool(idsOnly);
  }
}

class RangeScanCancelOptions {
  RangeScanCancelOptions({
    required this.timeout,
  });

  factory RangeScanCancelOptions.read(MessageBuffer buffer) {
    return RangeScanCancelOptions(
      timeout: Duration(microseconds: buffer.readInt64()),
    );
  }

  final Duration timeout;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(timeout.inMicroseconds);
  }
}

class RangeScanItemBody {
  RangeScanItemBody({
    required this.flags,
    required this.expiry,
    required this.cas,
    required this.sequenceNumber,
    required this.datatype,
    required this.value,
  });

  factory RangeScanItemBody.read(MessageBuffer buffer) {
    return RangeScanItemBody(
      flags: buffer.readInt64(),
      expiry: buffer.readInt64(),
      cas: CasMessage.read(buffer),
      sequenceNumber: buffer.readInt64(),
      datatype: buffer.readInt64(),
      value: buffer.readData(),
    );
  }

  final int flags;
  final int expiry;
  final Cas cas;
  final int sequenceNumber;
  final int datatype;
  final Uint8List value;

  void write(MessageBuffer buffer) {
    buffer.writeInt64(flags);
    buffer.writeInt64(expiry);
    cas.write(buffer);
    buffer.writeInt64(sequenceNumber);
    buffer.writeInt64(datatype);
    buffer.writeData(value);
  }
}

class RangeScanItem {
  RangeScanItem({
    required this.key,
    required this.body,
  });

  factory RangeScanItem.read(MessageBuffer buffer) {
    return RangeScanItem(
      key: buffer.readData(),
      body: buffer.readBool() ? RangeScanItemBody.read(buffer) : null,
    );
  }

  final Uint8List key;
  final RangeScanItemBody? body;

  void write(MessageBuffer buffer) {
    buffer.writeData(key);
    buffer.writeBool(body != null);
    if (body != null) {
      body!.write(buffer);
    }
  }
}

class RangeScanCancelResult {
  RangeScanCancelResult();

  factory RangeScanCancelResult.read(MessageBuffer buffer) {
    return RangeScanCancelResult();
  }

  void write(MessageBuffer buffer) {}
}

class MutationState {
  MutationState({
    required this.tokens,
  });

  factory MutationState.read(MessageBuffer buffer) {
    return MutationState(
      tokens: List.generate(
          buffer.readUInt64(), (_) => MutationTokenMessage.read(buffer)),
    );
  }

  final List<MutationToken> tokens;

  void write(MessageBuffer buffer) {
    buffer.writeUInt64(tokens.length);
    for (final item in tokens) {
      item.write(buffer);
    }
  }
}

class RangeScanOrchestratorOptions {
  RangeScanOrchestratorOptions({
    required this.idsOnly,
    required this.consistentWith,
    required this.sort,
    required this.batchItemLimit,
    required this.batchByteLimit,
    required this.batchTimeLimit,
    required this.timeout,
  });

  factory RangeScanOrchestratorOptions.read(MessageBuffer buffer) {
    return RangeScanOrchestratorOptions(
      idsOnly: buffer.readBool(),
      consistentWith: buffer.readBool() ? MutationState.read(buffer) : null,
      sort: ScanSort.read(buffer),
      batchItemLimit: buffer.readInt64(),
      batchByteLimit: buffer.readInt64(),
      batchTimeLimit: Duration(microseconds: buffer.readInt64()),
      timeout: Duration(microseconds: buffer.readInt64()),
    );
  }

  final bool idsOnly;
  final MutationState? consistentWith;
  final ScanSort sort;
  final int batchItemLimit;
  final int batchByteLimit;
  final Duration batchTimeLimit;
  final Duration timeout;

  void write(MessageBuffer buffer) {
    buffer.writeBool(idsOnly);
    buffer.writeBool(consistentWith != null);
    if (consistentWith != null) {
      consistentWith!.write(buffer);
    }
    sort.write(buffer);
    buffer.writeInt64(batchItemLimit);
    buffer.writeInt64(batchByteLimit);
    buffer.writeInt64(batchTimeLimit.inMicroseconds);
    buffer.writeInt64(timeout.inMicroseconds);
  }
}
