[![Build Status](https://travis-ci.com/sdenel/fill-from-env.svg?branch=master)](https://travis-ci.com/sdenel/fill-from-env)

Tested against Python 2.7, 3.5, 3.6

A small Python tool that substitutes environment variables inside a given file, then outputs the result in stdout.


```bash
$ cat somefile.yaml
directory: ${INSTALL_DIR}
$ export INSTALL_DIR="/somewhere"
$ fill-from-env somefile.yaml
directory: /somewhere
$ # Also works with stdin as an input
$ cat somefile.yaml | fill-from-env
directory: /somewhere
```

# Installation

Clone the repository:
```bash
mkdir -P ~/bin
cd ~/bin
git clone https://github.com/sdenel/fill-from-env
```

Then for example in your ~/.bashrc or ~/.zshrc file:
```bash
export PATH="~/bin/fill-from-env:$PATH"
```

# Usage with Kubernetes
This tools allows to easily add env variables to Kubernetes YAML templates. Example:
```bash
export DATA_DIR=/postgres
fill-from-env postgres-deployment.yaml | kubectl create -f -
```