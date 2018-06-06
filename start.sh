#!/bin/bash
echo "Docker PGN wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
PGN: PSR8cD2sLhQZ6qtcHccSJ69fP78po1mNai"

config="/config/pigeon.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.pigeon/pigeon.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.pigeon/wallet.dat
fi

echo "Starting PGN daemon..."
pigeond
