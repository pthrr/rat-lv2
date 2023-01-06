FROM rust:latest

RUN apt-get update && apt-get install -y \
  apt-utils \
  clang \
  && rm -rf /var/lib/apt/lists/*
RUN rustup target add aarch64-unknown-linux-musl
RUN rustup target add armv7-unknown-linux-musleabihf
RUN rustup target add x86_64-unknown-linux-musl

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
