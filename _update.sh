#!/usr/local/bin/bash -

# Synchronize scripts from github to local repo
cd /var/db/RMT_firewall
git pull origin master

# Copy scripts from local repo to working directory (/etc)
cp /var/db/RMT_firewall/rc.firewall /etc/
cp /var/db/RMT_firewall/rc.firewall.definitions /etc/
#cp /var/db/RMT_firewall/rc.firewall.config /etc/
chmod 755 /etc/rc.firewall
chmod 755 /etc/rc.firewall.*
