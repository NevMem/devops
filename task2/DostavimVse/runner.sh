#!/bin/bash

set -eu

echo here

cd ./app

./wait-for-it.sh db:3306 -t 240

./mvnw spring-boot:run -P init-base
./mvnw spring-boot:run -P web-app
