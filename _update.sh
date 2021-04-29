#!/usr/local/bin/bash -

BASEPATH="/var/db/RMT_ipfw"

# Synchronize scripts from github to local repo
cd "${BASEPATH}"
git pull origin master

# Copy scripts from local repo to working directory (/etc)
cp -R "${BASEPATH}/github/*.sh" "${BASEPATH}/"
chmod 755 ${BASEPATH}/*.sh
cp "${BASEPATH}/github/rc.firewall" /etc/
chmod 755 /etc/rc.firewall
cp "${BASEPATH}/github/rc.firewall.definitions" /etc/
chmod 755 /etc/rc.firewall.definitions
cp "${BASEPATH}/github/rc.firewall.config.sample" /etc/
chmod 755 /etc/rc.firewall.config.sample
