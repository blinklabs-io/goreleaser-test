FROM ghcr.io/blinklabs-io/go:1.24.1-1 AS build

WORKDIR /code
COPY go.* .
RUN go mod download
COPY . .
RUN make build

FROM ghcr.io/blinklabs-io/cardano-configs:20250213-1 AS cardano-configs
FROM ghcr.io/blinklabs-io/txtop:0.12.3 AS txtop

FROM debian:bookworm-slim AS goreleaser-test
COPY --from=build /code/goreleaser-test /bin/
COPY --from=cardano-configs /config/ /opt/cardano/config/
COPY --from=txtop /bin/txtop /usr/local/bin/
ENV CARDANO_CONFIG=/opt/cardano/config/preview/config.json
ENV CARDANO_NETWORK=preview
# Create database dir owned by container user
VOLUME /data/db
ENV CARDANO_DATABASE_PATH=/data/db
# Create socket dir owned by container user
VOLUME /ipc
ENV CARDANO_NODE_SOCKET_PATH=/ipc/goreleaser-test.socket
ENV CARDANO_SOCKET_PATH=/ipc/goreleaser-test.socket
ENTRYPOINT ["goreleaser-test"]
