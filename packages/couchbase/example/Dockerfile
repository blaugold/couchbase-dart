FROM dart:latest AS build

COPY . /app/

WORKDIR /app

RUN dart pub get
RUN dart run couchbase:install
RUN dart compile exe lib/main.dart -o main

FROM ubuntu:latest

WORKDIR /app

COPY --from=build /app/main ./
COPY --from=build /app/.dart_tool/couchbase-dart ./.dart_tool/couchbase-dart/

CMD ["./main"]
