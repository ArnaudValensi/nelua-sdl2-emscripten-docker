#!/usr/bin/env bash

set -e
cd "$(dirname "$0")"
cd ..

echo -e "\e[32m"
cat << "EOF"
  _  __  _   _
 | |/ / (_) | |
 | ' /   _  | |__     __ _
 |  <   | | | '_ \   / _` |
 | . \  | | | |_) | | (_| |
 |_|\_\ |_| |_.__/   \__,_|

EOF
echo -e "\e[0m"

mkdir -p .bin
cd .bin

echo "Installing nelua..."
git clone https://github.com/edubart/nelua-lang.git && cd nelua-lang
make
echo "Nelua installed"
