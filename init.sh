#!/bin/bash

# rust setup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
sudo bash -c 'curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh'

# fish setup
sudo apt install -y build-essential cmake
git clone https://github.com/fish-shell/fish-shell.git
cd fish-shell
cmake .
make
sudo bash -c '. "$HOME/.cargo/env" ; cd fish-shell || exit 1 && make install'

sudo chsh -s /usr/bin/fish $(whoami)
cp -rf .config ~/