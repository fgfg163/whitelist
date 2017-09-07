#/bin/bash

# wget --no-check-certificate https://fgfg163.github.io/whitelist/autoupdate.sh
# */5 * * * * /root/autoupdate.sh

basepath=$(cd $(dirname $0); pwd)
tmpNewFile="$basepath/iplist.txt"
newFile="$basepath/whiteiplist.txt"
logFile="$basepath/iplist.log"

echo "" > $logFile
wget --no-check-certificate -N https://fgfg163.github.io/whitelist/iplist.txt -o $logFile

logFileText=$(cat $logFile)
noNewer=$(find "$logFile" | xargs grep "Server file no newer than local file")
if [ "$logFileText" != "" ] && [ "$noNewer" == "" ];
then
{
    cp -rf $tmpNewFile $newFile
    /etc/init.d/shadowsocks stop
    /etc/init.d/shadowsocks start
} &
fi
rm -rf $logFile
