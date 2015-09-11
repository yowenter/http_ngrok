#!/bin/bash

exec ./bin/ngrokd -domain=$TAOGE_NGROK_DOMAIN -httpAddr=":3000" 
