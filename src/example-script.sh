#!/bin/bash

VERSION=0.0.1

source 'function.usage.sh'

example-script () {
  for opt in "${@}"; do
    case "$opt" in
      -h|--help)
        usage
        return 0
        ;;
      -V|--version)
        echo "$VERSION"
        return 0
        ;;
    esac
  done

  ## your code here
}

if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f example-script
else
  example-script "${@}"
  exit $?
fi
