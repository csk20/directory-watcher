#!/bin/bash
mavenrepo=a/
logfile=watch.log
while true ; do
        inotifywait -e modify,create,delete -r  $mavenrepo |while read vpath vaction vfile; 
do
                modifiedTime=$(date +"%C%y-%m-%d- %H:%M:%S")
                echo " file: $vfile -  $vaction -  $vpath on $modifiedTime ">>$logfile
done

done
exit 0
