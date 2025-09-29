#! /bin/bash

readonly _bin="${1}"
if [[ ! -x "${_bin}" ]]; then
    exit 1
fi

