#!/bin/bash 

wait_for_user()
{
    echo "$0 begin"
    until who |grep "$1" > /dev/null 
    do 
        sleep ${2:-30}
    done
    echo "$0 end"
}

wait_for_user goldbeef 

ret=$(wait_for_user goldbeef)
echo "ret[$ret]"
