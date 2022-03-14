#!/bin/bash

# Installation Nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv && src/configure && make -C src

# Activation Nodenv
eval "$(nodenv init -)"

# Installation Nodenv Build
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build

node_version=16
nodenv install "$(nodenv install -l | egrep ^$node_version | tail -n 1)"