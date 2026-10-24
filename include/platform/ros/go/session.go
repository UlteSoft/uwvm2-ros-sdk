//go:build wasip1 && wasm

package roswasm

import "sync/atomic"

type sessionState struct {
	busy   atomic.Bool
	closed bool
	owners []*ownerState
}

// Session bounds local bookkeeping and attempts every owned close in reverse.
// Copies share state. It grants nothing and starts no goroutine or finalizer.
// @brief Shared bounded bookkeeping for explicitly opened original owner generations.
// @details Copies share one nonblocking lease, closed flag and fixed slot array.
// A retired owner slot becomes reusable only after its operation lease ends;
// earlier Owner copies remain stale. Allocation panics are not checked statuses.
// Session construction adds no native context, alias, thread or finalizer.
// @permissions Each Open still requires its own exact trusted Host alias grant.
// @see NewSession; Session.Open; Session.Close; Cleanup
type Session struct{ state *sessionState }

// NewSession allocates a fixed local owner-slot array without importing a Host operation.
// @brief Construct an empty bounded ownership group before opening any capability.
// @details Allocation occurs immediately; no slot reserves a Host resource or quota.
// The returned pointer and its copies share the same bookkeeping until checked Close.
// @param[in] maximum Explicit slot count in the inclusive range 1..1024.
// @return New Session and OK, or nil and Invalid for an out-of-range count.
// Runtime allocation failure can panic and is not represented as a uint32 status.
// @see Session; Session.Open; Session.Close
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
// @brief Open one exact granted alias into this shared bounded ownership group.
// @details Holds the Session lease through alias validation and the synchronous
// original open. Only an actually successful nonzero generation enters the slot;
// no local slot or alias creates a grant, reopens an old owner or retries a send.
// @param[in] s Live Session whose copies share capacity and retirement state.
// @param[in] alias Exact nonempty valid UTF-8 alias, at most 255 bytes, without NUL.
// @return New Owner and OK; nil with TooLarge when all slots remain occupied,
// Busy/BadHandle for local state, or the exact Open validation/Host refusal.
// @permissions Exact current-Instance/backend alias grant supplied by the Host.
// @see Open; Owner.Close; Session.Close; Cleanup
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
// @brief Independent per-slot close journal from one completed Session.Close pass.
// @details Result order is slot order even though native close calls run in
// reverse. Public construction alone attests to no effect or successful cleanup.
// Preserve each attempted close status separately from an earlier operation error.
// @see Session.Close; Owner.Close; Cleanup.Attempted
type Cleanup struct {
	// Index identifies the original fixed bookkeeping slot.
	// @brief Zero-based slot index in the Session's original capacity.
	// @details It is neither a handle nor the ordinal order of native close calls.
	// @see NewSession; Session.Close
	Index uint32
	// Attempted states whether this slot issued its one original close import.
	// @brief True only when a retained nonzero generation was retired and notified.
	// @details False covers unused slots and already locally retired owners; Code's
	// zero value then records no Host success. A true value does not imply Code is OK.
	// @see Cleanup.Code; Owner.Close; Session.Close
	Attempted bool
	// Code preserves this attempted close's original unsigned result.
	// @brief Independent actual close status, meaningful when Attempted is true.
	// @details Failure does not restore the retired generation or authorize a retry.
	// @see Cleanup.Attempted; Session.Close; BadHandle
	Code uint32
}

// Close first acquires all operation leases, or returns Busy without effects.
// It reserves result/lease storage before imports, retires every live owner,
// preserves every Host error and never retries a failed close.
// @brief Close this Session once and journal every original retained owner slot.
// @details Allocates journal/lease storage and obtains every retained owner lease
// before marking the Session closed. If any lease is busy it releases acquired
// leases with no retirement or import. Otherwise each live owner is atomically
// retired immediately before its one close, from the highest slot downward.
// All returned Owner copies remain stale even when a native close fails. Runtime
// traps/panics do not promise completion of the remaining native notifications.
// @param[in] s Live shared Session to retire; concurrent/reentrant entry returns Busy.
// @return Slot-ordered owned journal and OK after all ordinary close returns;
// individual journal Code values can still be nonzero. Nil with Busy/BadHandle
// means the pass did not start. Calling again after completion returns BadHandle.
// @see Cleanup; Owner.Close; Session.Open; Session
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
