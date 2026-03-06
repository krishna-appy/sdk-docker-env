# sdk-docker-env

Docker-based development environment for **C++ SDK projects** using **GCC, CMake, and debugging tools**.
Provides a consistent and isolated build environment using Docker.

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

---

## Clean Image

```bash
./scripts/clean_img.sh
```
