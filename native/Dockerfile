FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  build-essential \
  cmake \
  unzip \
  curl

ENV DART_SDK /usr/lib/dart
ENV PATH $DART_SDK/bin:$PATH

WORKDIR /root
RUN set -eux; \
    case "$(dpkg --print-architecture)" in \
        amd64) \
            DART_SHA256=0fdff25e6acba3d6094155a7e341634f8de3477e86c2fda4ad47232c1adf704f; \
            SDK_ARCH="x64";; \
        armhf) \
            DART_SHA256=7286b3a935c98ec9731c6e540614ef20e8ad8a1d6bef194c79e29d9837363de3; \
            SDK_ARCH="arm";; \
        arm64) \
            DART_SHA256=6913b7c0b3b78bc141d372cd473da21771e57372b1ab45c977ce1550c8ff0b9c; \
            SDK_ARCH="arm64";; \
    esac; \
    SDK="dartsdk-linux-${SDK_ARCH}-release.zip"; \
    BASEURL="https://storage.googleapis.com/dart-archive/channels"; \
    URL="$BASEURL/stable/release/2.19.6/sdk/$SDK"; \
    echo "SDK: $URL" >> dart_setup.log ; \
    curl -fLO "$URL"; \
    echo "$DART_SHA256 *$SDK" \
        | sha256sum --check --status --strict -; \
    unzip "$SDK" && mv dart-sdk "$DART_SDK" && rm "$SDK" \
        && chmod 755 "$DART_SDK" && chmod 755 "$DART_SDK/bin";

WORKDIR /work

COPY include ./include
COPY src ./src
COPY vendor ./vendor
COPY build_openssl.dart ./
COPY build_utils.dart ./
COPY build.dart ./
COPY CMakeLists.txt ./

RUN dart build_openssl.dart --no-ccache
RUN dart build.dart
