//go:build tinygo && (wasm || tinygo.wasm) && ((ros1 && !ros2) || (ros2 && !ros1))

// Actual finite WASI entry; never synthesize a command or infer native authority.
// @file main.go
// @brief Preserve the complete pal typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package main

import (
	"io"
	"os"
	ros "uwvm2.local/roswasm"
)

// Outcome preserves primary, cleanup and the full observation independently.
type Outcome[T any] struct {
	Primary, Cleanup uint32
	Value            *T
}

func code(e error) uint32 {
	if e == nil {
		return 0
	}
	if v, ok := e.(ros.Error); ok {
		return v.Code
	}
	return 22
}

// @brief Open, subscribe, poll and close one explicitly granted topic.
// @param alias UTF-8 capability alias supplied by the caller.
// @return Complete decoded state and separate operation/close error codes.
func readOnce(alias string) Outcome[State] {
	var b [stateCapacity]byte
	c, e := ros.Open(alias)
	if e != nil {
		return Outcome[State]{Primary: code(e)}
	}
	var value *State
	e = c.Subscribe()
	if e == nil {
		var n uint64
		n, e = c.Poll(b[:])
		if e == nil {
			if n > uint64(len(b)) {
				e = ros.Error{Code: 22}
			} else {
				var v State
				v, e = decodeState(b[:int(n)])
				if e == nil {
					value = &v
				}
			}
		}
	}
	return Outcome[State]{Primary: code(e), Cleanup: code(c.Close()), Value: value}
}

// Read counted canonical data only after a narrowly granted alias opens.
// @brief Read and validate a counted canonical command after capability admission.
// @param alias Caller-selected publishing alias with explicit runtime authority.
// @return Decoded command when published, with independent primary and close statuses.
// @details Input is capped at 32768 bytes and publish is attempted once.
func commandOnce(alias string) Outcome[Command] {
	c, e := ros.Open(alias)
	if e != nil {
		return Outcome[Command]{Primary: code(e)}
	}
	var v Command
	var value *Command
	p := [4]byte{}
	_, e = io.ReadFull(os.Stdin, p[:])
	if e == nil {
		n := uint32(p[0]) | uint32(p[1])<<8 | uint32(p[2])<<16 | uint32(p[3])<<24
		if n > 32768 {
			e = ros.Error{Code: 90}
		} else {
			b := make([]byte, int(n))
			_, e = io.ReadFull(os.Stdin, b)
			if e == nil {
				v, e = decodeCommand(b)
			}
			if e == nil {
				b, e = v.Encode()
				if e == nil {
					e = c.Publish(b)
					if e == nil {
						value = &v
					}
				}
			}
		}
	}
	return Outcome[Command]{Primary: code(e), Cleanup: code(c.Close()), Value: value}
}

// @brief Execute one bounded CLI operation and retain cleanup failure status.
// @details Explicit arguments choose observation or counted canonical input.
// @return The process status is the first operation error, then the close error.
func main() {
	a := os.Args
	if len(a) != 3 || len(a[2]) == 0 || len(a[2]) > 255 {
		os.Exit(22)
	}
	var p, c uint32
	if a[1] == "state" {
		r := readOnce(a[2])
		p = r.Primary
		c = r.Cleanup
	} else if a[1] == "command" {
		r := commandOnce(a[2])
		p = r.Primary
		c = r.Cleanup
	} else {
		os.Exit(22)
	}
	if p == 0 {
		p = c
	}
	if p > 125 {
		p = 125
	}
	os.Exit(int(p))
}
