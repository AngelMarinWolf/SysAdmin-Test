#! /bin/bash

# DEPLOY TO-DO PROCESS


# POST DEPLOY TASK
if [[ -r /path/to/sync ]]; then
  aws s3 sync /path/to/sync s3://bucketname/path --profile s3-user #--delete (optional)
else
  echo "Nothing to sync or directory not found"
fi
