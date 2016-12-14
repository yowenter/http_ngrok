#!/bin/bash
set -x 

echo "client proxy port: " $CLIENT_PROXY_PORT

echo "server_addr: $NGROK_DOMAIN:$SERVER_PROXY_PORT" >ngrok-config

echo "you can find tunnel by cat ngrok.log "
exec ./bin/ngrok -config=ngrok-config -log=ngrok.log -proto="http" $CLIENT_PROXY_PORT

