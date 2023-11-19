# Linux Backup Script
This is a simple `rsync` bash backup script with a separate exclusion and log file, as well as a script to add a `Systemd` service and to run the script on autostart.
It is tested on `Debian` based systems.

## Usage
Adjust the following paths:
In `backup.bash` change `backup_source` to the path of the directory that should requires backup and `backup_target` to the directory where the files should be safed to.
Add in `configs/backup-exclude` all files and directories that should be excluded.
For the Systemd service, change the path for `ExecStart` to the path where the backup script is placed in the `configs/add_to_autostart.bash` file.
