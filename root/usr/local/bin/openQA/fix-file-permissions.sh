#!/bin/bash

# Name fix-file-permissions.sh
#
# Synopsis:
#   fix-file-permissions.sh
#   fix-file-permissions.sh GROUP
#   fix-file-permissions.sh GROUP USER
#
# Description:
#   It changes the file ownership of the files that are needed to be used
#   by the user geekotest and _openqa-worker and add read and write
#   permissions for them.
#
#   It may be executed as root
#


# create group and assign users to it
if [ -n "$1" ]; then
  group_owner=":$1"
  groupadd $1
  usermod -a -G $1 geekotest
  usermod -a -G $1 _openqa-worker
  if [ -n "$2" ]; then
    usermod -a -G $1 $2
  fi
else
  group_owner=''
fi

# set ownership
chown -R geekotest$group_owner '/usr/share/openqa' '/var/lib/openqa' '/var/log/openqa'
chown -R _openqa-worker$group_owner '/var/lib/openqa/cache' '/var/lib/openqa/pool' '/var/lib/openqa/script/worker'

# set file mode
chmod -R ug+rw,o+r '/usr/share/openqa' '/var/lib/openqa' '/var/log/openqa'
find '/usr/share/openqa' '/var/lib/openqa' -type d -exec chmod a+x,g+s {} \;
