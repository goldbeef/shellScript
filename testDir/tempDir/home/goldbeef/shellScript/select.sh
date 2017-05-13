#########################################################################
# File Name: select.sh
# Author: goldbeef
# mail: goldbeef@163.com
# Created Time: 2016年11月20日 星期日 14时41分56秒
#########################################################################
#!/bin/bash

PS3='terminal? '
select term in term1 term2 term3
do
    if [ -n $term ]
    then
        TERM=$term
        echo "TERIMNAL is [$TERM], reply[$REPLY]"
        break;
    else
        echo 'INVALID'
    fi
done
