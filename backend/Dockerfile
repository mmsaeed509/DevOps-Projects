# Multi-stage build for Go backend
# Stage 1: Build the Go binary
FROM golang:1.18-alpine AS builder

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o GoApp .

# Stage 2: Run the binary on minimal image
FROM alpine:latest

RUN apk --no-cache add ca-certificates
WORKDIR /app

COPY --from=builder /app/GoApp .

EXPOSE 8000

CMD ["./GoApp"]