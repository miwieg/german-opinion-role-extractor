#!/bin/sh
if test -z "${1}"; then
    echo "Usage: run.sh <path to config>"
    exit 1
fi
    
config="$(readlink -f ${1})"
bin="$(dirname $0)/bin"
cd ${bin}
exec java -cp .:../lib/GermaNetApi8.0.jar Main $config
