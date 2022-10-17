#!/bin/bash

cd "$(dirname "$0")"

print_usage() {
  echo "Usage: ./run.sh <command>"
  echo
  echo "    build-web"
  echo "        Build all."
  echo
  echo "    emscripten-interactive"
  echo "        Open a shell in a docker emscripten/emsdk."
  echo
  echo "    clean"
  echo "        Clean built files."
  echo
}

run_tests() {
  clang tests/main.c -o test_runner && ./test_runner
}

if [[ ! $# -gt 0 ]]; then
  print_usage
  exit 0
fi

if [[ $1 == "build-web" ]]; then
  docker run --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk \
  /bin/bash -c "rm -fr ./.bin ./build && ./tools/install_nelua.sh && ./.bin/nelua-lang/nelua -V --cc emcc -b -o build/index ./snakesdl.nelua"
  exit 0
fi

if [[ $1 == "emscripten-interactive" ]]; then
  docker run -it --rm -v $(pwd):/src -u $(id -u):$(id -g) emscripten/emsdk /bin/bash
  exit 0
fi

if [[ $1 == "clean" ]]; then
  rm -fr ./build*
  exit 0
fi

