# http_ngrok

```SOURCE CODE``` :[https://github.com/inconshreveable/ngrok](https://github.com/inconshreveable/ngrok)


## ENVS

NGROK_DOMAIN=taoge.ngrok.me  

GOPATH = $HOME/Go


##SERVER

```go install ngrok/main/ngrokd```   

## CLIENT

```go install ngrok/main/ngrok```      


## RUN SERVER

``` ./bin/ngrokd -domain=$NGROK_DOMAIN -httpAddr=":80" ```      

## RUN CLIENT

``` echo "server_addr: $NGROK_DOMAIN:4443" >>ngrok-config ```    


```./bin/ngrok -config=ngrok-config -log=ngrok.log -proto="http" 3000 ```       

the port 3000 should be changed to yours.   

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