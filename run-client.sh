#!/bin/bash



echo "server_addr: $NGROK_DOMAIN:4443" >>ngrok-config

#the port 3000 is default ,you can change .

exec ./bin/ngrok -config=ngrok-config -log=ngrok.log -proto="http" 3000

