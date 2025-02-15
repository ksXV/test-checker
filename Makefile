BINARY_NAME=checker
pkgs = \
	   ./cmd/checker-pa						\
	   ./internal/checker/commit-checker 	\
	   ./internal/checker/memory-checker 	\
	   ./internal/checker/ref-checker 		\
	   ./internal/checker/style-checker 	\
	   ./internal/manager 					\
	   ./internal/output/tui 				\
	   ./internal/output/terminal


dependencies:
	go get -d ./...

fmt:
	gofmt -s -l -w $(pkgs)

vet:
	go vet $(pkgs)

lint:
	golangci-lint run -c .golangci.yml $(pkgs)

staticcheck:
	staticcheck $(pkgs)

#TODO REPLACE THESE WITH A BUILD SCRIPT
build-linux:
	GOARCH=amd64 GOOS=linux go build -o ./bin/${BINARY_NAME} ./cmd/checker-pa/main.go

build-windows:
    set GOOS=windows
    set GOARCH=amd64
    go build -o ./bin/${BINARY_NAME}.exe ./cmd/checker-pa/main.go

dev:
	go run ./cmd/checker-pa/main.go

clean:
	go clean
	rm ./bin/${BINARY_NAME}
