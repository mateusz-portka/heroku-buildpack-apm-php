#!/bin/bash -e

if [ -z "export | grep APPOPTICS_SERVICE_KEY" ]; then
    echo "Please set the environment variable APPOPTICS_SERVICE_KEY"
    exit 1
fi

curl -sSO https://files.appoptics.com/appoptics-php.sh
bash appoptics-php.sh --service-key=$APPOPTICS_SERVICE_KEY
