#!/bin/bash

echo "warning: you must be at same folder that your changed files are"
if [ $# -eq 0 ]; then
	echo "please provide your commit message."
else
	git add . ; git commit -m "$1"
fi
