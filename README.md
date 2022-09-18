# Welcome to eth-cli 👋

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](#)
[![Twitter: jellydn](https://img.shields.io/twitter/follow/jellydn.svg?style=social)](https://twitter.com/jellydn)

> How to test smart contract in CLI like a PRO

[![ITMan - Tip #25 - Command line tools for smart contract like a PRO [Vietnamese]](https://i.ytimg.com/vi/eGJMubePnws/hqdefault.jpg)](https://www.youtube.com/watch?v=eGJMubePnws)

## Install dapptools

Install [Nix](https://nixos.org/download.html) if you haven't already. Then install dapptools:

```sh
curl https://dapp.tools/install | sh
```

## Install Foundry

```sh
curl -L https://foundry.paradigm.xyz | bash
```

Then, run foundryup in a new terminal session or after reloading your PATH.

## Install Ganache

```sh
npm install ganache --global
```

## Usage

Create .envrc file base on .envrc.example. Then, run below for checkout/update all git submodules:

```sh
make update
```

### Run testnet

```sh
# Start ganache
make ganache
# Get all accounts, we could import with `ethsign import`
seth accounts
# Check balance
seth balance 0x6a442De9B3deB2f3bA56D8DD86529d6bBe6542B1
```

### Deploy to testnet

```sh
make deploy
```

### Cast

```sh
cast call $SC_COUNTER_ADDR "getCounter()(uint256)"
cast send $SC_COUNTER_ADDR "setCounter(uint256)" 1 --legacy
```

### Seth

```sh
seth call $SC_COUNTER_ADDR "getCounter()(uint256)"
seth send $SC_COUNTER_ADDR "setCounter(uint256)" 2
```

## Test

```sh
make test
```

## Useful references

- [devbox](https://github.com/jetpack-io/devbox)
- [dapptools](https://github.com/dapphub/dapptools)
- [ganache](https://github.com/trufflesuite/ganache)
- [foundry](https://github.com/foundry-rs/foundry)
- [direnv](https://direnv.net/)
- [fnm](https://github.com/Schniz/fnm)

## Author

👤 **Dung Huynh**

- Website: https://productsway.com/
- Twitter: [@jellydn](https://twitter.com/jellydn)
- Github: [@jellydn](https://github.com/jellydn)

## Show your support

Give a ⭐️ if this project helped you!

---

_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
