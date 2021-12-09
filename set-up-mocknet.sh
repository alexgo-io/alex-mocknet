#!/bin/sh

docker pull blockstack/stacks-blockchain-api \
  && docker pull blockstack/stacks-blockchain \
  && docker pull postgres:alpine \
  ;

docker network create stacks-blockchain > /dev/null 2>&1
# mkdir -p ./{persistent-data/postgres,persistent-data/stacks-blockchain,bns,config}
