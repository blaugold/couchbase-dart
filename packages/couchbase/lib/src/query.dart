import 'dart:convert';

import 'package:solvent/solvent.dart';

import 'cluster.dart';
import 'general.dart';
import 'message.g.dart' as message;
import 'mutation_state.dart';
import 'scope.dart';

/// The status of a query.
///
/// {@category Query}
enum QueryStatus {
  /// The query is still running.
  running,

  /// The query completed successfully.
  success,

  /// The query completed with errors.
  errors,

  /// The query completed but the outcome was unknown.
  completed,

  /// The query was stopped.
  stopped,

  /// The query timed out during execution.
  timeout,

  /// A connection was closed during execution of the query.
  closed,

  /// The query stopped with fatal errors.
  fatal,

  /// The query was aborted while executing.
  aborted,

  /// The status of the query is unknown.
  unknown,
}

/// The results of a query.
///
/// {@category Query}
class QueryResult {
  const QueryResult({
    required this.rows,
    required this.meta,
  });

  /// The rows which have been returned by the query.
  final List<Map<String, Object?>> rows;

  /// The meta-data which has been returned by the query.
  final QueryMetaData meta;
}

/// Meta-data that is returned from a query.
///
/// {@category Query}
class QueryMetaData {
  const QueryMetaData({
    required this.requestId,
    required this.clientContextId,
    required this.status,
    this.signature,
    required this.warnings,
    this.metrics,
    this.profile,
  });

  /// The request ID which is associated with the executed query.
  final String requestId;

  /// The client context id which is associated with the executed query.
  final String clientContextId;

  /// The status of the query at the time the query meta-data was generated.
  final QueryStatus status;

  /// The signature of the query.
  final Map<String, Object?>? signature;

  /// Warnings that occurred during the execution of the query.
  final List<QueryWarning> warnings;

  /// Various metrics which are made available by the query engine.
  final QueryMetrics? metrics;

  /// Various profiling details that were generated during execution of the
  /// query.
  final Map<String, Object?>? profile;
}

extension MessageQueryMetaData on message.QueryResponseQueryMetaData {
  QueryMetaData toApi() {
    return QueryMetaData(
      requestId: requestId,
      clientContextId: clientContextId,
      status: QueryStatus.values.byName(status),
      signature:
          signature?.let((it) => jsonDecode(it) as Map<String, Object?>?),
      warnings: warnings?.map((warning) => warning.toApi()).toList() ?? [],
      metrics: metrics?.toApi(),
      profile: profile?.let((it) => jsonDecode(it) as Map<String, Object?>),
    );
  }
}

/// Information about a warning which occurred during the execution of a query.
///
/// {@category Query}
class QueryWarning {
  const QueryWarning({
    required this.code,
    required this.message,
  });

  /// The numeric code associated with the warning which occurred.
  final int code;

  /// A human readable representation of the warning which occurred.
  final String message;
}

extension MessageQueryWarning on message.QueryResponseQueryProblem {
  QueryWarning toApi() {
    return QueryWarning(
      code: code,
      message: this.message,
    );
  }
}

/// Various metrics that are returned by the server following the execution of
/// a query.
///
/// {@category Query}
class QueryMetrics {
  const QueryMetrics({
    required this.elapsedTime,
    required this.executionTime,
    required this.sortCount,
    required this.resultCount,
    required this.resultSize,
    required this.mutationCount,
    required this.errorCount,
    required this.warningCount,
  });

  /// The total amount of time spent running the query.
  final Duration elapsedTime;

  /// The total amount of time spent executing the query.
  final Duration executionTime;

  /// The total number of rows which were part of the sorting for the query.
  final int sortCount;

  /// The total number of rows which were part of the result set.
  final int resultCount;

  /// The total number of bytes which were generated as part of the result set.
  final int resultSize;

  /// The total number of rows which were altered by the query.
  final int mutationCount;

  /// The total number of errors which were encountered during the execution of
  /// the query.
  final int errorCount;

  /// The total number of warnings which were encountered during the execution
  /// of the query.
  final int warningCount;
}

extension MessageQueryMetrics on message.QueryResponseQueryMetrics {
  QueryMetrics toApi() {
    return QueryMetrics(
      elapsedTime: elapsedTime,
      executionTime: executionTime,
      sortCount: sortCount,
      resultCount: resultCount,
      resultSize: resultSize,
      mutationCount: mutationCount,
      errorCount: errorCount,
      warningCount: warningCount,
    );
  }
}

/// The profiling mode for a query.
///
/// {@category Query}
enum QueryProfileMode {
  /// Disables the generation of profiling data.
  off,

  /// Enables profiling of the phases of a query.
  phases,

  /// Enables profiling of the timings of a query.
  timings,
}

extension MessageQueryProfileMode on QueryProfileMode {
  message.QueryProfile toMessage() {
    switch (this) {
      case QueryProfileMode.off:
        return message.QueryProfile.off;
      case QueryProfileMode.phases:
        return message.QueryProfile.phases;
      case QueryProfileMode.timings:
        return message.QueryProfile.timings;
    }
  }
}

/// The various scan consistency options that are available when
/// querying against the query service.
///
/// {@category Query}
enum QueryScanConsistency {
  /// No specific consistency is required.
  ///
  /// This is the fastest
  /// options, but results may not include the most recent operations which have
  /// been performed.
  notBounded,

