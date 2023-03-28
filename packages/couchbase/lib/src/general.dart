import 'message.g.dart' as message;

/// The various service types available.
enum ServiceType {
  /// The key-value service, responsible for data storage.
  keyValue('kv'),

  /// The management service, responsible for managing the cluster.
  management('mgmt'),

  /// The views service, responsible for views querying.
  views('views'),

  /// The query service, responsible for N1QL querying.
  query('query'),

  /// The search service, responsible for full-text search querying.
  search('search'),

  /// The analytics service, responsible for analytics querying.
  analytics('analytics'),

  /// The eventing service, responsible for event-driven actions.
  eventing('eventing');

  const ServiceType(this.name);

  final String name;
}

extension MessageServiceTypeExtension on message.ServiceType {
  ServiceType toDart() {
    switch (this) {
      case message.ServiceType.keyValue:
        return ServiceType.keyValue;
      case message.ServiceType.management:
        return ServiceType.management;
      case message.ServiceType.view:
        return ServiceType.views;
      case message.ServiceType.query:
        return ServiceType.query;
      case message.ServiceType.search:
        return ServiceType.search;
      case message.ServiceType.analytics:
        return ServiceType.analytics;
      case message.ServiceType.eventing:
        return ServiceType.eventing;
    }
  }
}

extension ServiceTypeExtension on ServiceType {
  message.ServiceType toMessage() {
    switch (this) {
      case ServiceType.keyValue:
        return message.ServiceType.keyValue;
      case ServiceType.management:
        return message.ServiceType.management;
      case ServiceType.views:
        return message.ServiceType.view;
      case ServiceType.query:
        return message.ServiceType.query;
      case ServiceType.search:
        return message.ServiceType.search;
      case ServiceType.analytics:
        return message.ServiceType.analytics;
      case ServiceType.eventing:
        return message.ServiceType.eventing;
    }
  }
}
