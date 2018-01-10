#!/bin/bash

# for-each-plugin git status
# for-each-plugin make

PLUGIN_DIRS=(*/)
# echo "${PLUGIN_DIRS[@]}"

for plugin_dir in "${PLUGIN_DIRS[@]}";
do
    echo "${plugin_dir}"
    pushd "${plugin_dir}"
    echo "$@"
    "$@"
    popd
done

