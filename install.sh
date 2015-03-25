#!/usr/bin/env bash

CWD=`pwd`
CRON_DAILY=/etc/cron.daily
SCRIPT='streakify.sh'
SRC=${CWD}/${SCRIPT}
DEST=${CRON_DAILY}/streakify

if [[ -d ${CRON_DAILY} ]];
then
    echo "Installing symlink to ${DEST}"
    sudo ln -fs ${SRC} ${DEST}
else
    echo "Missing ${CRON_DAILY} directory. You must install this manually"
fi
