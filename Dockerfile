# Build is required to extract the release files
FROM debian:bullseye-slim

WORKDIR /dist

# Make directories for config
RUN mkdir config

# Copy router binary for docker image
COPY ./target/release/router ./
# Copy configuration for docker image
COPY ./router.yaml config

ENV APOLLO_ROUTER_CONFIG_PATH="/dist/config/router.yaml"

# Default executable is the router
ENTRYPOINT ["/dist/router"]
