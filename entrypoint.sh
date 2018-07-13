#!/bin/bash
chmod 666 /dev/kvm
sed -i 's/Port\ 22/Port\ 18731/g' /etc/ssh/sshd_config
service ssh start
virtlogd &
bash /bridge_gen.sh $METROM_IP
exec "$@"
