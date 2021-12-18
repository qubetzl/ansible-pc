#!/usr/bin/env bash
# vagrant snapshot save "fresh-install"
vagrant snapshot restore --no-provision "fresh-install"
# vagrant snapshot save "after-0-setup"
# vagrant snapshot restore --no-provision "after-0-setup"
