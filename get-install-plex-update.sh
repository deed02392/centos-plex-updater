#!/bin/bash
yum update || exit 1
echo "Enter/paste RPM download URI: "
read download_uri &&
TMPDIR=$(mktemp -td plexmediaserver.XXXXXXXXXX) || { echo 'mktemp failed.'; exit 1; }
trap 'rm -rf "$TMPDIR"' EXIT
cd "$TMPDIR" && { wget "$download_uri" -O plexmediaserver.rpm; cd -; } &&
yum install "$TMPDIR/plexmediaserver.rpm" &&
systemctl start plexmediaserver &&
sleep 3 &&
systemctl status plexmediaserver
