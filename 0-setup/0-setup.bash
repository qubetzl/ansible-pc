#!/usr/bin/env bash
set -euo pipefail

apt-get install -y python3-venv python3-pip

[ ! -d "venv" ] && python3 -m venv venv
source venv/bin/activate
pip3 install ansible

ansible-galaxy role install -r requirements.yml
ansible-playbook 0-setup/playbook.yml
