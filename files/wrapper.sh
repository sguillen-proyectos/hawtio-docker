#!/bin/bash

if [[ "$#" == "0" ]]; then
    echo "Executing default task"
    # java -Dhawtio.proxyWhitelist="*"  -jar hawtio.jar --port 9000
    java -jar hawtio.jar --port 9000
else
    echo "Executing $@"
    $@
fi
