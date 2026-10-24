//go:build wasip1 && wasm && ros2 && !ros1 && !tinygo

// @file main.go
// @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
// fields, original constants and native defaults; field units and frames follow the retained
// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
// native ROS objects; importing them grants no transport alias.
// Command query reads the original IO address 10011 through official Go/WASI.
// Compiler/Guest qualification is pending; no native IO write or grant occurs.
// @see query.QueryOnce
package main

import (
	"fmt"
	"os"
	query "uwvm2.local/yaskawa-query-go"
)

// main requires one existing alias and retains full original response/error facts.
// @brief Perform one complete address-10011 read without retries or goroutines.
// @details Wrong argc exits 22 before ROS open. Every response/message field,
// original transport/advisory-length observation and close status is printed
// using escaped Go syntax. Primary then close precede IO error 5; exit clamps
// to 125. Native address/value units require the selected controller-map review.
// @see query.Outcome.Status
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	result := query.QueryOnce(os.Args[1], query.Request{Address: 10011})
	status := result.Status()
	_, err := fmt.Printf("primary=%d response=%#v call=%t transport_code=%d transport=%#v close_observed=%t close=%d\n",
		result.Primary, result.Response, result.CallObserved, result.TransportCode,
		result.Transport, result.CloseObserved, result.CloseCode)
	if err != nil && status == 0 {
		status = 5
	}
	if status > 125 {
		status = 125
	}
	os.Exit(int(status))
}
