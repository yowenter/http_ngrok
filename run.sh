#!/bin/bash
exec ./bin/ngrokd -domain=$NGROK_DOMAIN -httpAddr=":3000" 
