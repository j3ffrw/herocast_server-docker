#!/bin/bash

echo "api: $shpApiToken"
echo "build: $BUILD_ID"

curl -o Build.tar.gz `curl -H "Authorization: apiToken $shpApiToken" -X GET https://api.shippable.com/builds/$BUILD_ID/1/artifacts`
