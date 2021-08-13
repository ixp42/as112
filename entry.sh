#!/bin/sh

sed -i "s/\[NEI4\]/$NEI4/g" /etc/bird/bird.conf
sed -i "s/\[NEI6\]/$NEI6/g" /etc/bird/bird.conf

ip addr add $IP4 dev eth1
ip addr add $IP6 dev eth1

bird -c /etc/bird/bird.conf -f

