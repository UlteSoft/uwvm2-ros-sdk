// @file main.go
// @brief Observe all four joystick axes and the complete key bitmask without generating input.
// @details Genuine go source is compiled into one standalone Wasm command.
// The production uwvm2-ros native gateway supplies all real ROS transport.
package main

import (
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"time"
	unitree "uwvm2.local/unitree-go"
)

// main observes exactly one complete original native WirelessController message.
// @brief Execute a finite real subscription and print all accepted record bytes.
// @details One explicit alias argument is required. A monotonic twenty-millisecond
// wait separates idle polls. Host clock/random permissions are explicit. The
// owner closes once before stdout. No physical robot or actuation is involved.
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	value := unitree.WaitWirelessController(os.Args[1], 250, func() uint32 {
		time.Sleep(20 * time.Millisecond)
		return 0
	})
	report := map[string]any{
		"primary":          value.Primary,
		"cleanup":          value.Cleanup,
		"cleanup_present":  value.CleanupPresent,
		"response_present": value.ResponsePresent,
		"rpc_present":      value.RPCPresent,
		"rpc_status":       value.RPCStatus,
		"polls":            value.Polls,
		"required_present": value.RequiredPresent,
		"required":         value.Required,
		"encoding":         0,
		"wire_hex":         hex.EncodeToString(value.Wire),
	}

	bytes, err := json.Marshal(report)
	status := value.Status()
	if err != nil {
		if status == 0 {
			status = 22
		}
	} else if _, err := fmt.Println(string(bytes)); err != nil && status == 0 {
		status = 5
	}
	if status > 125 {
		status = 125
	}
	os.Exit(int(status))
}
