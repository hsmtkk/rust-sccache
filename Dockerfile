FROM rust:1.54 AS builder

RUN cargo install sccache

FROM rust:1.54 AS runtime

COPY --from=builder /usr/local/cargo/bin/sccache /usr/local/cargo/bin/sccache

RUN sccache --version \
 && sccache --help
