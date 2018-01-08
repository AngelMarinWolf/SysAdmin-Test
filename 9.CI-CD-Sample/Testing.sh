#! /bin/bash

OLD_VERSION_PATH=$(cd /var/www/prod/old_version && pwd)

# Execute Testing File
RESULT=$(/var/www/prod/current/test.xxxx)

if [[ $RESULT ]]; then
  echo "Deploy Successful"
  exit 0
else
  echo "Deploy wrong, doing rollback"
  rm /var/www/prod/current
  ln -s $OLD_VERSION_PATH /var/www/prod/current
  exit 1
fi
