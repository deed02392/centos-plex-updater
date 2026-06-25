# centos-plex-updater

# Deprecated
See: https://support.plex.tv/articles/235974187-enable-repository-updating-for-supported-linux-server-distributions/

Clean migration path, rpm will handle updating the package in-place once you set up the new repo.

## What
A script to manage updating a Plex install on CentOS. Tested on CentOS 7 x64.

## How
Go to: https://www.plex.tv/downloads/ select Linux and under distributions, hover the mouse of yours before right-clicking and extracting the direct RPM download link. Paste this to the script when asked.

## Dependencies
wget
yum
