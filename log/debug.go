//go:build debug || test

package log

import "log"

func DebugLog(msg string) {
	log.Printf("[DEBUG] %s", msg)
}