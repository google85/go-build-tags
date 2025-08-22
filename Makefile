build_dir = ./build
binary_name = main

.PHONY: help
help:
	@echo "Usage":
	@sed -n 's/^##//p' ${MAKEFILE_LIST} |  sed -e 's/^/ /'
# 	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

.PHONY: confirm
confirm:
	@echo -n 'Are you sure? [y/N] ' && read ans && [ $${ans:-N} = y ]

## build: Build the application
.PHONY: build
build:
	@mkdir -p ${build_dir}
	GOARCH=amd64 GOOS=linux go build -o ${build_dir}/${binary_name} -tags debug,test main.go

## clean: Clean-up the build binaries
.PHONY: clean
clean: confirm
	@echo "Cleaning up..."
	@rm -rf ${build_dir}

.PHONY: run
run:
	@go run -tags prod main.go

.PHONY: run-dev
run-dev:
	@go run -tags debug,test main.go