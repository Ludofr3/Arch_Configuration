#!/bin/bash

function read_file_config() {
    declare -a extensions=()

    if [ ! -f "$1" ]; then
        echo "Error: File $1 not found." >&2
        exit 1
    fi

    while IFS= read -r line; do
        if [[ $line =~ ^\s*#.* || $line =~ ^\s*$ ]]; then
            continue
        else
            extensions+=("$line")
        fi
    done < "$1"
    echo ${extensions[@]}
}

export -f read_file_config
