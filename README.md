## TODO

- [ ] Distribution of native libraries
- [ ] Auto generate version.g.dart
- [ ] Data Classes
  - [ ] ToString
  - [ ] Equality
  - [ ] CopyWith
- [ ] Exceptions classes
- [ ] Use Dart 3
- [ ] Use `checks` package for test assertions
- [ ] CI for
  - [x] macOS
  - [x] Linux
  - [ ] Windows

### API

- [ ] cbppVersion
- [ ] Cluster
  - [x] connect
  - [x] bucket
  - [ ] users
  - [ ] buckets
  - [ ] queryIndexes
  - [ ] analyticsIndexes
  - [ ] searchIndexes
  - [ ] eventingFunctions
  - [ ] transactions
  - [ ] query
  - [ ] analyticsQuery
  - [ ] searchQuery
  - [x] diagnostics
  - [x] ping
  - [x] close
- [ ] Bucket
  - [x] name
  - [x] scope
  - [x] defaultScope
  - [x] collection
  - [x] defaultCollection
  - [ ] viewIndexes
  - [ ] collections
  - [ ] viewQuery
  - [ ] ping
- [ ] Scope
  - [x] name
  - [x] collection
  - [x] defaultCollection
  - [ ] query
  - [ ] analyticsQuery
- [ ] Collection
  - [x] name
  - [ ] get
  - [x] exists
  - [ ] getAnyReplica
  - [ ] getAllReplicas
  - [ ] insert
  - [ ] upsert
  - [ ] replace
  - [ ] remove
  - [ ] getAndTouch
  - [ ] touch
  - [ ] getAndLock
  - [ ] unlock
  - [ ] lookupIn
  - [ ] mutateIn
  - [ ] list
  - [ ] list
  - [ ] map
  - [ ] set
  - [ ] binary
  - [ ] queryIndexes
- [ ] Data Structures
  - [ ] CouchbaseList
  - [ ] CouchbaseQueue
  - [ ] CouchbaseMap
  - [ ] CouchbaseSet
  - [ ] BinaryCollection
- [ ] Transactions
- [ ] Management
  - [ ] UserManager
  - [ ] BucketManager
  - [ ] QueryIndexManager
  - [ ] AnalyticsIndexManager
  - [ ] SearchIndexManager
  - [ ] EventingFunctionManager
  - [ ] ViewIndexManager
  - [ ] CollectionManager
