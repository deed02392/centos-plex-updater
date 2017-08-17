#!/bin/bash
yum update || exit 1
echo "Enter/paste RPM download URI: "
read download_uri &&
wget "$download_uri" -O plexmediaserver.rpm &&
yum install ./plexmediaserver.rpm &&
systemctl start plexmediaserver &&
sleep 3 &&
systemctl status plexmediaserver
