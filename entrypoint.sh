#!/bin/sh -l

echo "running kubeyaml on $1"
/kubeyaml < /github/workspace/"$1"
