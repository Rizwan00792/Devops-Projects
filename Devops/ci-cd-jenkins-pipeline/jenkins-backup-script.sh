#!/bin/bash

DATE=$(date +%F)
BACKUP_DIR="/root/rizwan/jenkins-$DATE"

# Stop Jenkins
sudo systemctl stop jenkins

# Backup Jenkins Home
mkdir -p $BACKUP_DIR
cp -r /var/lib/jenkins/* $BACKUP_DIR

# Start Jenkins
sudo systemctl start jenkins

# Optional: Compress backup
tar -czf /root/rizwan/jenkins-$DATE.tar.gz -C /root/rizwan jenkins-$DATE
rm -rf $BACKUP_DIR



systemctl stop jenkins
yum remove jenkins
cd /var/lib/jenkins
rm -rf jenkins/

cd /var/log/jenkins --> also remove this if any logs are present 

cd /etc/jenkins --> also remove this folder if present


https://gitlab.com/


GR1348941EqnCmwz4dFDMbysnqj2k