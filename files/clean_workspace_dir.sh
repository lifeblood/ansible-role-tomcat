#!/bin/sh 
maxnum=15
workspacedirname="workspace"
function getdeldirnum() {
        pkgnum=$(find ./${workspacedirname}/* -maxdepth 0 -name '*-*' -type d | wc -l)
        deletecount=$((${pkgnum} - $maxnum))
        if [ $deletecount -gt  "0" ] ;then
        	return $deletecount
   	 else
        	return 0
    	fi
}

function main() {
        getdeldirnum
        deletecount=$?
        deletelist=$(find ./${workspacedirname}/* -maxdepth 0 -name '*-*' -type d | head -n $deletecount)
        for dir in $deletelist; do
                echo "delete $dir"
		rm -rf $dir
        done
}
main

