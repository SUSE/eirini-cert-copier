#!/bin/bash

readonly REGISTRY_CERTS_DIR="/workspace/docker/certs.d/$REGISTRY/"

copy-cert() {
    mkdir --parents "$REGISTRY_CERTS_DIR"
    echo "${INTERNAL_CA_CERT}" | base64 -d > "$REGISTRY_CERTS_DIR/ca.crt"
    echo "Sucessfully copied certs"
}

main(){
  while true; do
    if get-cert; then
        copy-cert
    else
        echo "Nothing to do"
    fi
    sleep 30
  done
}

main
