# sdk-docker-env

![Docker Image CI](https://github.com/krishna-appy/sdk-docker-env/actions/workflows/docker-image.yml/badge.svg)
![Docker](https://img.shields.io/badge/Docker-Development%20Environment-blue?logo=docker)
![C++](https://img.shields.io/badge/C%2B%2B-GCC%2013-blue?logo=c%2B%2B)

A **Docker-based development environment** for **C++ SDK projects**, providing a consistent and isolated workspace with modern development and debugging tools.

The environment includes **GCC 13, CMake, debugging utilities, and code analysis tools**, allowing developers to build, debug, and test C++ projects without configuring toolchains locally.

---
## Clone

```bash
git clone -b cpp-sdk-docker-env https://github.com/krishna-appy/sdk-docker-env.git
cd sdk-docker-env
```

---

## Features

* GCC 13 development environment
* Preconfigured C++ build tools
* Docker-based isolated environment
* Debugging and analysis tools
* Workspace mounting for development

**Tools:**
`gcc / g++` • `cmake` • `gdb` • `valgrind` • `clang-format` • `clang-tidy` • `git` • `vim`

---

## Requirement

Docker → https://docs.docker.com/get-docker/

---

## Project Structure

```
sdk-docker-env/
├── Dockerfile
├── build.sh
├── README.md
└── scripts/
    ├── build_img.sh
    ├── clean_img.sh
    └── sdk-docker-env.sh
```

---

## Build Image

```bash
./scripts/build_img.sh
```

Creates image: `cpp-dev-env:1.0`

---

## Run Container

Using script:

```bash
./scripts/sdk-docker-env.sh
```

Or manually:

```bash
docker run -it --rm --name dev_env -v $HOME:/workspace cpp-dev-env:1.0
```
## Continuous Integration

This project uses **GitHub Actions** to validate the Docker development environment.

CI checks include:

- Docker image build
- Dockerfile lint validation
- Container startup verification
- C++ toolchain validation

## Clean Image

```bash
./scripts/clean_img.sh
```
