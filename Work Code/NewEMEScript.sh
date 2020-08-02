# EME housekeeping script - Launched as L030EME010D on ctrlm2p
# Thing to do List
# - set up return code error checking

# Set up script variables
export SYS_DT=$(date +%C%y%m%d%H%M)
export RETENTION_DAYS=365
export MAIL_TARGET='MISApplicationSupport@capitalone.com'
export MAIL_TITLE='Prod EME Backup Report'
export MAIL_DETAIL=''
export ERROR_CODE=0

# Take current backup using air command
air repository online-backup start /prod/home01/emebackup/backups/eme_backup_ngmlx030_prod.home01.eme.repo_$SYS_DT

if [[ $? -ne 0 ]]
then
	MAIL_DETAIL=$(cat /prod/home01/emebackup/backups/image_archive.log)
	MAIL_TITLE="$MAIL_TITLE - Backup Error!"
	ERROR_CODE=1
	exit
fi

# launch sub-script to purge older backup files
. /prod/home01/emebackup/tools/delete_backups.ksh
if [[ $? -ne 0 ]]
then
	MAIL_DETAIL="Prod EME Backup completed successfully. Failed to remove old Backup."
	MAIL_TITLE="$MAIL_TITLE - Cleanup Error!"
	ERROR_CODE=2
fi

# Purge Job tracking from EME using air command
air purge jobs -days $RETENTION_DAYS -all -background
if [[ $? -ne 0 ]]
then
	MAIL_DETAIL="Prod EME Backup completed successfully. Failed to purge data."
	MAIL_TITLE="$MAIL_TITLE - Purge Error!"
	ERROR_CODE=3
fi

# MAIL_DETAIL="Prod EME Backup & Cleanup completed successfully."

cat $MAIL_DETAIL | mailx -s $MAIL_TITLE $MAIL_TARGET
exit $ERROR_CODE