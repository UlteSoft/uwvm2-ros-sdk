// @brief Validate an entire original value with the genuine Go codec.
package main

import (
	"fmt"
	"io"
	"os"
	records "uwvm2.local/flexiv-ros1_noetic-tinygo"
)

func main() {
	raw, err := io.ReadAll(io.LimitReader(os.Stdin, 865))
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(5)
	}
	value, err := records.DecodeRos1Flexiv_msgsRobotStates(raw)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	encoded, err := value.Encode()
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(22)
	}
	fmt.Printf("%x\n", encoded)
}
