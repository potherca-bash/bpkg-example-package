#!/usr/bin/env bash

source 'comment.license.inc'
source 'comment.code-style.inc'

source 'declare.bash-options.inc'

source 'declare.exit-codes.inc'

readonly VERSION=0.2.1
source 'function.usage.sh'
source 'function.example_script.sh'

if [[ ${BASH_SOURCE[0]} != $0 ]]; then
    export -f example_script
else
    example-script "${@:-}"
    exit $?
fi
