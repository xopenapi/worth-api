#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli generate \
    -i /local/worth-open-api.yaml \
    --git-repo-id worth-open-api-py \
    --git-user-id xopenapi \
    --package-name worth \
    -g python \
    -o /local/out/worth-open-api-py
