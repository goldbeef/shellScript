#!/bin/bash
: <<EOF
count=0
line=5
while true
do
    echo -e ".\c"
    ((mod=count % line + 1))
    if [ $mod -eq $line ]
    then
        echo ""
    fi
    ((count++))
    sleep 1
done
EOF


count=0
while true
do
    ((count = count % 4))
    case $count in
        0) echo -e "\b-""\c";;
        1) echo -e "\b\\""\c";;
        2) echo -e "\b|""\c";;
        3) echo -e "\b/""\c";;
    esac
    ((count++))
    sleep 1
done
