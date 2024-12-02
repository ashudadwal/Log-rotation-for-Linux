#!/bin/bash

# Define the log directory and log file

LOG_DIR="/home/myapp"
LOG_FILE="$LOG_DIR/app.log"
ARCHIVE_DIR="$LOG_DIR/archives"
DATE=$(date +'%Y%m%d')

# Create Archive directory if doesn't exist

sudo mkdir -p $ARCHIVE_DIR

# Rotate the log file

sudo mv $LOG_FILE $ARCHIVE_DIR/app.log.$DATE
sudo touch $LOG_FILE

# Set Permissions
sudo chmod 644 $LOG_FILE
