#!/usr/bin/env bash

set -e
cd "$(dirname "$0")"
cd ..

mkdir -p .bin
cd .bin

echo "Installing nelua..."
git clone https://github.com/edubart/nelua-lang.git && cd nelua-lang
make
echo "Nelua installed"
