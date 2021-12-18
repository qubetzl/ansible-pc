#!/usr/bin/env bash
set -euo pipefail

apt-get update
apt-get install -y git

[ ! -d "venv" ] && git clone https://github.com/qubetzl/ansible-pc.git
pushd ansible-pc
bash setup.bash
