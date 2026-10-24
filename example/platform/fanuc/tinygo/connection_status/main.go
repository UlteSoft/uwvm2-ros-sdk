// @file main.go
// @brief Run one explicit FANUC ROS 2 observation with checked cleanup.
// @details The actual source-language application validates argument arity before acquisition, retains
// the whole typed canonical value and reports independent operation/cleanup statuses. The operator
// supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
// required; no grant, replay or controller admission is implicit.
// @file main.go
// @brief Observe the full original fanuc_msgs/msg/ConnectionStatus record in genuine TinyGo.
package main

import (
	"encoding/hex"
	"encoding/json"
	"os"
	"time"
	records "uwvm2.local/fanuc-records-tinygo"
	ros "uwvm2.local/roswasm"
)

// @brief Preserve an original typed SDK error without narrowing its u32 code.
func code(err error) uint32 {
	if err == nil {
		return 0
	}
	if value, ok := err.(ros.Error); ok {
		return value.Code
	}
	return 22
}

// @brief Retain one subscription for at most 250 polls and close before stdout.
// @details Invalid arguments return before acquisition; no transport failure is replayed.
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	var primary, cleanup uint32
	var wire []byte
	cleanupPresent, present := false, false
	owner, err := ros.Open(os.Args[1])
	primary = code(err)
	if owner != nil {
		primary = code(owner.Subscribe())
		buffer := make([]byte, 1)
		if primary == 0 {
			for attempt := 0; attempt < 250; attempt++ {
				var length uint64
				length, err = owner.Poll(buffer)
				primary = code(err)
				if primary == 0 {
					wire = buffer[:int(length)]
				}
				if primary != 11 || attempt == 249 {
					break
				}
				time.Sleep(20 * time.Millisecond)
			}
		}
		if primary == 0 {
			value, err := records.DecodeRos2Fanuc_msgsMsgConnectionStatus(wire)
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
		cleanup = code(owner.Close())
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
