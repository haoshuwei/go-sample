#!/usr/bin/env bash

set -e

export GOARCH="amd64"
export GOOS="linux"

CGO_ENABLED=0 go build

if [ "$1" == "" ]; then
  docker build -t=registry.cn-hangzhou.aliyuncs.com/haoshuwei24/go-demo:1k .
  docker push registry.cn-hangzhou.aliyuncs.com/haoshuwei24/go-demo:1k
fi

rm -rf go-sample
