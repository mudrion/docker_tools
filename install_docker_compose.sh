#!/bin/bash

curl -L `curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.assets[].browser_download_url | select(contains("Linux") and contains("x86_64"))'` > /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
