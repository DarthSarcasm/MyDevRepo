# EME housekeeping script - Launched as L030EME010D on ctrlm2p
# Thing to do List
# - set up return code error checking

# Set up script variables
export SYS_DT=$(date +%C%y%m%d%H%M)
export RETENTION_DAYS=365

# Take current backup using air command
air repository online-backup start /prod/home01/emebackup/backups/eme_backup_ngmlx030_prod.home01.eme.repo_$SYS_DT

res = $?
if [[ $res -eq 0 ]]
then
	# launch sub-script to purge older backup files
	. /prod/home01/emebackup/tools/delete_backups.ksh
	res1 = $?
	if [[ $res1 -eq 0 ]]
	then
		echo "Prod EME Backup completed successfully" | mailx -s "Prod EME Backup" MISApplicationSupport@capitalone.com
	else
		echo "Prod EME Backup completed successfully. Failed to remove old Backup" | mailx -s "Prod EME Backup" MISApplicationSupport@capitalone.com
	fi
else
	cat /prod/home01/emebackup/backups/image_archive.log | mailx -s "Error occurred during Prod EME Backup" MISApplicationSupport@capitalone.com
fi

# Purge Job tracking from EME using air command
#air purge jobs -days $RETENTION_DAYS -all -background