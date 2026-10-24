// @file main.go
// @brief Execute the complete subscribe_string with the genuine TinyGo command library.
package main

import (
	"os"
	command "uwvm2.local/roswasm/native_command"
)

func main() { os.Exit(int(command.Run(2))) }
