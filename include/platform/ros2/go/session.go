//go:build wasip1 && wasm

// @file session.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

import "sync/atomic"

type sessionState struct {
	busy   atomic.Bool
	closed bool
	owners []*ownerState
}

// Session bounds local bookkeeping and attempts every owned close in reverse.
// Copies share state. It grants nothing and starts no goroutine or finalizer.
type Session struct{ state *sessionState }

func NewSession(maximum uint32) (*Session, uint32) {
	if maximum == 0 || maximum > 1024 {
		return nil, Invalid
	}
	return &Session{state: &sessionState{owners: make([]*ownerState, maximum)}}, OK
}

func (s *Session) acquire() (*sessionState, uint32) {
	if s == nil || s.state == nil {
		return nil, BadHandle
	}
	p := s.state
	if !p.busy.CompareAndSwap(false, true) {
		return nil, Busy
	}
	if p.closed {
		p.busy.Store(false)
		return nil, BadHandle
	}
	return p, OK
}

// Open reserves one existing bookkeeping slot before the actual capability open.
// A failed open changes no slot. A close still in progress retains its slot.
func (s *Session) Open(alias string) (*Owner, uint32) {
	p, code := s.acquire()
	if code != OK {
		return nil, code
	}
	defer p.busy.Store(false)
	index := -1
	for i, o := range p.owners {
		if o == nil || (o.handle.Load() == 0 && !o.busy.Load()) {
			index = i
			break
		}
	}
	if index < 0 {
		return nil, TooLarge
	}
	owner, code := Open(alias)
	if code != OK {
		return nil, code
	}
	p.owners[index] = owner.state
	return owner, OK
}

// Cleanup records each storage slot separately. Attempted=false means no Host
// close occurred; a zero Code on an unused slot is not a successful ROS call.
type Cleanup struct {
	Index     uint32
	Attempted bool
	Code      uint32
}

// Close first acquires all operation leases, or returns Busy without effects.
// It reserves result/lease storage before imports, retires every live owner,
// preserves every Host error and never retries a failed close.
func (s *Session) Close() ([]Cleanup, uint32) {
	p, code := s.acquire()
	if code != OK {
		return nil, code
	}
	defer p.busy.Store(false)
	results := make([]Cleanup, len(p.owners))
	held := make([]*ownerState, 0, len(p.owners))
	for _, o := range p.owners {
		if o == nil {
			continue
		}
		if !o.busy.CompareAndSwap(false, true) {
			for _, q := range held {
				q.busy.Store(false)
			}
			return nil, Busy
		}
		held = append(held, o)
	}
	defer func() {
		for _, o := range held {
			o.busy.Store(false)
		}
	}()
	p.closed = true
	for i := len(p.owners) - 1; i >= 0; i-- {
		results[i].Index = uint32(i)
		if o := p.owners[i]; o != nil {
			h := o.handle.Swap(0)
			if h != 0 {
				results[i].Attempted = true
				results[i].Code = CapabilityClose(h)
			}
		}
	}
	return results, OK
}
