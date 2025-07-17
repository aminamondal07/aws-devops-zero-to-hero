#!/bin/bash
set -e

# Stop the running container (if any)
docker ps  -q --filter "publish=5000" | grep -q . && docker stop $(docker ps -q --filter "publish=5000")
