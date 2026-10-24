// @file main.go
// @brief Represent the complete original ABB ROS 2 canonical value catalog.
// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
// fields, original constants and native defaults; field units and frames follow the retained
// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
// native ROS objects; importing them grants no transport alias.
// @brief Run one complete ABB GetSpeedRatio observation with an empty request.
// @details The wasm32 WASI command consumes one positional UTF-8 service alias
// with externally granted ROS2 rights. Speed ratio retains original percent
// units. Calls are synchronous, serialized and never retried. Full responses and
// independent primary/cleanup facts are printed after checked service close.
// TinyGo 0.38.0 is the selected tool baseline; current build qualification is
// recorded separately and importing this command supplies no authority.
// @see query.QueryOnce
package main

import (
	"fmt"
	"os"
	query "uwvm2.local/abb-query"
	ros "uwvm2.local/roswasm"
)

// @brief Execute the source request and preserve primary error precedence.
// @details Exits 22 for the wrong argument count; otherwise primary or the first
// cleanup error wins, clamped to 125. Zero requires both stages to succeed.
// Panic/abort and failed stdout are outside normal status reporting. Closing an
// owner does not stop or reset a controller. No worker or deadline is created.
// @see query.Outcome
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	result := query.QueryOnce(os.Args[1], query.Request{})
	fmt.Printf("primary=%#v response=%+v cleanup=%#v\n", result.Primary, result.Response, result.Cleanup)
	status := ros.ErrorCode(result.Primary)
	for _, err := range result.Cleanup.Results {
		if status == 0 {
			status = ros.ErrorCode(err)
		}
	}
	if status > 125 {
		status = 125
	}
	os.Exit(int(status))
}
