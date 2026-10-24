// @file main.go
// Package main implements the standalone ABB system_state command.
// @brief Retain one subscription while awaiting a complete ABB SystemState sample.
// @details At most 250 polls share one owner, with 20 ms monotonic waits after idle. All original state fields
// survive.
// Uses real wasip1/wasm imports through the official-Go SDK. The complete
// canonical reply is emitted as wire_hex beside independent error observations.
// @see uwvm2.local/abb-observation
package main

import (
	"encoding/hex"
	"encoding/json"
	"os"
	"time"

	abb "uwvm2.local/abb-observation"
)

// main performs exactly one requested observation and emits its complete facts.
// @brief Read command arguments, call the real SDK, and write one JSON line.
// @details Usage: application ALIAS. Invalid argument count exits
// 22 before any ROS call. The original operation status precedes close and
// stdout failure; process status is clamped to 125. No retry or goroutine starts.
// @see abb.Outcome.Status
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	result := abb.WaitSystemState(os.Args[1], 250, func() uint32 { time.Sleep(20 * time.Millisecond); return 0 })
	requiredPresent := result.RPC.HasRequired || (result.RPCPresent && result.RPCStatus == 0)
	required := result.RPC.Required
	if result.RPCPresent && result.RPCStatus == 0 {
		required = uint64(len(result.RPC.Data))
	}
	report := map[string]any{
		"primary":          result.Primary,
		"cleanup":          result.Cleanup,
		"cleanup_present":  result.CleanupPresent,
		"response_present": result.ResponsePresent,
		"rpc_present":      result.RPCPresent,
		"rpc_status":       result.RPCStatus,
		"required_present": requiredPresent,
		"required":         required,
		"encoding":         0,
		"wire_hex":         hex.EncodeToString(result.Wire),
	}
	status := result.Status()
	if err := json.NewEncoder(os.Stdout).Encode(report); err != nil && status == 0 {
		status = 5
	}
	if status > 125 {
		status = 125
	}
	os.Exit(int(status))
}
