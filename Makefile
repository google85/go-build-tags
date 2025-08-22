.PHONY: help
help:
	@echo Help

.PHONY: build
build:
	@go build -o ./build/main -tags debug,test main.go

.PHONY: run
run:
	@go run -tags prod main.go

.PHONY: run-dev
run-dev:
	@go run -tags debug,test main.go