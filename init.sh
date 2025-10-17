#!/bin/bash

# rust setup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"
sudo -u root curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# fish setup
git clone https://github.com/fish-shell/fish-shell.git
cd fish-shell
cmake .
make
sudo -u root make install

sudo chsh -s /usr/bin/fish $(whoami)
cp -rf .config ~/