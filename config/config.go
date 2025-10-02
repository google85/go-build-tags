package config

import (
	"os"
)

func GetGoVersion() (string) {
	return os.Getenv("GOLANG_VERSION")
}