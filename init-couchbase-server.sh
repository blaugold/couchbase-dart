#!/usr/bin/env bash

set -e

CONTAINER_NAME=couchbase-dart-couchbase-1

docker compose down
docker compose up -d

MAX_ATTEMPTS=60
ATTEMPTS=0
until curl http://localhost:8091/pools/default >/dev/null 2>1; do
  if [ $ATTEMPTS -eq $MAX_ATTEMPTS ]; then
    echo "Couchbase Sever is unavailable after $MAX_ATTEMPTS attempts - exiting"
    exit 1
  fi
  ATTEMPTS=$((ATTEMPTS + 1))
  echo >&2 "Couchbase Server is unavailable - sleeping"
  sleep 1
done

docker exec $CONTAINER_NAME couchbase-cli cluster-init \
  -c 127.0.0.1 \
  --cluster-username admin \
  --cluster-password password \
  --services data,query,index \
  --cluster-ramsize 1024

docker exec $CONTAINER_NAME couchbase-cli bucket-create \
  -c 127.0.0.1 \
  --username admin \
  --password password \
  --bucket test \
  --bucket-type couchbase \
  --bucket-ramsize 256

MAX_ATTEMPTS=60
ATTEMPTS=0
until docker exec $CONTAINER_NAME cbq \
  --user admin \
  --password password \
  --engine http://localhost:8091 \
  --exit-on-error \
  --script "SELECT 1;" >/dev/null; do
  if [ $ATTEMPTS -eq $MAX_ATTEMPTS ]; then
    echo "Couchbase query service is unavailable after $MAX_ATTEMPTS attempts - exiting"
    exit 1
  fi
  ATTEMPTS=$((ATTEMPTS + 1))
  echo >&2 "Couchbase query service is unavailable - sleeping"
  sleep 1
done

docker exec $CONTAINER_NAME cbq \
  --user admin \
  --password password \
  --engine http://localhost:8091 \
  --exit-on-error \
  --script "CREATE PRIMARY INDEX ON \`test\`;"
