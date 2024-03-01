FROM golang:1.22-alpine3.19 AS builder
WORKDIR /app
COPY main.go main.go
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" ./main.go

FROM scratch
WORKDIR /
COPY --from=builder /app/main ./
ENTRYPOINT [ "./main" ]