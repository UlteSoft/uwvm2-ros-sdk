//go:build wasip1 && wasm && ros2 && !ros1 && !tinygo

// @file main.go
// @brief Represent the complete original ABB ROS 2 canonical value catalog.
// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
// fields, original constants and native defaults; field units and frames follow the retained
// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
// native ROS objects; importing them grants no transport alias.
// Command query sends one complete GetSpeedRatio request using official Go.
// Current compiler/Guest acceptance is pending; no implicit ROS grant exists.
// @see query.QueryOnce
package main

import (
	"fmt"
	"os"
	query "uwvm2.local/abb-query-go"
)

// main takes one existing alias and reports complete response and error facts.
// @brief Execute the logically empty request with no override or native write.
// @details Wrong argc exits 22 before ROS open. All response/message fields and
// exact original transport/advisory lengths are printed with escaped Go syntax.
// Primary then close failure precede IO error 5; process status clamps to 125.
// The command creates no goroutine, clock, retry, controller reset or grant.
// @see query.Outcome.Status
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	result := query.QueryOnce(os.Args[1], query.Request{})
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
