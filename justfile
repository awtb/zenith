# Make Go-installed tools (goimports, golangci-lint) available to recipes
export PATH := env("PATH") + ":" + `go env GOPATH` + "/bin"

# Show available recipes
default:
    @just --list

# Format code
fmt:
    go fmt ./...
    goimports -w .

# Run linters
lint:
    golangci-lint run ./...

# Run tests
test:
    go test ./...

# Build the binary
build:
    go build -o bin/zenith ./cmd/zenith

# Format, lint, test and build
check: fmt lint test build
