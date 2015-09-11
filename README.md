# http_ngrok

```SOURCE CODE``` :[https://github.com/inconshreveable/ngrok](https://github.com/inconshreveable/ngrok)


## ENVS

NGROK_DOAMIN=taoge.ngrok.me  

GOPATH


##SERVER

```go install ngrok/main/ngrokd```   

## CLIENT

```go install ngrok/main/ngrok```      


## RUN SERVER

``` ./bin/ngrokd -domain=$NGROK_DOMAIN -httpAddr=":80" ```      

## RUN CLIENT

``` echo "server_addr: $(NGROK_DOAMIN):4443" >> ngrok_config ```    

```./bin/ngrok -config=ngrok-config -log=ngrok.log -proto="http" $(YOUR_LOCALH_PORT_NEED_SHARE) ```    


## fig yaml

```
ngrok_lu:
  image: daocloud.io/airywenter/taoge_ngrok:master-4dd958b
  restart: always
  ports:
    - 4443:4443
    - 80:80
  environment:
    - NGROK_DOMAIN=ngrok.lu
```