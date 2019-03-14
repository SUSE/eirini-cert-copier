#!/bin/bash

readonly REGISTRY_CERTS_DIR="/workspace/docker/certs.d/$REGISTRY/"

mkdir --parents "$REGISTRY_CERTS_DIR"
echo "${INTERNAL_CA_CERT}" | base64 -d > "$REGISTRY_CERTS_DIR/ca.crt"
echo "Sucessfully copied certs"

main
