#!/bin/bash

. versioning

docker build -t "splatform/eirini-cert-copier:$ARTIFACT_VERSION" .
docker push "splatform/eirini-cert-copier:$ARTIFACT_VERSION"
