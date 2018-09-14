#!/bin/bash

docker run -d --name wiremock -p 8080:8080  -v $(pwd)/__files/:/home/__files/ -v $(pwd)/mappings/:/home/mappings/ prch12/wiremock:dev-v1
# docker run -d --name wiremock -p 8080:8080  prch12/wiremock:dev-v1