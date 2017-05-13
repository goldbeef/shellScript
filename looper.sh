#########################################################################
# File Name: looper.sh
# Author: goldbeef
# mail: goldbeef@163.com
# Created Time: 2016年11月20日 星期日 10时08分52秒
#########################################################################
#!/bin/bash
trap 'echo catch SIGHUP' SIGHUP
trap 'echo catch SIGUSR1' SIGUSR1
trap 'echo catch SIGUSR1' SIGCHLD

while true
do
    sleep 2
    date &> /dev/null 
done
