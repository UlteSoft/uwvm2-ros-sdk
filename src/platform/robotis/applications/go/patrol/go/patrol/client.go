//go:build ((wasip1 && wasm) || (tinygo && (wasm || tinygo.wasm))) && ros2 && !ros1

// SPDX-License-Identifier: Apache-2.0
// Package patrol adapts the pinned ROBOTIS Patrol client to finite Guest calls.
// The official client/server relation and differences are in PATROL_EXAMPLE.md.
// @file client.go
// @brief Preserve the complete robotis typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package patrol

import (
	"encoding/binary"
	"math"
	"strconv"
	"strings"
	"unicode/utf8"
)

// Goal is the complete original Patrol.Goal Vector3 value.
// @brief Preserve square/triangle mode, metres and float(integer count).
// @details Mode is 1 (square) or 2 (triangle); Distance is the original finite
// metre value and Count is a finite integer converted to float64. This value
// grants no action permission and does not validate native model/safety limits.
// @see ParseGoal Run
type Goal struct {
	Mode     float64
	Distance float64
	Count    float64
}

// Report retains every primary outcome and independently attempted role close.
// @brief Preserve complete feedback/result text and unknown goal delivery.
// @details Primary is the first numeric failure; 110 means the finite poll
// budget ended without a validated terminal result. Cleanup is in send,
// cancel-own, feedback, result role order; Attempted identifies actual closes.
// GoalID is the full accepted uint64; SentUnknown means a send was entered
// without a valid receipt. Neither condition permits replay or automatic cancel.
// Feedback/Result retain NUL-free UTF-8 original text of at most 256 bytes.
// TerminalKind 2/3/4 is committed only after full result decoding. Single caller.
// @see Run Goal
type Report struct {
	Primary      uint32
	Cleanup      [4]uint32
	Attempted    [4]bool
	GoalID       uint64
	SentUnknown  bool
	TerminalKind byte
	Feedback     []string
	Result       string
}

type role byte

const (
	sendRole role = iota
	cancelRole
	feedbackRole
	resultRole
)

// This application interface delegates only to the selected real shared Go or
// TinyGo owner. It defines no raw import, native socket or authority mechanism.
type transportOwner interface {
	request(role, []byte, uint32) ([]byte, uint32)
	close() uint32
}

func finiteDecimal(text string, integer bool) (float64, bool) {
	if len(text) == 0 || len(text) > 255 {
		return 0, false
	}
	at := 0
	if text[at] == '+' || text[at] == '-' {
		at++
	}
	digits := 0
	for at < len(text) && text[at] >= '0' && text[at] <= '9' {
		at++
		digits++
	}
	if !integer && at < len(text) && text[at] == '.' {
		at++
		for at < len(text) && text[at] >= '0' && text[at] <= '9' {
			at++
			digits++
		}
	}
	if digits == 0 {
		return 0, false
	}
	if !integer && at < len(text) && (text[at] == 'e' || text[at] == 'E') {
		at++
		if at < len(text) && (text[at] == '+' || text[at] == '-') {
			at++
		}
		exponentStart := at
		for at < len(text) && text[at] >= '0' && text[at] <= '9' {
			at++
		}
		if at == exponentStart {
			return 0, false
		}
	}
	if at != len(text) {
		return 0, false
	}
	value, err := strconv.ParseFloat(text, 64)
	if err != nil || math.IsInf(value, 0) || math.IsNaN(value) {
		return 0, false
	}
	if integer && value == 0 {
		value = 0 // Match float(int("-0")), not negative floating-point zero.
	}
	return value, true
}

// ParseGoal validates the bounded ASCII command domain before any capability open.
// @brief Convert s/t, finite metre distance and decimal integer count exactly once.
// @details Each numeric argument is at most 255 ASCII bytes; decimal distance
// permits an exponent, while count requires signed decimal digits. Nonfinite,
// whitespace, locale, hex and unrepresentable values are refused. Original
// Python interactive/unbounded-integer input is a documented narrower-domain gap.
// @param mode Exactly s (square) or t (triangle); x is handled by the CLI without open.
// @param distance Finite original metre value, without an inferred model limit.
// @param count Signed decimal integer converted to original float64 representation.
// @return Complete Goal and status 0, or zero Goal and invalid status 22.
// @see Goal EncodeGoal Run
func ParseGoal(mode, distance, count string) (Goal, uint32) {
	var goal Goal
	if mode == "s" {
		goal.Mode = 1
	} else if mode == "t" {
		goal.Mode = 2
	} else {
		return Goal{}, 22
	}
	var valid bool
	goal.Distance, valid = finiteDecimal(distance, false)
	if !valid {
		return Goal{}, 22
	}
	goal.Count, valid = finiteDecimal(count, true)
	if !valid {
		return Goal{}, 22
	}
	return goal, 0
}

