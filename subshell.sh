#!/bin/bash 

echo "subshell test"
echo "first level"; echo $$; ./echoPPid.sh; 
(echo "second level"; echo $$; ./echoPPid.sh) 

echo 
echo "codeblock test"
echo "first level"; echo $$; ./echoPPid.sh; { 
    echo "second level"; echo $$; ./echoPPid.sh 
}
