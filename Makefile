
.PHONY: build
build:
	GOOS=linux GOARCH=arm CGO_ENABLED=0 go build -o ./root/usr/local/bin/cctv_upload ./cmd/cctv_upload

.PHONY: install
install:
	go get -u github.com/golang/dep/cmd/dep
	dep ensure -v