// EncodeGoal preserves every field in the original canonical 24-byte value.
// @brief Encode the complete Vector3 without ROS activity or unit conversion.
// @details Rejects nonfinite fields, non-integer Count, and unsupported Mode.
// @param goal Borrowed value; distances remain metres and counts remain float64.
// @return Owned fixed 24-byte little-endian value and status 0, or status 22.
// @see Goal ParseGoal Run
func EncodeGoal(goal Goal) ([24]byte, uint32) {
	var output [24]byte
	values := [3]float64{goal.Mode, goal.Distance, goal.Count}
	if (goal.Mode != 1 && goal.Mode != 2) || math.Trunc(goal.Count) != goal.Count {
		return output, 22
	}
	for index, value := range values {
		if math.IsNaN(value) || math.IsInf(value, 0) {
			return [24]byte{}, 22
		}
		binary.LittleEndian.PutUint64(output[index*8:], math.Float64bits(value))
	}
	return output, 0
}

func originalText(bytes []byte) (string, uint32) {
	if len(bytes) < 4 {
		return "", 22
	}
	size := binary.LittleEndian.Uint32(bytes)
	if size > 256 || uint64(size)+4 != uint64(len(bytes)) ||
		!utf8.Valid(bytes[4:]) || strings.IndexByte(string(bytes[4:]), 0) >= 0 {
		return "", 22
	}
	return string(bytes[4:]), 0
}

// Run executes one full bounded original Patrol-client application sequence.
// @brief Open separate roles, send once, poll full feedback/result and close all roles.
// @details Requires actual ros2 shared Go/TinyGo imports and four independently
// granted aliases for the original Patrol resource/type. No alias grants are
// created. No native server wait, retry, automatic cancellation, native ROS node
// or physical stop is performed. A matching original server remains a separate
// cooperating program. All role storage and feedback capacity are reserved before
// send; every acquired role is closed once even after partial-open failure.
// Terminal ownership is committed only after exact ID/kind/text validation.
// @param aliases Distinct send/cancel-own/feedback/result aliases, each 1..255
// NUL-free UTF-8 bytes. The cancel-own role is never upgraded to cancel-any.
// @param goal Complete reviewed original Goal; encoded without field projection.
// @param polls Integer 1..4096 iterations, each at most one feedback/result RPC.
// @return Report with primary, every cleanup status, full ID, complete text and
// unresolved-send state. Numeric transport failures remain unchanged; no panic recovery.
// @see Goal ParseGoal EncodeGoal Report
func Run(aliases [4]string, goal Goal, polls int) (report Report) {
	bytes, status := EncodeGoal(goal)
	if status != 0 || polls < 1 || polls > 4096 {
		report.Primary = 22
		return
	}
	for index, alias := range aliases {
		if len(alias) == 0 || len(alias) > 255 || !utf8.ValidString(alias) || strings.IndexByte(alias, 0) >= 0 {
			report.Primary = 22
			return
		}
		for earlier := 0; earlier < index; earlier++ {
			if aliases[earlier] == alias {
				report.Primary = 22
				return
			}
		}
	}
	var owners [4]transportOwner
	report.Feedback = make([]string, 0, polls)
	defer func() {
		for index := 3; index >= 0; index-- {
			if owners[index] != nil {
				report.Attempted[index] = true
				report.Cleanup[index] = owners[index].close()
			}
		}
	}()
	for index, alias := range aliases {
		owners[index], status = openOwner(alias)
		if status != 0 {
			report.Primary = status
			return
		}
	}
	report.SentUnknown = true
	reply, status := owners[0].request(sendRole, bytes[:], 8)
	if status != 0 {
		report.Primary = status
		return
	}
	if len(reply) != 8 || binary.LittleEndian.Uint64(reply) == 0 {
		report.Primary = 22
		return
	}
	report.GoalID = binary.LittleEndian.Uint64(reply)
	report.SentUnknown = false
	var id [8]byte
	binary.LittleEndian.PutUint64(id[:], report.GoalID)
	for iteration := 0; iteration < polls; iteration++ {
		feedback, code := owners[2].request(feedbackRole, id[:], 268)
		if code == 0 {
			if len(feedback) < 8 || binary.LittleEndian.Uint64(feedback) != report.GoalID {
				report.Primary = 22
				return
			}
			text, code := originalText(feedback[8:])
			if code != 0 {
				report.Primary = code
				return
			}
			report.Feedback = append(report.Feedback, text)
		} else if code != 11 {
			report.Primary = code
			return
		}
		result, code := owners[3].request(resultRole, id[:], 269)
		if code == 11 {
			continue
		}
		if code != 0 {
			report.Primary = code
			return
		}
		if len(result) < 9 || binary.LittleEndian.Uint64(result) != report.GoalID || result[8] < 2 || result[8] > 4 {
			report.Primary = 22
			return
		}
		text, code := originalText(result[9:])
		if code != 0 {
			report.Primary = code
			return
		}
		report.TerminalKind, report.Result = result[8], text
		return
	}
	report.Primary = 110
	return
}
