#!/bin/sh -l

echo 'running kubeyaml'
cat /test.yaml | /kubeyaml

docker run --rm atsuio/k8slynter:latest