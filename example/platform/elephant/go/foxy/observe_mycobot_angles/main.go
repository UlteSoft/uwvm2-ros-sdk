// @file main.go
// @brief Read every original mycobot_interfaces/msg/MycobotAngles field.
// @details The command owns all decoded fields, closes once and prints independent errors.
package main

import (
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"time"
	records "uwvm2.local/elephant-go/ros2/elephant-mycobot-foxy-complete"
	ros "uwvm2.local/roswasmgo"
)

// @brief Preserve a real codec errno without narrowing source-language integer fields.
// @param err Original whole-value codec error. @return Original errno or invalid 22.
func code(err error) uint32 {
	if err == nil {
		return 0
	}
	if value, ok := err.(ros.Error); ok {
		return value.Code
	}
	return 22
}

// @brief Observe/query a complete original value under one manually configured alias.
// @details Only idle 11 permits another bounded poll; requests are never replayed.
// All normal owners retire before stdout. The process code preserves primary then cleanup.
func main() {
	if len(os.Args) != 2 {
		os.Exit(22)
	}
	owner, primary := ros.Open(os.Args[1])
	var cleanup uint32
	var wire []byte
	present := false
	if primary == 0 {
		primary = owner.Subscribe()
		for attempt := 0; primary == 0 && attempt < 250; attempt++ {
			result, status := owner.Poll(24)
			primary, wire = status, result.Data
			if primary != 11 || attempt == 249 {
				break
			}
			time.Sleep(20 * time.Millisecond)
			primary = 0
		}
		if primary == 0 {
			value, err := records.DecodeRos2Mycobot_interfacesMsgMycobotAngles(wire)
			primary = code(err)
			if primary == 0 {
				wire, err = value.Encode()
				primary = code(err)
				present = primary == 0
			}
		}
		cleanup = owner.Close()
	}
	text := ""
	if present {
		text = hex.EncodeToString(wire)
	}
	report, err := json.Marshal(map[string]any{"primary": primary, "cleanup": cleanup,
		"cleanup_present": owner != nil, "response_present": present, "wire_hex": text})
	var output uint32
	if err != nil {
		output = 22
	} else if _, err = fmt.Println(string(report)); err != nil {
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
