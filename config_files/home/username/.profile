# [...] hier comes existing content from OS distro [...]

if [ ! -f "/home/local-username/mount/sshfs/remote-username/.profile" ]; then
  sshfs remote-username@ssh-server:/home/remote-username/ "/home/local-username/mount/sshfs/remote-username/" -o allow_other,uid=1000,gid=1000 -o IdentityFile="/home/local-username/.ssh/ssh-key-for-ssh-server" -o IdentitiesOnly=yes
fi