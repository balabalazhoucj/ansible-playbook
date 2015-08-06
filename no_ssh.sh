#!/bin/sh
IP=(172.16.1.23 172.16.1.24)
for ((i=0;i<${#IP[@]};i++))
do
    sed -i "/^${IP[$i]}/d" /root/.ssh/known_hosts
	expect ssh.exp ${IP[$i]} 123456
done
