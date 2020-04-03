GO ?= go

build: install_deps
	$(GO) build -ldflags "-X main.version=`cat VERSION`"

test: install_deps
	$(GO) test -cover $(PACKAGES)
	$(GO) vet $(PACKAGES)

install_deps: 
	$(GO) get	
