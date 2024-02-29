GO_VERSION := 1.22.0

.PHONY: install-go init-go


setup : install-go init-go


install-go:
	wget "https://go.dev/dl/go$(GO_VERSION).linux-amd64.tar.gz"
	sudo tar -C /usr/local -xzf "go$(GO_VERSION).linux-amd64.tar.gz"
	rm "go$(GO_VERSION).linux-amd64.tar.gz"

init-go:
	echo 'export PATH=$$PATH:/usr/local/go/bin' >> ~/.bashrc

upgrade-go:
	sudo rm -rf /usr/local/go
	wget "https://go.dev/dl/go$(GO_VERSION).linux-amd64.tar.gz"
	sudo tar -C /usr/local -xzf "go$(GO_VERSION).linux-amd64.tar.gz"
	rm "go$(GO_VERSION).linux-amd64.tar.gz"

build:
	go build -o bin/api cmd/main.go


