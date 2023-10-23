#!/bin/bash
WINDOWSUSER="miles"
WINDOWSIP="10.0.17.13"
JUMPUSER="miles-jump"
JUMPIP="172.16.50.4"

sftp $WINDOWSUSER@$WINDOWSIP:ssh-keys.pub
scp ssh-keys.pub miles@$JUMPIP:travel.pub

ssh miles@$JUMPIP <<END
  sudo -i
  cat /home/miles/travel.pub >> /home/$JUMPUSER/.ssh/authorized_keys
END
