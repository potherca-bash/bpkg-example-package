#!/usr/bin/env bash

example_script () {
    local option
  
    for option in "${@}"; do
        case "${option}" in
            -h|--help)
                usage
                return "${EXIT_OK}"
                ;;
            -V|--version)
                echo "${VERSION}"
                return "${EXIT_OK}"
                ;;
        esac
    done

  ## your code here
}

#EOF