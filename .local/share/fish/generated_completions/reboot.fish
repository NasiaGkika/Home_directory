# reboot
# Autogenerated from man page /usr/share/man/man8/reboot.8.gz
complete -c reboot -l help -d 'Print a short help text and exit'
complete -c reboot -l halt -d 'Halt the machine, regardless of which one of the three commands is invoked'
complete -c reboot -s p -l poweroff -d 'Power-off the machine, regardless of which one of the three commands is invok…'
complete -c reboot -l reboot -d 'Reboot the machine, regardless of which one of the three commands is invoked'
complete -c reboot -s f -l force -d 'Force immediate halt, power-off, or reboot'
complete -c reboot -s w -l wtmp-only -d 'Only write wtmp shutdown entry, do not actually halt, power-off, reboot'
complete -c reboot -s d -l no-wtmp -d 'Do not write wtmp shutdown entry'
complete -c reboot -s n -l no-sync -d 'Don\\*(Aqt sync hard disks/storage media before halt, power-off, reboot'
complete -c reboot -l no-wall -d 'Do not send wall message before halt, power-off, reboot'

