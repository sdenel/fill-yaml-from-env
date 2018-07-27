#!/usr/bin/env bash
set -e

echo "# Checking PEP8 compliance"
pycodestyle --first ../fill-yaml-from-env

echo ""
echo "# doctests"
cp ../fill-yaml-from-env fill-yaml-from-env.py # doctest requires a .py extension
python -m doctest -v fill-yaml-from-env.py


echo ""
echo "# Integration tests"
export NAMESPACE="prod"
./../fill-yaml-from-env example-input.yml > example-input-parsed.yml
if [[ "`cat example-input-parsed.yml`" != "`cat example-output.yml`" ]]
then
  echo -e "\n\e[91mexample-input-parsed.yml != example-output.yml\e[39m\n$md5_results"
fi