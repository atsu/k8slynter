#!/bin/sh -l

echo 'test'
docker run --rm atsuio/k8slynter:latest

echo 'running kubeyaml'
cat /test.yaml | /kubeyaml
