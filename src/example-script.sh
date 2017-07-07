#!/bin/bash

source 'comment.license.inc'
source 'comment.code-style.inc'

source 'declare.exit-codes.inc'

VERSION=0.0.1

source 'function.usage.sh'
source 'function.example_script.sh'

if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f example_script
else
  example-script "${@}"
  exit $?
fi
