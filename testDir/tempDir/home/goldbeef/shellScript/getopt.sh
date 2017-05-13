#!/bin/bash 
while getopts :a:b:cd OPT >/dev/null 
do
    case $OPT in
        a) echo "opt[$OPT], optarg[$OPTARG]";;
        b) echo "opt[$OPT], optarg[$OPTARG]";;
        c) echo "opt[$OPT], optarg[$OPTARG]";;
        d) echo "opt[$OPT], optarg[$OPTARG]";;
        \?) echo "opt[$OPT], optarg[$OPTARG]";;
    esac
done
