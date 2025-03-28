1.  mkdir -p /tmp/Backup
2.  cp -r *.c *.py /tmp/Backup
3.  cd /tmp
4.  tar -czvf Backup-2025-03-28.gz -C /tmp Backup
5.  udisksctl mount -b /dev/sda1
6.  mv Backup-2025-03-28.gz /media/rvu/0493-E901/
7.  udisksctl unmount -b /dev/sda1
8.  rm -r /tmp/Backup
