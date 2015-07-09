#!/usr/bin/env bash

CWD=`pwd`
CRON_DAILY=/etc/cron.daily
SCRIPT='streakify.sh'
SRC=${CWD}/${SCRIPT}
DEST=${CRON_DAILY}/streakify
TMP=/tmp/streakify

if [[ -d ${CRON_DAILY} ]];
then
    echo "Installing streakify script to ${DEST}"
    sudo echo -e "#!/bin/bash\ncd ${CWD} && ./${SCRIPT}" > $TMP
    sudo chmod +x $TMP
    sudo mv $TMP $DEST
else
    echo "Missing ${CRON_DAILY} directory. You must install this manually"
fi
