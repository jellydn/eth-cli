all    :; dapp build
clean  :; dapp clean
deploy :; dapp create SimpleCounter
ganache :; ganache-cli -m "surprise frog enforce steel angle boy engine journey kind meat loop stomach" --gasLimit 7984363
update  :; dapp update
upgrade  :; dapp upgrade
test   :; dapp test && dapp snapshot
testnet   :; dapp testnet
