#!/bin/sh
#Max Dreer

####################################
#
# Backup minecraft world to a
# specified folder.
# 
####################################


# Give a name for this script
SCRIPTNAME=${0##*/}

# What to backup. Name of minecraft folder
BACKUP_FILES="/home/tekkit"

# Specify which directory to backup to.
DEST="/private-backup/tekkitbackups"

# Create backup archive filename.
TODAY=`date +%Y%m%d`
NAME='tekkit'
ARCHIVE="$TODAY-$NAME.tar.gz"

# Create Logfile
LOGFILE="/var/log/scripts/$SCRIPTNAME.log"

# Backup the files using tar.
cd /home/tekkit && tar cfvz $DEST/$ARCHIVE $BACKUP_FILES >>$LOGFILE 2>&1
