#!/bin/sh -l

if [ -d /github/workspace ]; then
	cd /github/workspace
fi

if [ -f "$1" ]; then
	echo "running kubeyaml on $1"
	/kubeyaml < "$1"
fi

if [ -d "$1" ]; then
	echo "running kubeyaml on DIR yaml $1"
	find $1 -iname \*.yaml -type f -exec sh -c "cat {} | /kubeyaml" \;
	find $1 -iname \*.yml -type f -exec sh -c "cat {} | /kubeyaml" \;
fi
