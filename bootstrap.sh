#!/usr/bin/env bash

unamestr=$(uname)

# debian, ubuntu, mint etc.
if [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    sudo apt-get install -y software-properties-common
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update --yes
    sudo apt-get install --yes git ansible
fi

sudo ansible-playbook setup.yml -i localhost, -c local -vv --tags "$1"
