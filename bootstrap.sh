#!/usr/bin/env bash

host="${1:?Missing host}"
tag="${2:?Missing tag}"


unamestr=$(uname)

# debian, ubuntu, mint etc.
if [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    sudo apt-get install -y software-properties-common
#    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update --yes
    sudo apt-get install --yes git ansible python-jmespath
fi

sudo ansible-playbook -c local setup.yml -vv -i "$host", --tags "$tag"

