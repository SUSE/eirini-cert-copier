#!/bin/bash

readonly REGISTRY_CERTS_DIR="/workspace/docker/certs.d/$REGISTRY/"

mkdir --parents "$REGISTRY_CERTS_DIR"
echo "${INTERNAL_CA_CERT}" > "$REGISTRY_CERTS_DIR/ca.crt"
echo "Sucessfully copied certs"
