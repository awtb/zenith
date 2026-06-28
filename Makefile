.PHONY: fmt lint test build check tools

fmt:
	go fmt ./...
	goimports -w .

lint:
	golangci-lint run ./...

test:
	go test ./...

build:
	go build -o bin/zenith ./cmd/zenith

check: fmt lint test build
