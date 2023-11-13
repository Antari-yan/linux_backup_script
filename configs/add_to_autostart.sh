#!/bin/bash

sudo bash -c 'cat << EOF > /etc/systemd/system/autostart-backup.service
[Unit]
Description=Run Backup on autostart.
After=network-online.target local-fs.target share.mount

[Service]
Type=simple
ExecStart=/bin/bash /backup_script/backup.sh

[Install]
#WantedBy=multi-user.target
EOF'
sudo chmod 644 /etc/systemd/system/autostart-backup.service
sudo systemctl enable autostart-backup.service

sudo systemctl daemon-reload
