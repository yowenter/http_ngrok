FROM google/golang
MAINTAINER TaoGE  "wenter.wu@gmail.com"

WORKDIR /gopath
ADD . /gopath/
ENV GOPARH /gopath/
ENV NGROK_DOMAIN ngrok_taoge.daoapp.io
RUN go install ngrok/main/ngrokd
EXPOSE 3000
EXPOSE 4443

CMD ["/gopath/bin/ngrokd -domain ngrok_taoge.daoapp.io -httpAddr=\":3000\""]

