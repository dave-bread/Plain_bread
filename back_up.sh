#!/bin/bash

# const variables
MONGO_BACKUP_DIR="/usr/local/src/mongo_backups"
MONGO_BACKUP_PERIOD=7
MONGO_BACKUP_LOG="/var/log/mongo_backup.log"

period="${MONGO_BACKUP_PERIOD} days"
logname=`date "+%Y-%m-%d"`
oldlogname=`date -d "${MONGO_BACKUP_PERIOD} days ago" "+%Y-%m-%d"`

[ $? -eq 1 ] && echo "fatal: invalid period" && exit 1

# check const variables
[ $MONGO_BACKUP_DIR = "" ] && echo "fatal: \$MONGO_BACKUP_DIR is empty" >> $MONGO_BACKUP_LOG && exit 1
[ $MONGO_BACKUP_PERIOD = "" ] && echo "fatal: \$MONGO_BACKUP_PERIOD is empty" >> $MONGO_BACKUP_LOG && exit 1

echo "Dumping to " ${logname}


