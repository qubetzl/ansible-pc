#!/usr/bin/env bash
set -euo pipefail

source venv/bin/activate

ansible-playbook 1-setup/playbook.yml
