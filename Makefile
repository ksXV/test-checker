BINARY_NAME=checker

build-linux:
	GOARCH=amd64 GOOS=linux go build -o ./bin/${BINARY_NAME} ./cmd/checker-pa/main.go

build-windows:
	GOARCH=amd64 GOOS=windows go build -o ./bin/${BINARY_NAME} ./cmd/checker-pa/main.go

run:
	go run ./cmd/checker-pa/main.go

clean:
	go clean
	rm ./bin/${BINARY_NAME}
