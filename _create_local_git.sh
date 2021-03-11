#!/usr/local/bin/bash

# Setup
git config --global pull.rebase false
git config --global user.email "remet@remet.cz"
git config --global credential.helper store
git clone https://github.com/remetremet/RMT_ipfw.git /var/db/RMT_ipfw
