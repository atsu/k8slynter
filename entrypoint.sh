#!/bin/sh -l

if [ -z "${GITHUB_WORKSPACE}" ]; then
	GITHUB_WORKSPACES=/github/workspace
fi

if [ -d "${GITHUB_WORKSPACE}" ] ;then
	cd ${GITHUB_WORKSPACE}
fi

if [ -f "$1" ]; then
	echo "running /kubeyaml on $1"
	/kubeyaml < "$1"
	if [ $? -ne 0 ]; then
		echo "error, exiting"
		exit 1
	fi
fi

if [ -d "$1" ]; then
	echo "running find yaml on DIR $1"
	find $1 -type f -iname \*.yaml -print0 | xargs -0 -n1 sh -c 'cat $@ | /kubeyaml' \;
	if [ $? -ne 0 ]; then
		echo "error, exiting"
		exit 1
	fi

	echo "running find yml on DIR $1"
	find $1 -type f -iname \*.yml -print0

	find $1 -type f -iname \*.yml -print0 | xargs -0 -n1 sh -c 'cat $@ | /kubeyaml' \;
	if [ $? -ne 0 ]; then
		echo "error, exiting"
		exit 1
	fi
fi
