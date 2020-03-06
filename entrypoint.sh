#!/bin/sh -l

echo 'test'
ls -al
echo 'running kubeyaml'
cat /test.yaml | /kubeyaml
