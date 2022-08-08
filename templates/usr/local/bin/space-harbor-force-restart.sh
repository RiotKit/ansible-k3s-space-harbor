#!/bin/bash
space-harbor-force-stop

for service in /etc/systemd/system/k3s*.service; do
    [ -s $service ] && systemctl start $(basename $service)
done
