// @file main.go
// @brief Read every original mycobot_interfaces/msg/MycobotGripperStatus field using the genuine TinyGo route.
// @details The explicit common TinyGo module supplies the actual backend imports.
package main

import (
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"time"
	records "uwvm2.local/elephant-tinygo/ros2/elephant-mycobot-humble-complete"
	ros "uwvm2.local/roswasm"
)

// @brief Preserve the original SDK failure without narrowing integer field values.
// @param failure The original codec or transport error. @return Exact errno or local 22.
func code(failure error) uint32 {
	if failure == nil {
		return 0
	}
	if value, ok := failure.(ros.Error); ok {
		return value.Code
	}
	return 22
}

// @brief Perform one finite original observation/query and one independent close.
// @details Only idle 11 repeats. Decoding and encoding operate on the full typed value.
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	owner, failure := ros.Open(os.Args[1])
	primary, cleanup := code(failure), uint32(0)
	wire := make([]byte, 1)
	var length uint64
	present := false
	if primary == 0 {
		primary = code(owner.Subscribe())
		for attempt := 0; primary == 0 && attempt < 250; attempt++ {
			length, failure = owner.Poll(wire)
			primary = code(failure)
			if primary != 11 || attempt == 249 {
				break
			}
			time.Sleep(20 * time.Millisecond)
			primary = 0
		}
		if primary == 0 {
			value, invalid := records.DecodeRos2Mycobot_interfacesMsgMycobotGripperStatus(wire[:length])
			primary = code(invalid)
			if primary == 0 {
				wire, invalid = value.Encode()
				primary = code(invalid)
				present = primary == 0
			}
		}
		cleanup = code(owner.Close())
	}
	text := ""
	if present {
		text = hex.EncodeToString(wire)
	}
	report, invalid := json.Marshal(map[string]any{"primary": primary, "cleanup": cleanup,
		"cleanup_present": owner != nil, "response_present": present, "wire_hex": text})
	output := uint32(0)
	if invalid != nil {
		output = 22
	} else if _, invalid = fmt.Println(string(report)); invalid != nil {
		output = 5
	}
	status := primary
	if status == 0 {
		status = cleanup
	}
	if status == 0 {
		status = output
	}
	if status > 125 {
		status = 125
	}
	os.Exit(int(status))
}
