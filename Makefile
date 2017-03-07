PREFIX ?= /usr/local
BIN="wpe-sftp"
REPO="utulsa/$(BIN)"
VERSION="1.0"

all: build
build:
	@docker build -t $(REPO):$(VERSION) . \
	&& docker tag $(REPO):$(VERSION) $(REPO):latest
install: build
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install $(BIN) $(DESTDIR)$(PREFIX)/bin/$(BIN)
uninstall:
	@$(RM) $(DESTDIR)$(PREFIX)/bin/$(BIN)
	@docker rmi $(REPO):$(VERSION)
	@docker rmi $(REPO):latest
