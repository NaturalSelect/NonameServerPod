# Noname Server Pod

A docker image for [libccy/noname](https://github.com/libccy/noname/) Server.

## Build

```bash
make image
```

## Usage

```bash
docker run --rm --name NonameShaServer -p 8080:8080 -d "naturalselect/nonamesha_serverpod:v1.10.4"
```