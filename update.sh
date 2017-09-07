#/bin/bash

basepath=$(cd $(dirname $0); pwd)
cd $basepath
rm -rf autoupdate.sh
wget --no-check-certificate https://fgfg163.github.io/whitelist/autoupdate.sh
chmod 777 autoupdate.sh
