#!/usr/local/bin/bash -

# Synchronize scripts from github to local repo
cd /var/db/RMT_firewall
git pull origin master

# Copy scripts from local repo to working directory (/etc)
cp /var/db/RMT_firewall/rc.firewall /etc/
cp -R /var/db/RMT_firewall/rc.firewall.* /etc/
chmod 775 /etc/rc.firewall
chmod 775 /etc/rc.firewall.*
