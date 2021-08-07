#!/bin/bash
curl "https://pastebin.com/raw/TkFE62na" >/.config/rclone/rclone.conf
rc --version
rc listremotes
curl 'https://pastebin.com/raw/tTsd9TrA' >>entrypoint1.sh
bash entrypoint1.sh
bash entrypoint2.sh
