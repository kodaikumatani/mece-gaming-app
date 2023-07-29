.DEFAULT_GOAL := vet
WORKDIR := app

fmt:
	cd $(WORKDIR) && goimports -w .
.PHONY: goimports -lw .

lint: fmt
	cd $(WORKDIR) && staticcheck
.PHONY: lint

vet: lint
	cd $(WORKDIR) && go vet
.PHONY: vet
