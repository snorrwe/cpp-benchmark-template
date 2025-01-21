_default:
    @just --list

generate:
    cmake -GNinja -Bbuild -DCMAKE_BUILD_TYPE=Release \
        -DFETCHCONTENT_QUIET=OFF

build:
    cmake --build build

run:
    #!/usr/bin/env bash

    set -euo pipefail
    cd build
    ./bench --benchmark_enable_random_interleaving=true
