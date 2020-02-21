#!/usr/bin/env bash

host="${1:?Missing host}"
tag="${2:?Missing tag}"


unamestr=$(uname)

# debian, ubuntu, mint etc.
if [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    sudo apt install -y software-properties-common build-essential curl file git
    sudo apt-add-repository -y -u ppa:ansible/ansible
    sudo apt install --yes ansible python-jmespath
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
    test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
    brew install hello
    echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
fi

sudo ansible-playbook -c local setup.yml -vv -i "$host", --tags "$tag"

