FROM golang:latest

WORKDIR /app/tesgo

COPY go.mod .

RUN go mod download

COPY . .

RUN go build -o ./bin/tesgo .

EXPOSE 8080

CMD ["./bin/tesgo"]
