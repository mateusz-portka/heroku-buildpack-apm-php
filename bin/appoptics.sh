#!/bin/bash -e

curl -sSO https://files.appoptics.com/appoptics-php.sh
bash appoptics-php.sh --service-key=$APPOPTICS_SERVICE_KEY
