#!/bin/bash
set -x 

CLIENT_PROXY_PORT=$CLIENT_PROXY_PORT
SERVER_PROXY_PORT=$SERVER_PROXY_PORT
echo "client proxy port: " $CLIENT_PROXY_PORT


echo "server_addr: $NGROK_DOMAIN:$SERVER_PROXY_PORT" >>ngrok-config


exec ./bin/ngrok -config=ngrok-config -log=ngrok.log -proto="http" $CLIENT_PROXY_PORT

