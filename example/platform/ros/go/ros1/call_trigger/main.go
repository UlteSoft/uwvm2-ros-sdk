// @file main.go
// @brief Execute the complete call_trigger with the genuine Go command library.
package main

import (
	"os"
	command "uwvm2.local/roswasmgo/native_command"
)

func main() { os.Exit(int(command.Run(3))) }
