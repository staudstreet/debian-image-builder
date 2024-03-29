#!/bin/bash -x
set -e

mkdir /target/home/__USER__/.ssh
cat /cdrom/__PUBLIC_KEY__ >/target/home/__USER__/.ssh/authorized_keys
chmod 700 /target/home/__USER__/.ssh
chown 1000:1000 \
	/target/home/__USER__/.ssh \
	/target/home/__USER__/.ssh/authorized_keys

cp /cdrom/sudoers /cdrom/auto_resize_vda.sh /target/etc/
chmod 440 /target/etc/sudoers
chown 0:0 /target/etc/sudoers
chmod 755 /target/etc/auto_resize_vda.sh
exit 0
