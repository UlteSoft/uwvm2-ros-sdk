//go:build wasip1 && wasm && ros2 && !ros1 && !tinygo

// @file main.go
// @brief Represent the complete original FANUC ROS 2 canonical value catalog.
// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
// fields, original constants and native defaults; field units and frames follow the retained
// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
// native ROS objects; importing them grants no transport alias.
// Command query executes one original group-1 GetTCPSpeed request through the
// actual official-Go Wasip1 SDK. Compiler/Guest qualification is pending.
// @see query.QueryOnce
package main

import (
	"fmt"
	"os"
	query "uwvm2.local/fanuc-query-go"
)

// main requires one existing service alias and preserves all failure observations.
// @brief Execute one complete group-1 read with no thread, retry or native grant.
// @details Wrong argument count exits 22 before ROS open. The complete response,
// raw SDK/required-length facts and independent close result are printed with
// escaped Go string syntax. IO failure contributes 5 only after clean ROS/close;
// process exit clamps to 125. Panics/abort do not promise normal reporting.
// @see query.Outcome.Status
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	result := query.QueryOnce(os.Args[1], query.Request{Group: 1})
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
