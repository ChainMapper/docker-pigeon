# docker-pigeon
Wallet and daemon for Pigeon [PGN] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/rane` and see the wallet starting.

```
Docker PGN wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
PGN: PSR8cD2sLhQZ6qtcHccSJ69fP78po1mNai

Starting PGN daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/pigeon.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

PGN: PSR8cD2sLhQZ6qtcHccSJ69fP78po1mNai

# License
MIT, see LICENSE file