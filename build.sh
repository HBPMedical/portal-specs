#!/bin/bash

docker run -i -t -v "${PWD}/webservices:/spec" \
    -v "${PWD}/target/html:/gen" \
    -e "LANGUAGE=dynamic-html" \
    -e "SWAGGER_FILE=mip-backend.yml" \
    sandcastle/swagger-codegen-docker /bin/bash