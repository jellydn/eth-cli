# Welcome to eth-repl 👋

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](#)
[![Twitter: jellydn](https://img.shields.io/twitter/follow/jellydn.svg?style=social)](https://twitter.com/jellydn)

> How to test smart contract in REPL like a PRO

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

Create .envrc file base on .envrc.example

### Run testnet

```sh
# Start ganache
ganache-cli -m "surprise frog enforce steel angle boy engine journey kind meat loop stomach" --gasLimit 7984363

# Get all accounts, we could import with `ethsign import`
seth accounts

# Check balance
seth balance 0x6a442De9B3deB2f3bA56D8DD86529d6bBe6542B1
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
