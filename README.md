[![Build Status](https://travis-ci.com/sdenel/fill-from-env.svg?branch=master)](https://travis-ci.com/sdenel/fill-from-env)

A small Python tool to replace variables inside a file with environment variables.

![Example](screenshot.png)

# Installation

Clone the repository:
```bash
mkdir -P ~/bin
cd ~/bin
git clone https://github.com/sdenel/fill-from-env
```

Then for example in your ~/.bashrc file:
```bash
export PATH="~/bin/fill-from-env:$PATH"
```

# Usage with Kubernetes
(TODO)