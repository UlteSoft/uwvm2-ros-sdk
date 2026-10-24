//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1 && rmw_service_v1

// @file main.go
// @brief Exercise the selected source-language SDK operation for nvidia-isaac-sim.
// @details Build through this example's Xmake description. Runtime and ROS authority must be supplied explicitly
// by the deployment; source availability does not establish successful native communication.

// Actual full two-phase source application, using the language's platform SDK.
// argv: call observer availability nonce poll_work_budget request_qos response_qos
package main

import (
	"fmt"
	"os"
	"strings"
	clock "uwvm2.local/nvidia-isaac-sim-clock"
	ros "uwvm2.local/roswasm"
	owned "uwvm2.local/roswasm/rmwservice"
)

func failure(code uint32) error { return ros.Error{Code: code} }

type output struct{ first error }

func (o *output) write(format string, values ...any) error {
	text := fmt.Sprintf(format, values...)
	var err error
	if len(text) > 1048576 {
		err = failure(90)
	} else {
		for at := 0; at < len(text); {
			n, actual := os.Stdout.Write([]byte(text[at:]))
			if actual != nil {
				err = actual
				break
			}
			if n <= 0 || n > len(text)-at {
				err = failure(5)
				break
			}
			at += n
		}
	}
	if o.first == nil {
		o.first = err
	}
	return err
}
func decimal(text string) (uint64, error) {
	var n uint64
	if len(text) == 0 {
		return 0, failure(22)
	}
	for i := range text {
		c := text[i]
		if c < '0' || c > '9' || n > (^uint64(0)-uint64(c-'0'))/10 {
			return 0, failure(22)
		}
		n = n*10 + uint64(c-'0')
	}
	return n, nil
}
func qos(text string) (owned.QoS, error) {
	var out owned.QoS
	fields := strings.Split(text, ",")
	if len(fields) != 12 {
		return out, failure(22)
	}
	var n [12]uint64
	for i, s := range fields {
		v, err := decimal(s)
		if err != nil {
			return out, err
		}
		n[i] = v
	}
	for _, v := range n[:4] {
		if v < 1 || v > 2 {
			return out, failure(22)
		}
	}
	if n[11] > 1 || (n[0] == 1 && n[4] == 0) || n[6] >= 1000000000 || n[8] >= 1000000000 || n[10] >= 1000000000 {
		return out, failure(22)
	}
	return owned.QoS{History: uint32(n[0]), Reliability: uint32(n[1]), Durability: uint32(n[2]), Liveliness: uint32(n[3]),
		Depth:    n[4],
		Deadline: owned.Duration{Seconds: n[5], Nanoseconds: n[6]}, Lifespan: owned.Duration{Seconds: n[7],
			Nanoseconds: n[8]},
		Lease: owned.Duration{Seconds: n[9], Nanoseconds: n[10]}, AvoidNamespace: n[11] != 0}, nil
}
func wait(s *clock.Session, work uint32, out *output) error {
	for i := uint32(0); i < work; i++ {
		value, err := s.Poll()
		if e, ok := err.(ros.Error); ok && e.Code == 11 {
			continue
		}
		if err != nil {
			return err
		}
		// %+v includes ALL response and same-take metadata fields, not markers.
		return out.write("actual response=%+v actual metadata=%+v\n", value.Response, value.Metadata)
	}
	out.write("work budget exhausted; local abandon=%v; native effects uncertain\n", s.AbandonPending())
	return failure(90)
}
func run() (primary error) {
	out := &output{}
	if len(os.Args) != 8 {
		return failure(22)
	}
	nonce, err := decimal(os.Args[4])
	if err != nil {
		return err
	}
	work, err := decimal(os.Args[5])
	if err != nil {
		return err
	}
	if work == 0 || work > 65536 {
		return failure(22)
	}
	first, err := qos(os.Args[6])
	if err != nil {
		return err
	}
	second, err := qos(os.Args[7])
	if err != nil {
		return err
	}
	s, err := clock.New(nonce)
	if err != nil {
		return err
	}
	defer func() {
		if primary != nil {
			if _, e := s.CancelNative(); e == nil {
				out.write("explicit native cancellation=%v\n", wait(s, uint32(work), out))
			} else {
				out.write("native cancellation not acknowledged: %v\n", e)
			}
		}
		closed := s.Close()
		if primary == nil {
			primary = closed
		}
		diagnostic, diagnosticError := s.Diagnostic()
		if primary == nil {
			primary = diagnosticError
		}
		last, lastError := s.LastResponse()
		out.write("latest complete actual reply (may be rejected)=%+v error=%v\n", last, lastError)
		control, controlError := s.LastControl()
		out.write("latest actual resource control=%+v error=%v\n", control, controlError)
		out.write(
			"primary=%v close=%v independent_cleanup=%v full_transport_diagnostics=%+v diagnostic_error=%v first_output_error=%v\n",
			primary, closed, s.CleanupError(), diagnostic, diagnosticError, out.first,
		)
		if primary == nil {
			primary = out.first
		}
	}()
	receipt, err := s.Connect(owned.ClientAliases{Call: os.Args[1], Observer: os.Args[2], Availability: os.Args[3]},
		[2]owned.QoS{first, second}, 1000000)
	if err != nil {
		return err
	}
	if err = out.write("actual full receipt=%+v\n", *receipt); err != nil {
		return err
	}
	if _, err = s.Start(); err != nil {
		return err
	}
	if err = wait(s, uint32(work), out); err != nil {
		return err
	}
	for phase := uint8(0); phase < 2; phase++ {
		for frame := uint32(0); frame < 20; frame++ {
			if _, err = s.Step(phase, frame); err != nil {
				return err
			}
			if err = wait(s, uint32(work), out); err != nil {
				return err
			}
		}
	}
	if _, err = s.Finish(); err != nil {
		return err
	}
	return wait(s, uint32(work), out)
}
func main() {
	if err := run(); err != nil {
		out := &output{}
		out.write("clock-program failure=%v\n", err)
		os.Exit(1)
	}
}
