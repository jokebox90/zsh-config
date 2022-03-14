#!/bin/bash

mkdir -p ~/Code/lib

curl -L git.io/antigen > ~/Code/lib/antigen.zsh
chmod +x ~/Code/lib/antigen.zsh

git clone https://github.com/jokebox90/zsh-config.git ~/Code/lib/zsh

ln -sf ~/Code/lib/zsh/antigenrc ~/.antigenrc
ln -sf ~/Code/lib/zsh/zsh_aliases ~/.zsh_aliases
ln -sf ~/Code/lib/zsh/zshrc ~/.zshrc
