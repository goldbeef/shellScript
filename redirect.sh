#########################################################################
# File Name: redirect.sh
# Author: goldbeef
# mail: goldbeef@163.com
# Created Time: 2016年12月07日 星期三 08时14分17秒
#########################################################################
#!/bin/bash


exec 5<&0; exec <$1;
exec 6>&1; exec >$2;

cat - |tr 'a-z' 'A-Z'

exec 0<&5; exec 5<&-;
exec 6>&1; exec 6>&-
