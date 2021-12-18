#!/usr/bin/env bash
set -euo pipefail

apt-get update
apt-get install -y git

[ ! -d "ansible-pc" ] && git clone https://github.com/qubetzl/ansible-pc.git
pushd ansible-pc
git pull --rebase
bash setup.bash
