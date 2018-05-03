#! /usr/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"

for con_file in ./.*; do
    if [[ -f "$con_file" ]]; then 
        ln -sf ${DIR}/${con_file##*/} ~/${con_file##*/}
    fi
done


