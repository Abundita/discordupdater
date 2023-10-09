#!/bin/bash

json=$(cat /opt/discord/resources/build_info.json)
version=$(echo $json | grep -o '"version": "[^"]*"' | sed 's/"version": "\(.*\)"/\1/')
new_version=$(echo $version | awk -F. '{$NF = $NF + 1; print $0}' OFS=.)
json=$(echo $json | sed "s/\"version\": \"$version\"/\"version\": \"$new_version\"/")
echo "$json" > /opt/discord/resources/build_info.json

killall Discord

