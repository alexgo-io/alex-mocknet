#!/bin/bash
set -euo pipefail
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pushd $DIR

if ! command -v mkcert &> /dev/null
then
   brew install mkcert
   mkcert -install
else
   mkcert -cert-file "$DIR"/traefik/localhost.pem \
          -key-file "$DIR"/traefik/localhost-key.pem \
          localhost $(cat docker-compose.yml | yq e ".services.*.labels" - | grep \=Host\( | sed 's/.*Host(`//g' | sed 's/`)//g') 127.0.0.1 ::1 \
          ;
   mkcert -install
fi

popd
