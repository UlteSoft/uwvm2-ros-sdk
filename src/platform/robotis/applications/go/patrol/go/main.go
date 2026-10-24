//go:build ((wasip1 && wasm) || (tinygo && (wasm || tinygo.wasm))) && ros2 && !ros1

// SPDX-License-Identifier: Apache-2.0
// @file main.go
// @brief Preserve the complete robotis typed controller or selected profile.
// @details Canonical bounds and numeric errors come from the shared SDK.
// No model, native transport or runtime grant is inferred by this source.
package main

import (
	"fmt"
	"os"
	"strconv"
	"uwvm2.local/turtlebot3patrol/patrol"
)

func program(arguments []string) uint32 {
	if len(arguments) == 4 && arguments[0] == "encode" {
		goal, code := patrol.ParseGoal(arguments[1], arguments[2], arguments[3])
		if code != 0 {
			return code
		}
		bytes, code := patrol.EncodeGoal(goal)
		if code != 0 {
			return code
		}
		used, errorValue := os.Stdout.Write(bytes[:])
		if errorValue != nil || used != len(bytes) {
			return 5
		}
		return 0
	}
	if len(arguments) != 8 {
		return 22
	}
	if arguments[4] == "x" {
		return 0
	}
	goal, code := patrol.ParseGoal(arguments[4], arguments[5], arguments[6])
	if code != 0 {
		return code
	}
	if len(arguments[7]) == 0 || len(arguments[7]) > 4 {
		return 22
	}
	for _, item := range arguments[7] {
		if item < '0' || item > '9' {
			return 22
		}
	}
	polls, errorValue := strconv.Atoi(arguments[7])
	if errorValue != nil || polls < 1 || polls > 4096 {
		return 22
	}
	aliases := [4]string{arguments[0], arguments[1], arguments[2], arguments[3]}
	report := patrol.Run(aliases, goal, polls)
	primary := report.Primary
	if report.GoalID != 0 {
		if _, errorValue := fmt.Fprintf(os.Stdout, "accepted goal=%d\n", report.GoalID); errorValue != nil && primary == 0 {
			primary = 5
		}
	}
	for _, text := range report.Feedback {
		if _, errorValue := fmt.Fprintf(os.Stdout, "feedback[%d]: %s\n", len(text), text); errorValue != nil && primary == 0 {
			primary = 5
		}
	}
	if report.TerminalKind != 0 {
		if _, errorValue := fmt.Fprintf(os.Stdout, "terminal kind=%d goal=%d\nresult[%d]: %s\n", report.TerminalKind, report.GoalID, len(report.Result), report.Result); errorValue != nil && primary == 0 {
			primary = 5
		}
	} else if report.GoalID != 0 || report.SentUnknown {
		fmt.Fprintf(os.Stderr, "goal=%d send_unknown=%t outcome unresolved; no replay or automatic cancel\n", report.GoalID, report.SentUnknown)
	}
	fmt.Fprintf(os.Stderr, "primary=%d cleanup=%v attempted=%v\n", primary, report.Cleanup, report.Attempted)
	for index, cleanup := range report.Cleanup {
		if report.Attempted[index] && primary == 0 && cleanup != 0 {
			primary = cleanup
		}
	}
	return primary
}

// @brief Execute one bounded CLI operation and retain cleanup failure status.
// @details Explicit arguments choose observation or counted canonical input.
// @return The process status is the first operation error, then the close error.
func main() {
	code := program(os.Args[1:])
	if code > 125 {
		code = 125
	}
	os.Exit(int(code))
}
