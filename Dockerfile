FROM golang
EXPOSE 8080
WORKDIR go/src
COPY ./ .
CMD go get github.com/gorilla/websocket && cd src && go run main.go
