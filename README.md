# http_ngrok

firewall traversal http ngrok.


copy from ```SOURCE CODE``` :[https://github.com/inconshreveable/ngrok](https://github.com/inconshreveable/ngrok)

`docker pull daocloud.io/airywenter/taoge_ngrok:latest`





## NGROK SERVER

```

ngrok_server:
  image: daocloud.io/airywenter/taoge_ngrok
  command: sh run-server.sh
  privileged: false
  restart: always
  ports:
  - 80:80
  - 4443:4443
  environment:
  - NGROK_DOMAIN=example.com


```

NGROK_DOMAIN : your domain

ngrok_server will listen ports:    
`80`  for public .    
`4443` for tunnel  .




## NGROK CLIENT


```
ngrok_client:
  image: daocloud.io/airywenter/taoge_ngrok
  command: sh run-client.sh
  net: host
  privileged: false
  restart: always
  environment:
  - CLIENT_PROXY_PORT=80
  - SERVER_PROXY_PORT=4443
  - NGROK_DOMAIN=example.com 
  - SUBDOMAIN=test

```


Please use `net:host` ensure make tunnel .


- CLIENT_PROXY_PORT :the port you want make public    
- SERVER_PROXY_PORT : the port for tunnel with server    
- NGROK_DOMAIN : your domain    
- SUBDOMAIN: if you set the environment, the ngrok subdomain won't change 

`you can find the tunnel url  in  ngrok.log in the container !!!`




