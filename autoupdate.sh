#/bin/bash

# */5 * * * * /root/autoupdate.sh

basepath=$(cd $(dirname $0); pwd)
newFile="$basepath/ss_write_ip_list.txt"
newFileHead="$basepath/_head_ss_write_ip_list.txt"
tmpFile="$basepath/_tmp_ss_write_ip_list.txt"
echo $newFile
echo $newFileHead
echo $tmpFile

wget --no-check-certificate -N https://fgfg163.github.io/whitelist/iplist.txt -O $tmpFile

#while read line
#do
#    echo ${line}
#done < "$newFile"

