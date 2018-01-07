#! /bin/bash

# Folder Creation
sudo mkdir -p /test/

# This command will instan GIT Software
if [ -r /etc/os-release ]; then
   sudo lsb_dist="$(. /etc/os-release && echo "$ID")"
fi

case "$lsb_dist" in
  debian|ubuntu )
    sudo apt-get install -y git
  ;;
  centos|fedora|amzn )
    sudo yum -y install git
	;;
	rhel|ol|sles )
    sudo yum -y install git
  ;;
	*)
    sudo yum -y install git
	;;
esac

# Initi GIT reposotiry
sudo git init /test/
sudo git remote add origin https://github.com/AngelMarinWolf/SysAdmin-Test.git
