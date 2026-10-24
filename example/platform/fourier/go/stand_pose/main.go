// @file main.go
// @brief Observe every original uwvm_fourier_bridge/srv/GetStandPose_Response field using the genuine go guest.
// @details One alias is acquired and closed once. Only idle subscriptions retry;
// services are attempted once. Complete canonical output and cleanup remain separate.
package main

import (
	"encoding/hex"
	"encoding/json"
	records "fourier/go/ros2_aurora_bridge_v1"
	"os"
	"strconv"
	"time"
	ros "uwvm2.local/roswasmgo"
)

// @brief Own complete observation facts after explicit resource cleanup.
type outcome struct {
	Primary          uint32 `json:"primary"`
	Cleanup          uint32 `json:"cleanup"`
	CleanupPresent   bool   `json:"cleanup_present"`
	ResponsePresent  bool   `json:"response_present"`
	HasRequired      bool   `json:"has_required"`
	Required         string `json:"required"`
	RPCStatusPresent bool   `json:"rpc_status_present"`
	RPCStatus        string `json:"rpc_status"`
	WireHex          string `json:"wire_hex"`
}

// @brief Return a complete owning observation; deferred close updates the named result.
func observe(alias string, request []byte) (facts outcome) {
	owner, code := ros.Open(alias)
	facts.Primary = code
	if owner == nil {
		return
	}
	defer func() { facts.CleanupPresent = true; facts.Cleanup = owner.Close() }()
	if facts.Primary != 0 {
		return
	}
	var frame ros.Result
	for attempt := 0; attempt < 1; attempt++ {
		frame, facts.Primary = owner.Request(ros.OpServiceCall, request, 652)

		if facts.Primary != 11 || attempt == 0 {
			break
		}
		time.Sleep(20 * time.Millisecond)
	}
	facts.HasRequired = frame.HasRequired
	if frame.HasRequired {
		facts.Required = strconv.FormatUint(frame.Required, 10)
	}
	if facts.Primary == 0 {
		value, invalid := records.DecodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(frame.Data)
		if invalid != nil {
			facts.Primary = 22
			return
		}
		facts.RPCStatusPresent = true
		facts.RPCStatus = strconv.FormatUint(uint64(value.Status), 10)
		_ = value // Full decoding already checked every original member.
		facts.ResponsePresent = true
		facts.WireHex = hex.EncodeToString(frame.Data)
	}
	return
}

// @brief Validate explicit CLI inputs, then output only after the owner is closed.
func main() {
	if len(os.Args) != 3 {
		os.Exit(22)
	}
	value := records.Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request{}
	sequence, err := strconv.ParseUint(os.Args[2], 10, 64)
	if err != nil || sequence == 0 {
		os.Exit(22)
	}
	value.Sequence = sequence
	request, invalid := value.Encode()
	if invalid != nil {
		os.Exit(22)
	}
	facts := observe(os.Args[1], request)
	if json.NewEncoder(os.Stdout).Encode(facts) != nil {
		os.Exit(5)
	}
	code := facts.Primary
	if code == 0 {
		code = facts.Cleanup
	}
	if code == 0 && facts.RPCStatusPresent && facts.RPCStatus != "0" {
		code = 5
	}
	if code > 125 {
		code = 125
	}
	os.Exit(int(code))
}
