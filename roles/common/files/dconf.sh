#!/bin/bash
wget https://raw.githubusercontent.com/lukaspour/ansible-computer/master/roles/common/files/cinnamon_dump.xml && dconf reset -f / && dconf load / < cinnamon_dump.xml

