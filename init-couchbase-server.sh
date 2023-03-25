#!/usr/bin/env bash

set -e

CONTAINER_NAME=couchbase-dart-couchbase-1

docker compose down
docker compose up -d

MAX_ATTEMPTS=10
ATTEMPTS=0
until curl http://localhost:8091/pools/default; do
  if [ $ATTEMPTS -eq $MAX_ATTEMPTS ]; then
    echo "Couchbase Sever is unavailable after $MAX_ATTEMPTS attempts - exiting"
    exit 1
  fi
  ATTEMPTS=$((ATTEMPTS+1))
  >&2 echo "Couchbase Server is unavailable - sleeping"
  sleep 5
done

docker exec $CONTAINER_NAME couchbase-cli cluster-init \
  -c 127.0.0.1 \
  --cluster-username Administrator \
  --cluster-password password \
  --services data \
  --cluster-ramsize 4096
