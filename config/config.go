package config

import (
	"os"
)

func GetGoVersion() (string) {
	return os.Getenv("SAMPLE_VAR")
}