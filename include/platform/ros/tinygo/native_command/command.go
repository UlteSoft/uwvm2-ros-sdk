//go:build tinygo && (wasm || tinygo.wasm)

// @file command.go
// @brief Genuine TinyGo native ROS1/ROS2 commands with complete records and checked ownership.
// @details Build tags select the actual original import namespace. No native ROS
// library, host language interpreter, C application template or default grant is
// introduced. All output fields own ordinary TinyGo storage.
package nativecommand

import (
	"encoding/hex"
	"encoding/json"
	"os"
	"time"

	ros "uwvm2.local/roswasm"
)

// @brief Complete owned original String/Trigger values and independent status facts.
// @details Presence flags distinguish unobserved values from numeric zero. A valid
// Trigger success=false reply remains present and keeps its complete diagnostic.
type Outcome struct {
	// @brief First original operation, codec or application refusal.
	Primary uint32 `json:"primary"`
	// @brief Original independent once-only acquired-owner close status.
	Cleanup uint32 `json:"cleanup"`
	// @brief True only after a close attempt on an actually acquired owner.
	CleanupPresent bool `json:"cleanup_present"`
	// @brief Original full unsigned publication, poll or service transport status.
	RPCStatus uint32 `json:"rpc_status"`
	// @brief True only after the selected transport operation was attempted.
	RPCPresent bool `json:"rpc_present"`
	// @brief Number of explicitly admitted original String publication samples.
	Publications uint32 `json:"publications"`
	// @brief Exact complete initialized successful response byte extent.
	Length uint64 `json:"length"`
	// @brief True only after the selected successful response length was observed.
	LengthPresent bool `json:"length_present"`
	// @brief Full original capacity-error requirement when genuinely observed.
	Required uint64 `json:"required"`
	// @brief True only when the original ABI wrapper observed the capacity slot.
	RequiredPresent bool `json:"required_present"`
	// @brief True only after every field of a complete response validated.
	ResponsePresent bool `json:"response_present"`
	// @brief Complete independently owned original String.data field.
	Value string `json:"value"`
	// @brief Complete original Trigger application Bool, independently from errno.
	Success bool `json:"success"`
	// @brief Complete independently owned original Trigger diagnostic String.
	Message string `json:"message"`
	// @brief Exact complete original canonical input, when the command sends data.
	RequestWireHex string `json:"request_wire_hex"`
	// @brief Exact complete original canonical output after whole-record validation.
	ResponseWireHex string `json:"response_wire_hex"`
}

// @brief Preserve the actual transport result and optional capacity observation.
// @param outcome Exclusive independently owned command result.
// @param code Original unsigned ABI operation error.
// @param required Full original requirement, valid only when present is true.
// @param present Original capacity-slot observation flag.
// @return Void; no owner is acquired, closed or retried by this pure update.
func transport(outcome *Outcome, code uint32, required uint64, present bool) {
	outcome.RPCStatus = code
	outcome.RPCPresent = true
	outcome.Primary = code
	outcome.Required = required
	outcome.RequiredPresent = present
}

// @brief Preserve every exact SDK Error code without signed narrowing.
// @param failure Original checked SDK error, or nil after success.
// @return Original unsigned SDK status; unexpected local errors map to 5.
func errorCode(failure error) uint32 {
	if failure == nil {
		return 0
	}
	if original, ok := failure.(ros.Error); ok {
		return original.Code
	}
	return 5
}

// @brief Retain one original SDK error and independently observed capacity fact.
// @param outcome Exclusive independently owned command result.
// @param failure Original SDK transport error, or nil after success.
// @return Void; the complete original capacity presence flag is preserved.
func imported(outcome *Outcome, failure error) {
	transport(outcome, errorCode(failure), 0, false)
	if original, ok := failure.(ros.Error); ok {
		outcome.Required = original.Required
		outcome.RequiredPresent = original.HasRequired
	}
}

