package main

import "github.com/google85/go-build-tags/log"
import "github.com/google85/go-build-tags/config"

func main() {
	log.DebugLog("Hello World")

	goVersion := config.GetGoVersion()
	log.DebugLog("env Go version:")
	log.DebugLog(goVersion)
}