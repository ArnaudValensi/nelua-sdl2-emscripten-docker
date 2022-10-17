# Nelua, SDL2, Emscripten, Docker

This repository shows how to build the `snakesdl.nelua` example for the web using emscripten and 
docker.

## Building

You only need to have docker installed.

### On Linux or windows with WSL

```bash
./run.sh build-web
```

That's it!

Then to run the project you have to serve the content of the `build` directory.

If you have python installed you can do:

```
cd build
python -m SimpleHTTPServer
```

Or if you have nodejs:
```
npm install -g serve
cd build
serve .
```