// @brief Perform one complete native observation with one checked acquired owner.
// @param operation 1=publish String, 2=subscribe String, 3=call Trigger.
// @return Complete owned original values and independent operation/close facts.
// @details Only idle 11 permits another poll within 500 attempts and 20 ms delays.
// A service request is never replayed. Successful acquisition installs cleanup
// before any operation; ordinary numeric failures retire the owner exactly once.
// Publishing admits two explicit samples one second apart for discovery. The
// second sample is reached only after success; no failure is automatically retried.
func observe(operation uint32) (outcome Outcome) {
	if operation < 1 || operation > 3 {
		outcome.Primary = 22
		return
	}
	if ros.RawAbiVersion() != 1 {
		outcome.Primary = 95
		return
	}
	owner, failure := ros.Open("sample")
	outcome.Primary = errorCode(failure)
	if outcome.Primary != 0 {
		return
	}
	defer func() {
		outcome.Cleanup = errorCode(owner.Close())
		outcome.CleanupPresent = true
	}()

	if operation == 1 {
		var payload []byte
		storage := make([]byte, 256)
		size, failure := ros.EncodeString("hello native ROS", storage)
		outcome.Primary = errorCode(failure)
		if failure == nil {
			payload = storage[:size]
		}
		if outcome.Primary != 0 {
			return
		}
		outcome.Value = "hello native ROS"
		outcome.RequestWireHex = hex.EncodeToString(payload)
		for sample := 0; sample < 2; sample++ {
			imported(&outcome, owner.Publish(payload))
			if outcome.Primary != 0 {
				return
			}
			outcome.Publications++
			if sample == 0 {
				time.Sleep(time.Second)
			}
		}
		time.Sleep(200 * time.Millisecond)
		return
	}
	if operation == 2 {
		outcome.Primary = errorCode(owner.Subscribe())
		if outcome.Primary != 0 {
			return
		}
		for attempt := 0; attempt < 500; attempt++ {
			buffer := make([]byte, 256)
			size, failure := owner.Poll(buffer)
			imported(&outcome, failure)
			payload := buffer[:size]
			if outcome.Primary == 11 && attempt+1 < 500 {
				time.Sleep(20 * time.Millisecond)
				continue
			}
			if outcome.Primary != 0 {
				return
			}
			outcome.Length = uint64(len(payload))
			outcome.LengthPresent = true
			outcome.Value, failure = ros.DecodeString(payload)
			outcome.Primary = errorCode(failure)
			if outcome.Primary != 0 {
				return
			}
			outcome.ResponsePresent = true
			outcome.ResponseWireHex = hex.EncodeToString(payload)
			return
		}
		return
	}
	buffer := make([]byte, 256)
	size, failure := owner.Request(ros.OpServiceCall, nil, buffer)
	imported(&outcome, failure)
	payload := buffer[:size]
	if outcome.Primary != 0 {
		return
	}
	outcome.Length = uint64(len(payload))
	outcome.LengthPresent = true
	response, failure := ros.DecodeServiceResponse(payload)
	outcome.Primary = errorCode(failure)
	if outcome.Primary != 0 {
		return
	}
	outcome.Success = response.Success
	outcome.Message = response.Message
	outcome.ResponsePresent = true
	outcome.ResponseWireHex = hex.EncodeToString(payload)
	if !outcome.Success {
		outcome.Primary = 5
	}
	return
}

// @brief Execute the genuine command and emit every original result fact as JSON.
// @param operation Exact complete native String/Trigger command selector.
// @return Original primary, independent cleanup or stdout error without narrowing.
// @details Only the application entry clamps the resulting WASI process exit.
func Run(operation uint32) uint32 {
	outcome := observe(operation)
	status := outcome.Primary
	if status == 0 {
		status = outcome.Cleanup
	}
	if err := json.NewEncoder(os.Stdout).Encode(outcome); err != nil && status == 0 {
		return 5
	}
	return status
}
