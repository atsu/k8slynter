#!/bin/sh -l

echo 'test'
pwd
ls -al
ls -al /github/workspace
echo 'running kubeyaml'
cat /github/workspace/test.yaml | /kubeyaml
