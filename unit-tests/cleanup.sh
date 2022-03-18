#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Cleaning up mocknet data"
rm -rf $DIR/stacks-blockchain/data/mocknet
echo "Cleaning up postgres data"
rm -rf $DIR/stacks-blockchain-api/postgres

echo "DONE"
