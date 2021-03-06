#!/bin/bash
set -x 

echo "client proxy port: " $CLIENT_PROXY_PORT

echo "server_addr: $NGROK_DOMAIN:$SERVER_PROXY_PORT" >ngrok-config
echo "inspect_addr: 0.0.0.0:4040" >>ngrok-config

exec ./bin/ngrok -config=ngrok-config -log=stdout -proto="http" -subdomain=$SUBDOMAIN $CLIENT_PROXY_PORT
