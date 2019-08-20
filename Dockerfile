FROM golang:1.8

WORKDIR /go/src

COPY . .

RUN go get -a

RUN go build -o /go/src/first-docker-go-app .

EXPOSE 1323 80

CMD ["hello"]