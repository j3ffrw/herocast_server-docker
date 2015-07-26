#!/bin/bash

shpApiToken=$1
BUILD_ID=$2

curl -o Build.tar.gz `curl -H "Authorization: apiToken $shpApiToken" -X GET https://api.shippable.com/builds/$BUILD_ID/1/artifacts`
