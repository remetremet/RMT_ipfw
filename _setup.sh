#!/usr/local/bin/bash

BASEPATH="/var/db/RMT_ipfw"

# Software requirements
pkg install -y bash git
pwd_mkdb /etc/master.passwd
pkg install -y bash git

# Setup directories
if [ ! -d "${BASEPATH}" ]; then
 mkdir "${BASEPATH}"
 chmod 777 "${BASEPATH}"
fi

# Setup
git config --global pull.rebase false
git config --global user.email "remet@remet.cz"
git config --global credential.helper store
git clone https://github.com/remetremet/RMT_ipfw.git "${BASEPATH}/github"

# Copy scripts to working directory
cp -R ${BASEPATH}/github/_*.sh ${BASEPATH}/
chmod 755 ${BASEPATH}/_*.sh

echo "-----"
echo " Do not forget to add cron job via 'crontab -e':"
echo " 59       *       *       *       *       ${BASEPATH}/_update.sh"
echo "-----"
