#!/usr/bin/env bash
[ "`SOMEVAR="world"; echo "Hello ${SOMEVAR}" | ./fill-from-env`" = "Hello world" ]