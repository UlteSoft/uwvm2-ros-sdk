//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1

// @file transport_tinygo.go
// @brief Preserve the complete robotis typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package patrol

import ros "uwvm2.local/roswasm"

type tinygoOwner struct{ owner *ros.Capability }

func nativeCode(errorValue error) uint32 {
	if errorValue == nil {
		return 0
	}
	if value, ok := errorValue.(ros.Error); ok {
		return value.Code
	}
	return 22
}

func openOwner(alias string) (transportOwner, uint32) {
	owner, errorValue := ros.Open(alias)
	if errorValue != nil {
		return nil, nativeCode(errorValue)
	}
	return &tinygoOwner{owner: owner}, 0
}

func (owner *tinygoOwner) request(operation role, input []byte, capacity uint32) ([]byte, uint32) {
	selected := [...]ros.Operation{ros.OpActionSendGoal, ros.OpActionCancelOwnGoal,
		ros.OpActionReceiveFeedback, ros.OpActionReceiveResult}
	output := make([]byte, capacity)
	used, errorValue := owner.owner.Request(selected[operation], input, output)
	if errorValue != nil {
		return nil, nativeCode(errorValue)
	}
	if used > uint64(len(output)) {
		return nil, 22
	}
	return output[:int(used)], 0
}

func (owner *tinygoOwner) close() uint32 { return nativeCode(owner.owner.Close()) }
