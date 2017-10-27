#!/bin/bash
set -x
echo "client proxy port: " $CLIENT_PROXY_PORT
exec ./bin/ngrok -config=ngrok.cfg start http https ssh
