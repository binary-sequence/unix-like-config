# [...] hier comes existing content from OS distro [...]
#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
batteryStatus='('`/usr/local/bin/showBatteryStatus.sh`')'
PS1=$batteryStatus$PS1
#unset color_prompt force_color_prompt
# [...] hier comes existing content from OS distro [...]
