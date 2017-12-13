FROM golang:1.8

WORKDIR /go/src/myapp
COPY . .

RUN go-wrapper download
RUN go-wrapper install

CMD ["go-wrapper", "run"]
