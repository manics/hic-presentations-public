#!/bin/bash

CONTAINER_NAME=excalidraw

if command -v podman; then
  ENGINE=podman
elif command -v nerdctl; then
  ENGINE=nerdctl
elif command -v docker; then
  ENGINE=docker
else
  echo "ERROR: Container engine not found"
  exit 1
fi

container=$("$ENGINE" ps -a --filter name="$CONTAINER_NAME" --format '{{.Names}}')
if [ "$container" = "$CONTAINER_NAME" ]; then
  "$ENGINE" start -a "$CONTAINER_NAME"
else
  # https://docs.excalidraw.com/docs/introduction/development#self-hosting
  "$ENGINE" run -it --name "$CONTAINER_NAME" -p 5000:80 excalidraw/excalidraw:latest
fi
