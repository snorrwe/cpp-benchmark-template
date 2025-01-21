_default:
    @just --list

generate:
    cmake -GNinja -Bbuild -DCMAKE_BUILD_TYPE=Release \
        -DFETCHCONTENT_QUIET=OFF

build:
    cmake --build build
