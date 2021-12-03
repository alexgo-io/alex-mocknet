#!/bin/sh

docker stop stacks-blockchain
docker stop stacks-blockchain-api
docker stop postgres
rm -fr persistent-data
