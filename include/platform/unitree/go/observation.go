//go:build wasip1 && wasm

// Package unitree owns complete Unitree observations in a genuine go Wasm guest.
// @brief Preserve every original message field and independent cleanup/error fact.
// @details Every ordinary acquisition closes once after a bounded sequence of actual
// polls. No native pointer, host interpreter, command publication, or retry worker exists.
package unitree

import ros "uwvm2.local/roswasmgo"

// Outcome owns an entire accepted original record and all independent status facts.
// @brief Complete typed message result with explicit response and cleanup presence.
// @tparam T Original generated complete Unitree record value.
// @details Value and Wire are valid only when ResponsePresent is true. Ordinary
// values own their storage and no native capability. Serialize shared mutation.
type Outcome[T any] struct {
	// @brief First validation/open/subscription/poll/decode error.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	Primary uint32
	// @brief Independent original single close result.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	Cleanup uint32
	// @brief True only after closing an acquired native owner.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	CleanupPresent bool
	// @brief True only after full checked decoding.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	ResponsePresent bool
	// @brief True only after an actual poll returned.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	RPCPresent bool
	// @brief Original final poll status before local decoding.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	RPCStatus uint32
	// @brief Total actual polls, including idle results.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	Polls uint32
	// @brief True only after an actual size observation.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	RequiredPresent bool
	// @brief Original successful extent or observed required extent.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	Required uint64
	// @brief Entire owned decoded record, governed by ResponsePresent.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	Value T
	// @brief Complete owned canonical body, without native padding.
	// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.
	Wire []byte
}

// Status selects primary failure before the independent close failure.
// @brief Read the full unsigned status without a native operation.
// @param[in] value Immutable initialized observation.
// @return Primary when nonzero, otherwise Cleanup.
// @details Copying or reading this value creates no native owner or permission.
func (value Outcome[T]) Status() uint32 {
	if value.Primary != 0 {
		return value.Primary
	}
	return value.Cleanup
}

// receive retains one real exact-type subscription for a finite caller poll budget.
// @brief Internal complete typed message observation implementation.
// @param[in] alias Existing exact native type subscription policy alias.
// @param[in] capacity Exact complete generated schema maximum in bytes.
// @param[in] attempts Total poll budget in [1,250], including the immediate poll.
// @param[in] pause Caller-controlled wait after idle; required for multiple attempts.
// @param[in] decode Exact complete transactional generated message decoder.
// @return Owned complete record and independent first/last-poll/cleanup facts.
// @details Idle 11 alone permits another poll. No capacity/timeout/error is
// automatically replayed. Allocation failure or a panic can prevent normal
// cleanup. Borrowed arguments stay unchanged through synchronous completion.
func receive[T any](alias string, capacity uint32, attempts uint32, pause func() uint32,
	decode func([]byte) (T, error)) Outcome[T] {
	var out Outcome[T]
	if attempts == 0 || attempts > 250 || (attempts > 1 && pause == nil) {
		out.Primary = 22
		return out
	}
	if ros.AbiVersion() != 1 {
		out.Primary = 95
		return out
	}
	owner, status := ros.Open(alias)
	out.Primary = status
	if status != 0 {
		return out
	}
	out.Primary = owner.Subscribe()
	if out.Primary == 0 {
		for index := uint32(0); index < attempts; index++ {
			rpc, code := owner.Poll(capacity)
			out.RPCPresent, out.RPCStatus, out.Primary = true, code, code
			out.Polls++
			if code == 0 {
				out.Required, out.RequiredPresent = uint64(len(rpc.Data)), true
				value, err := decode(rpc.Data)
				if err != nil {
					out.Primary = 22
				} else {
					out.Value, out.Wire, out.ResponsePresent = value, rpc.Data, true
				}
			} else if rpc.HasRequired {
				out.Required, out.RequiredPresent = rpc.Required, true
			}
			if code != 11 || index+1 == attempts {
				break
			}
			out.Primary = pause()
			if out.Primary != 0 {
				break
			}
		}
	}
	out.CleanupPresent = true
	out.Cleanup = owner.Close()
	return out
}
