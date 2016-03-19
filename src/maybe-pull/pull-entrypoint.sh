#!/bin/sh

if [ "$1" = "" ]; then
  echo "image is required"  1>&2
  exit 1
fi

failok() {
  echo "failed to pull ${1}, moving on..."  1>&2
  exit 0
}

/usr/local/bin/docker-entrypoint.sh pull $1 || failok $1
