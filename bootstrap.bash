#!/usr/bin/env bash
set -euo pipefail

apt update
apt install -y git

[ ! -d "venv" ] && git clone https://github.com/qubetzl/ansible-pc.git
pushd ansible-pc
bash 0-setup.bash
