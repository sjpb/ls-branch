#!/usr/bin/env bash

for d in $1/*
do
if [[ -d $d ]]; then
    if [[ -e $d/.git ]]; then
        pushd $d > /dev/null
        echo $(basename $d): $(git branch --show-current)
        popd > /dev/null
    fi
fi
done