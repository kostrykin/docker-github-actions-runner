#!/usr/bin/dumb-init /bin/bash

rm -rf /actions-runner/*
cp -R /actions-runner-base/* /actions-runner/

/entrypoint-base.sh $*
