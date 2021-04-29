#!/usr/local/bin/bash

# Software requirements
pkg install -y bash

# Setup
git config --global pull.rebase false
git config --global user.email "remet@remet.cz"
git config --global credential.helper store
git clone https://github.com/remetremet/RMT_ipfw.git /var/db/RMT_ipfw

echo "-----"
echo " Do not forget to add cron job via 'crontab -e':"
echo " 59       *       *       *       *       /var/db/RMT_ipfw/_update.sh"
echo "-----"
