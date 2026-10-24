// @file main.go
// @brief Run one explicit YASKAWA ROS 2 observation with checked cleanup.
// @details The actual source-language application validates argument arity before acquisition, retains
// the whole typed canonical value and reports independent operation/cleanup statuses. The operator
// supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
// required; no grant, replay or controller admission is implicit.
// @file main.go
// @brief Observe the full original sensor_msgs/msg/JointState record in genuine Go.
package main

import (
	"encoding/hex"
	"encoding/json"
	"os"
	"time"
	ros "uwvm2.local/roswasmgo"
	records "uwvm2.local/yaskawa-records-go"
)

// @brief Retain one subscription for at most 250 polls and close before stdout.
// @details Invalid arguments return before acquisition; no transport failure is replayed.
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	var primary, cleanup uint32
	var wire []byte
	cleanupPresent, present := false, false
	owner, status := ros.Open(os.Args[1])
	primary = status
	if owner != nil {
		primary = owner.Subscribe()

		if primary == 0 {
			for attempt := 0; attempt < 250; attempt++ {
				var result ros.Result
				result, primary = owner.Poll(1196)
				if primary == 0 {
					wire = result.Data
				}
				if primary != 11 || attempt == 249 {
					break
				}
				time.Sleep(20 * time.Millisecond)
			}
		}
		if primary == 0 {
			value, err := records.DecodeRos2Sensor_msgsMsgJointState(wire)
			if err != nil {
				primary = 22
			} else {
				wire, err = value.Encode()
				if err != nil {
					primary = 22
				} else {
					present = true
				}
			}
		}
		cleanupPresent = true
		cleanup = owner.Close()
	}
	report := map[string]any{"primary": primary, "cleanup": cleanup, "cleanup_present": cleanupPresent, "response_present": present, "wire_hex": hex.EncodeToString(wire)}
	if err := json.NewEncoder(os.Stdout).Encode(report); err != nil && primary == 0 {
		primary = 5
	}
	if primary == 0 {
		primary = cleanup
	}
	if primary > 125 {
		primary = 125
	}
	os.Exit(int(primary))
}
