#!/bin/bash
mkdir /.config
mkdir /.config/rclone
curl "https://pastebin.com/raw/TkFE62na" > /.config/rclone/rclone.conf
rc --version
rc listremotes
curl $(curl 'http://turboproxy.co/proxy.php?https://yts.mx/'| sed 's/"/\n/g' |grep 'http://turboproxy.co:80/proxy.php?https://yts.mx/movies' |sort -u) |sed 's/"/\n/g' |grep 'http://turboproxy.co:80/proxy.php?https://yts.mx/torrent/download' |sort -u >/entry.txt
rc rcd --rc-serve --rc-addr=0.0.0.0:$PORT && wget --content-disposition -i entry.txt
cp *.torrent /home
rc copy /home CLOUDNAME:
