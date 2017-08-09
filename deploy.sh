#!/bin/bash

USAGE=$'Usage:\n  deploy.sh production deploy \nor (dry run) \n  deploy.sh production'

PRODUCTION="ozcf_admin@ozcf.ftp.infomaniak.com:/home/clients/a5af6963e8cb31aaf3fa20da5745ffbc/web/nouveaumonde.ch/"

if [ $# -eq 0 ]
    then
        echo "$USAGE";
        echo "Error: No host provided"
        exit 1
elif [ $1 == "production" ]
    then
        TARGET=$PRODUCTION
else
    echo "$USAGE";
    echo "Error: $1 is a unknow host"
    exit 1
fi


if [[ -z $2 ]]
    then
        echo "Deploy (dry-run) on $TARGET"
        rsync --dry-run -az --force --delete --progress --stats --exclude-from=rsync_exclude.txt -e "ssh -p22" ./ $TARGET
elif [ $2 == "deploy" ]
    then
        echo "Deploy on $TARGET"
        rsync -az --force --delete --progress --stats --exclude-from=rsync_exclude.txt -e "ssh -p22" ./ $TARGET
else
    echo "$USAGE";
fi
