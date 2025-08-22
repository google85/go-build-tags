#### CMDs #

#

### Steps:
- in shell:
    ```bash
        # run Go in Docker
        docker run --rm -it -v .:/app --name go-tutorial -w /app  golang:1.24
    ```
- in Docker's shell:
    ```bash
        # init module
        go mod init github.com/google85/go-build-tags
        # mark Git folder as safe
        git config --global --add safe.directory /app

        touch main.go

        go run main.go

    ```
