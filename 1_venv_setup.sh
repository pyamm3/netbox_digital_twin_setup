#!/bin/bash
sudo apt update
sudo apt upgrade

sudo apt install libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git aria2 libxmlsec1-dev make build-essential 

curl -fsSL https://pyenv.run | bash      
export PYENV_ROOT="$HOME/.pyenv" >> ~/.bashrc
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH" >> ~/.bashrc
eval "$(pyenv init - bash)" >> ~/.bashrc
exec "$SHELL"
eval "$(pyenv virtualenv-init -)" >> ~/.bashrc
source ~/.bashrc
pyenv --version
