#!/bin/bash
mkdir /.config
mkdir /.config/rclone
curl "https://pastebin.com/raw/TkFE62na" > /.config/rclone/rclone.conf
rc --version
rc listremotes
curl 'http://turboproxy.co/proxy.php?https://yts.mx/'| sed 's/"/\n/g' |grep 'http://turboproxy.co:80/proxy.php?https://yts.mx/movies' |sort -u | sed 's/^/curl "/g' |sed 's/$/"/g' >entry1.txt
parallel < entry1.txt |sed 's/"/\n/g' |grep 'http://turboproxy.co:80/proxy.php?https://yts.mx/torrent/download' |sort -u |sed 's/^/wget --content-disposition -i "/g'|sed 's/$/"/g' >/entry.txt
parallel < entry.txt 
cp *.torrent /home
rc rcd --rc-serve --rc-addr=0.0.0.0:$PORT && rc copy /home CLOUDNAME: 
