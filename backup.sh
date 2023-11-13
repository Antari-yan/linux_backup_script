#!/bin/bash
# Copy Files to personal folder
logfile=$( dirname -- "$0"; )/logs/_backup-log
excludes=$( dirname -- "$0"; )/configs/backup-exclude
backup_source=/path/to/backup
backup_target=/backup/save/path

printf "Script start: $(date)\n" > $logfile

rsync -ruL --delete --log-file=$logfile --exclude-from=$excludes $backup_source $backup_target
