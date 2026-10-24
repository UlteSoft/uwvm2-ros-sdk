//go:build wasip1 && wasm && ros2 && !ros1 && !tinygo

// @file transport_go.go
// @brief Preserve the complete robotis typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package patrol

import ros "uwvm2.local/roswasmgo"

type goOwner struct{ owner *ros.Owner }

func openOwner(alias string) (transportOwner, uint32) {
	owner, code := ros.Open(alias)
	if code != 0 {
		return nil, code
	}
	return &goOwner{owner: owner}, 0
}

func (owner *goOwner) request(operation role, input []byte, capacity uint32) ([]byte, uint32) {
	selected := [...]ros.Operation{ros.OpActionSendGoal, ros.OpActionCancelOwnGoal,
		ros.OpActionReceiveFeedback, ros.OpActionReceiveResult}
	value, code := owner.owner.Request(selected[operation], input, capacity)
	return value.Data, code
}

func (owner *goOwner) close() uint32 { return owner.owner.Close() }
