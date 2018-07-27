[![Build Status](https://travis-ci.com/sdenel/fill-from-env.svg?branch=master)](https://travis-ci.com/sdenel/fill-from-env)

Tested against Python 2.7, 3.5, 3.6

A small Python tool that parses YAML file with:
* **{{ENV_VARIABLES_PROVIDED_THAT_WAY}}**
* **{{>FILES_TO_INCLUDE_AS_STRING_PROVIDED_THIS_WAY}}**

The output is written in stdout.

Examples:
```bash
$ cat somefile.yaml
directory: {{INSTALL_DIR}}
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
git clone https://github.com/sdenel/fill-yaml-from-env
```

Then for example in your ~/.bashrc or ~/.zshrc file:
```bash
export PATH="~/bin/fill-yaml-from-env:$PATH"
```

# Usage with Kubernetes
This tools allows to easily add env variables to Kubernetes YAML templates. Example:
```bash
export DATA_DIR=/postgres
fill-yaml-from-env postgres-deployment.yaml | kubectl create -f -
```