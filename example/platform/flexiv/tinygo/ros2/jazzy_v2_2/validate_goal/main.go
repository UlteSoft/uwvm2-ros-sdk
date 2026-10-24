// @brief Validate an entire original value with the genuine Go codec.
package main

import (
	"fmt"
	"io"
	"os"
	records "uwvm2.local/flexiv-ros2_jazzy_v2_2-tinygo"
)

func main() {
	raw, err := io.ReadAll(io.LimitReader(os.Stdin, 9))
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(5)
	}
	value, err := records.DecodeRos2Flexiv_msgsActionGrasp_Goal(raw)
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
