#/bin/bash
basepath=$(cd `dirname $0`; pwd)
oldFile="$basepath/old_ss_write_ip_list.txt"
newFile="$basepath/ss_write_ip_list.txt"

rm -rf "$oldFile"
if [ ! -f "$newFile" ]; then
    mv "$newFile" "$oldFile"
fi
wget --no-check-certificate  https://fgfg163.github.io/whitelist/iplist.txt -O "$newFile"
