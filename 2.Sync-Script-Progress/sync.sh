#! /bin/bash

SERVER_ORIG = '50.0.0.1'
SERVER_DEST = ('50.0.0.2' '50.0.0.3' '50.0.0.4')

PATH_ORIG = '/var/www/pages/uploads'
PATH_DEST = '/page/uploads'

SSH_USER = 'deploy'
SSH_KEY = '/path/of/key.pem'
SSH_PORT = '30022'
SSH_OPTIONS = '-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'

if [[ -z $SSH_PORT ]]; then
  SSH_PORT = 22
fi

for IP in $SERVER_DEST
do
  # Usgin the command rsync plus some flags we could sync the files between servers
  # -a  Archive Mode
  # -r  Recursive Mode
  # -v  Vervose Mode
  # -z  Object Compression
  # -H  Preserve Hard Links
  # -P  Show the Progress
  # -e  Remote Shell that will use

  { # try

    rsync -ravzHP -e "ssh -p ${SSH_PORT} -i ${SSH_KEY} ${SSH_OPTIONS}" ${PATH_ORIG} ${SSH_USER}@${IP}:${PATH_DEST}

  } || { # catch

    echo "The connection with the Server ${IP} have not been created or something went wrong in the transference"

  }

done
