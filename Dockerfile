FROM google/golang
MAINTAINER TaoGE  "wenter.wu@gmail.com"

WORKDIR /gopath
COPY ./ /gopath/
ENV GOPATH /gopath/
ENV TAOGE_NGROK_DOMAIN ngrok-taoge.daoapp.io
RUN go install ngrok/main/ngrokd
EXPOSE 3000
EXPOSE 4443

CMD ["./run.sh"]

