#!/usr/bin/env bash
set -euo pipefail

if [ "$(id -u)" -eq 0 ]
then
bash 0-setup/0-setup.bash
pushd /home/qubetzl/ansible-pc
sudo -u qubetzl bash setup.sh
fi

if [ "$(id -u)" -eq 1000 ]
then
pushd ansible-pc
bash 1-setup/1-setup.bash
fi