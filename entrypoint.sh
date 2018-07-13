#!/bin/bash
chmod 666 /dev/kvm
sed -i 's/Port\ 22/Port\ "port"/g' /etc/ssh/sshd_config
service ssh start
virtlogd &
bash /bridge_gen.sh $server_IP
exec "$@"
