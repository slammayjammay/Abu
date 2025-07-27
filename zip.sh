#!/bin/bash

set -e

if [ "$#" -eq 0 ]; then
	echo "Please provide folder to zip."
	exit 1
fi

cd $1
zip "abu-$1.zip" ./*
cd ..
mv "$1/abu-$1.zip" .
