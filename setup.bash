#!/usr/bin/env bash
set -euo pipefail

bash 0-setup/0-setup.bash
sudo -i -u qubetzl bash 1-setup/1-setup.bash