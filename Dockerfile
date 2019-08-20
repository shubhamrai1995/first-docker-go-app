FROM golang:1.8

WORKDIR /go/src/first-docker-go-app

COPY . .

RUN go get -a

RUN go build -o /go/src/output .

WORKDIR /go/src

EXPOSE 1323 80

CMD ["./output"]
