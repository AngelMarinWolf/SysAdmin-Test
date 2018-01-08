#! /bin/bash
OLD_VERSION_PATH=$(cd /var/www/current/ && pwd)

RELEASE_VERSION="$(date +%Y%m%d%H%M)"

# Fetch the the new code in a temp directory
cd /var/www/prod/tmp
git pull origin master

# Creating release version
cd /var/www/prod/
cp -r /var/www/prod/tmp releases/$RELEASE_VERSION

# Moving Old version
rm /var/www/prod/old_version
ln -s $OLD_VERSION_PATH /var/www/prod/old_version

# Replace Prod directory
rm /var/www/prod/current
ln -s /var/www/prod/releases/$RELEASE_VERSION /var/www/prod/current
