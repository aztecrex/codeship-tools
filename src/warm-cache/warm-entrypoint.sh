#!/bin/sh

if [ "$1" = "" ]; then
  echo "image is required"  1>&2
  exit 1
fi

pull-entrypoint.sh "${1}:branch-master"

if [ "$CI_BRANCH" != "" -a "$CI_BRANCH" != "master" ]; then
  pull-entrypoint.sh "${1}:branch-${CI_BRANCH}"
fi
