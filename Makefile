all: test, lint, build

test:
	go test ./...

lint:
	go list ./... | grep -v /vendor/ | xargs -L golint -set_exit_status

build:
	go build bin/osetrobot ./cmd/osetrobot
