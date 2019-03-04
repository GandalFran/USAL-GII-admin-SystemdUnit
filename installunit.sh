#!/bin/bash

#########################################################################################
PROGRAM_NAME="cockroach.sh"
PROGRAM_FINAL_PATH="/bin/cockroach.sh"

SERVICE_NAME="cockroach"
COMMAND="/bin/sh $PROGRAM_FINAL_PATH"

SERVICE_DESCRIPTION="Script to play \"La cucaracha\" with beep at the start of session"
TARGET_DEPENDENCES="getty.target"
START_AT_RUNLEVEL="multi-user.target"
##########################################################################################

SERVICE_FILE="/etc/systemd/system/$SERVICE_NAME.service"
SERVICE_DECLARATION="
\n[Unit]
\nDescription=$SERVICE_DESCRIPTION
\nAfter=$TARGET_DEPENDENCES
\nStartLimitIntervalSec=0
\n
\n[Service]
\nType=simple
\nUser=root
\nExecStart=$COMMAND
\n
\n[Install]
\nWantedBy=$START_AT_RUNLEVEL
"

#Copy the file to the final destination
cp $PROGRAM_NAME $PROGRAM_FINAL_PATH
#Create service description file
echo $SERVICE_DECLARATION >> $SERVICE_FILE
#Start and prepare the service to start each time the session starts
systemctl enable "$SERVICE_FILE"
systemctl start "$SERVICE_NAME.service"

