#!/usr/bin/env bash

STREAKFILE='.streak'

DATE=$1

if [[ -z $DATE ]]
then
    DATE=`date`
else
    DATE=`date -d "$DATE 13:33:33"`
fi

echo 'Keep that streak going... artificially'

echo `date -Iseconds -d "$DATE"` >> $STREAKFILE
git commit -a -m "update streak for `date -I -d "$DATE"`" --date="$DATE"
git push

echo 'Congratulations, you just kept your streak going'
echo 'Thanks for using github-streak by @jontsai <hello@jontsai.com>'
