# texlive-full with fonts

This is a custom Dockerfile that extends the official [texlive docker image](https://hub.docker.com/r/texlive/texlive) and installs [Microsoft fonts](https://packages.debian.org/sid/ttf-mscorefonts-installer) in it for compiling LaTeX documents.

## Getting Started


### Download image

```bash
## GitHub Container registry (SLOW in China)
docker pull ghcr.io/liziwl/texlive-full-with-fonts:latest

## Coding Container registry (Recommended to be used in China)
docker pull liziwl-docker.pkg.coding.net/container-registry/main/texlive-full-with-fonts:latest
```

### Compile document

```bash
cd /path/to/document

# interactive mode
docker run --rm -it -v "$(pwd)":/docs ghcr.io/liziwl/texlive-full-with-fonts:latest bash

# non-interactive mode
docker run --rm -v "$(pwd)":/docs ghcr.io/liziwl/texlive-full-with-fonts:latest /bin/bash -c "make"
```
