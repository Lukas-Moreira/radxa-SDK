#!/usr/bin/env bash

# docker run --rm \
#     -v "$(pwd)":/work \
#     sdk-rpis-buster bash -lc '
#         export SYSROOT=/work/sysroot
#         aarch64-linux-gnu-gcc --sysroot="$SYSROOT" '$1' -o '$2'
#     '

set -e

IMAGE="lukasmoreira/sdk-r5c-bookworm:v1.0"

arg1="$1"
arg2="$2"

if [ -z "$arg1" ] || [ -z "$arg2" ]; then
    echo "Usage: $0 <source_file.c> <output_binary>"
    exit 1
fi

docker run --rm \
    -v "$(pwd)":/work \
    $IMAGE bash -lc "
        export SYSROOT=/work/sysroot
        aarch64-linux-gnu-gcc --sysroot=\"\$SYSROOT\" $arg1 -o $arg2
    "