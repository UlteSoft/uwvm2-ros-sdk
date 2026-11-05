// @brief Validate an entire original value with the genuine Go codec.
package main

import (
	"fmt"
	"io"
	"os"
	records "uwvm2.local/franka-ros1-tinygo"
)

func main() {
	raw, err := io.ReadAll(io.LimitReader(os.Stdin, 2620))
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(5)
	}
	value, err := records.DecodeRos1Franka_msgsFrankaState(raw)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	encoded, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	// A WASI pipe may accept only part of a write. TinyGo exposes that
	// short write directly, so retain and write the remaining bytes.
	output := []byte(fmt.Sprintf("%x\n", encoded))
	for len(output) != 0 {
		n, err := os.Stdout.Write(output)
		if err != nil || n <= 0 || n > len(output) {
			os.Exit(5)
		}
		output = output[n:]
	}
}
