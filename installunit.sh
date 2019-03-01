#!/bin/bash

#########################################################################################
SERVICE_NAME="cockroach"
COMMAND="sh /bin/scripts/cockroach.sh"
SERVICE_DESCRIPTION="Script to play \"La cucaracha\" with beep at the start of session"
TARGET_DEPENDENCES=""
START_AT_RUNLEVEL="multi-user.target"
##########################################################################################

SERVICE_FILE="/etc/systemd/system/$SERVICE_NAME.service"
SERVICE_DECLARATION="

[Unit]
Description=$SERVICE_DESCRIPTION
After=$TARGET_DEPENDENCES
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
User=root
ExecStart=$COMMAND

[Install]
WantedBy=$START_AT_RUNLEVEL
"

#Create service description file
echo $SERVICE_DECLARATION >> $SERVICE_FILE
#Start and prepare the service to start each time the session starts
systemctl start "$SERVICE_NAME.service"
systemctl --now enable "$SERVICE_NAME.service"

