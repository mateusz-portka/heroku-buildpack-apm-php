#!/bin/bash -e

if [ -z "${APPOPTICS_SERVICE_KEY:-}" ]; then
    echo "Error: APPOPTICS_SERVICE_KEY is not set"
    exit 1
fi

curl -sSO https://files.appoptics.com/appoptics-php.sh
bash appoptics-php.sh --service-key=${APPOPTICS_SERVICE_KEY:-}