  /// The results of the query should include all operations that
  /// have occurred up until the query was started.
  ///
  /// This incurs a performance penalty of waiting for the index to catch up to
  /// the most recent operations, but provides the highest level of consistency.
  requestPlus,
}

extension MessageQueryScanConsistency on QueryScanConsistency {
  message.QueryScanConsistency toMessage() {
    switch (this) {
      case QueryScanConsistency.notBounded:
        return message.QueryScanConsistency.notBounded;
      case QueryScanConsistency.requestPlus:
        return message.QueryScanConsistency.requestPlus;
    }
  }
}

/// Options for [Cluster.query] and [Scope.query].
///
/// {@category Query}
class QueryOptions extends CommonOptions {
  const QueryOptions({
    this.parameters,
    this.scanConsistency,
    this.consistentWith,
    this.adhoc = true,
    this.flexIndex = false,
    this.preserveExpiry = false,
    this.clientContextId,
    this.maxParallelism,
    this.pipelineBatch,
    this.pipelineCap,
    this.scanWait,
    this.scanCap,
    this.readOnly = false,
    this.profile = QueryProfileMode.off,
    this.metrics = false,
    this.queryContext,
    this.raw,
    super.timeout,
  });

  /// Values to be used for the placeholders within the query.
  ///
  /// Must be a `Map<String, Object?>` or `List<Object?>`.
  final Object? parameters;

  /// The consistency requirements when executing the query.
  final QueryScanConsistency? scanConsistency;

  /// A [MutationState] which the query should be consistent with.
  final MutationState? consistentWith;

  /// Whether this is an ad-hoc query, or if it should be prepared for faster
  /// execution in the future.
  ///
  /// Defaults to `true`.
  final bool adhoc;

  /// Whether flex-indexes should be enabled.
  ///
  /// This allows the use of full-text search from the query service.
  ///
  /// Defaults to `false`.
  final bool flexIndex;

  /// Whether the query should preserve the existing document expiry times when
  /// mutating documents.
  ///
  /// Defaults to `false`.
  final bool preserveExpiry;

  /// The client context id for this query.
  final String? clientContextId;

  /// The maximum parallelism for this query.
  ///
  /// This is an advanced option, see the query service reference for more
  /// information on the proper use and tuning of this option.
  final int? maxParallelism;

  /// The pipeline batch size for this query.
  ///
  /// This is an advanced option, see the query service reference for more
  /// information on the proper use and tuning of this option.
  final int? pipelineBatch;

  /// The pipeline capacity for this query.
  ///
  /// This is an advanced option, see the query service reference for more
  /// information on the proper use and tuning of this option.
  final int? pipelineCap;

  /// The scan wait time for this query.
  ///
  /// This is an advanced option, see the query service reference for more
  /// information on the proper use and tuning of this option.
  final Duration? scanWait;

  /// The scan capacity for this query.
  ///
  /// This is an advanced option, see the query service reference for more
  /// information on the proper use and tuning of this option.
  final int? scanCap;

  /// Whether this query should be executed in read-only mode.
  ///
  /// This disables the ability for the query to make any changes to the data.
  ///
  /// Defaults to `false`.
  final bool readOnly;

  /// The level of profiling that should be used for the query.
  ///
  /// Defaults to [QueryProfileMode.off].
  final QueryProfileMode profile;

  /// Whether metrics should be captured as part of the execution of the query.
  ///
  /// Defaults to `false`.
  final bool metrics;

  /// The context within which this query should be executed.
  ///
  /// This can be scoped to a scope or a collection within the dataset.
  final String? queryContext;

  /// Any additional parameters which should be passed to the query engine when
  /// executing the query.
  final Map<String, Object?>? raw;

  /// Creates a copy of this [QueryOptions] with the specified options
  /// updated.
  QueryOptions copyWith({
    Object? parameters,
    QueryScanConsistency? scanConsistency,
    MutationState? consistentWith,
    bool? adhoc,
    bool? flexIndex,
    bool? preserveExpiry,
    String? clientContextId,
    int? maxParallelism,
    int? pipelineBatch,
    int? pipelineCap,
    Duration? scanWait,
    int? scanCap,
    bool? readOnly,
    QueryProfileMode? profile,
    bool? metrics,
    String? queryContext,
    Map<String, Object?>? raw,
    Duration? timeout,
  }) {
    return QueryOptions(
      parameters: parameters ?? this.parameters,
      scanConsistency: scanConsistency ?? this.scanConsistency,
      consistentWith: consistentWith ?? this.consistentWith,
      adhoc: adhoc ?? this.adhoc,
      flexIndex: flexIndex ?? this.flexIndex,
      preserveExpiry: preserveExpiry ?? this.preserveExpiry,
      clientContextId: clientContextId ?? this.clientContextId,
      maxParallelism: maxParallelism ?? this.maxParallelism,
      pipelineBatch: pipelineBatch ?? this.pipelineBatch,
      pipelineCap: pipelineCap ?? this.pipelineCap,
      scanWait: scanWait ?? this.scanWait,
      scanCap: scanCap ?? this.scanCap,
      readOnly: readOnly ?? this.readOnly,
      profile: profile ?? this.profile,
      metrics: metrics ?? this.metrics,
      queryContext: queryContext ?? this.queryContext,
      raw: raw ?? this.raw,
      timeout: timeout ?? this.timeout,
    );
  }
}
