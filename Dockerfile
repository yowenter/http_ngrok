FROM google/golang
MAINTAINER TaoGE  "wenter.wu@gmail.com"

WORKDIR /gopath
COPY ./ /gopath/
ENV GOPATH /gopath/
RUN go install ngrok/main/ngrokd
RUN go install ngrok/main/ngrok
EXPOSE 80
EXPOSE 4443

CMD ["./run-server.sh"]

