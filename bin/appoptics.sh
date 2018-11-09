#!/bin/bash -e

echo
echo "---------------------------------"
echo "Installing AppOptics"
echo "---------------------------------"
echo

if [ -z "${APPOPTICS_SERVICE_KEY:-}" ]; then
    echo "Error: APPOPTICS_SERVICE_KEY is not set"
    exit 1
fi

ADDITIONAL_FLAGS=

if [ -n "${APPOPTICS_EXTENSION_DIR:-}" ]; then
    ADDITIONAL_FLAGS="$ADDITIONAL_FLAGS --extension-dir=${APPOPTICS_EXTENSION_DIR:-}"
fi

if [ -n "${APPOPTICS_INI_DIR:-}" ]; then
    ADDITIONAL_FLAGS="$ADDITIONAL_FLAGS --ini-dir=${APPOPTICS_INI_DIR:-}"
fi

if [ -n "${APPOPTICS_THREAD_SAFETY:-}" ]; then
    ADDITIONAL_FLAGS="$ADDITIONAL_FLAGS --thread-safety=${APPOPTICS_THREAD_SAFETY:-}"
fi

if [ -n "${APPOPTICS_VERSION:-}" ]; then
    ADDITIONAL_FLAGS="$ADDITIONAL_FLAGS --version=${APPOPTICS_VERSION:-}"
fi

if [ -n "${APPOPTICS_URL:-}" ]; then
    ADDITIONAL_FLAGS="$ADDITIONAL_FLAGS --url=${APPOPTICS_URL:-}"
fi

curl -sSO https://files.appoptics.com/appoptics-php.sh

echo "Running command:"
echo "bash appoptics-php.sh --service-key=${APPOPTICS_SERVICE_KEY:-} $ADDITIONAL_FLAGS"

bash appoptics-php.sh --service-key=${APPOPTICS_SERVICE_KEY:-} $ADDITIONAL_FLAGS
