#!/bin/sh
docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli generate \
    -i /local/worth-open-api.yaml \
    --git-repo-id worth-open-api-go \
    --git-user-id xopenapi \
    --package-name worth \
    -g go \
    -o /local/out/worth-open-api-go

# docker run --rm -v "${PWD}:/local" xopenapi/openapi-generator-cli generate \
#   -i /local/worth-open-api.yaml \
#    --git-repo-id worth-open-api-java \
#    --git-user-id xopenapi \
#    --package-name com.xopenapis.worth \
#    -g java \
#    -o /local/out/worth-open-api-java
