#!/bin/bash

curl -L `curl -s https://api.github.com/repos/docker/machine/releases/latest | jq -r '.assets[].browser_download_url | select(contains("linux") and contains("amd64"))'` > /usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine
