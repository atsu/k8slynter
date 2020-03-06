#!/bin/sh -l

echo 'test'
pwd
ls -al
ls -al /github/workflow
echo 'running kubeyaml'
cat /github/workflow/test.yaml | /kubeyaml
