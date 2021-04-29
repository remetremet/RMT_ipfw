#!/usr/local/bin/bash -

# Synchronize scripts from github to local repo
cd /var/db/RMT_ipfw
git pull origin master

# Copy scripts from local repo to working directory (/etc)
chmod 755 /var/db/RMT_ipfw/*.sh
cp /var/db/RMT_ipfw/rc.firewall /etc/
chmod 755 /etc/rc.firewall
cp /var/db/RMT_ipfw/rc.firewall.definitions /etc/
#cp /var/db/RMT_ipfw/rc.firewall.config /etc/
chmod 755 /etc/rc.firewall.*
