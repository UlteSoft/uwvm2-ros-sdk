// @brief Validate an entire original value with the genuine Go codec.
package main

import (
	"fmt"
	"io"
	"os"
	records "uwvm2.local/flexiv-ros1_noetic-go"
)

func main() {
	raw, err := io.ReadAll(io.LimitReader(os.Stdin, 113))
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(5)
	}
	value, err := records.DecodeRos1Flexiv_msgsJointPosVel(raw)
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
