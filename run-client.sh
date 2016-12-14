#!/bin/bash
set -x 

echo "client proxy port: " $CLIENT_PROXY_PORT

echo "server_addr: $NGROK_DOMAIN:$SERVER_PROXY_PORT" >ngrok-config

exec ./bin/ngrok -config=ngrok-config -log=stdout -proto="http" $CLIENT_PROXY_PORT
