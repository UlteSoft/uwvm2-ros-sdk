// @file construction.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

// ConstructionError preserves a failed factory operation and every failed
// rollback notification, in attempted order. Local owners are already retired;
// callers must not retry cleanup after a transport error. Successful rollback
// keeps the original error unchanged instead of introducing a wrapper.
type ConstructionError struct {
	Primary error
	Cleanup []error
}

func (e *ConstructionError) Error() string {
	return "roswasm: construction failed; inspect Primary and Cleanup"
}

// Unwrap exposes the original failure. On TinyGo use ErrorCode rather than
// errors.As, whose reflective implementation is not supported by every target.
func (e *ConstructionError) Unwrap() error { return e.Primary }

// ErrorCode returns a ROS status without reflection. It follows at most 32
// ConstructionError primary links, never cleanup outcomes or foreign wrappers.
// Unknown errors, nil *Error values and cyclic/deeper chains return Invalid.
// A nil error returns Success. This helper does not make a host call.
func ErrorCode(err error) uint32 {
	for depth := 0; depth < 32; depth++ {
		switch value := err.(type) {
		case nil:
			return Success
		case Error:
			return value.Code
		case *Error:
			if value != nil {
				return value.Code
			}
			return Invalid
		case *ConstructionError:
			if value == nil {
				return Invalid
			}
			err = value.Primary
		default:
			return Invalid
		}
	}
	return Invalid
}

func constructionFailure(primary error, outcomes ...error) error {
	var failed []error
	for _, outcome := range outcomes {
		if outcome != nil {
			failed = append(failed, outcome)
		}
	}
	if len(failed) == 0 {
		return primary
	}
	return &ConstructionError{Primary: primary, Cleanup: failed}
}
