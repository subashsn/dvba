#! /bin/bash

cd DVBAToken

nohup ganache-cli &
truffle compile
export CONTRACT_ADDRESS=`truffle migrate --reset | grep -oP "DVBACrowdsale:\s+\K\w+"`
cd ../node-src
npm start