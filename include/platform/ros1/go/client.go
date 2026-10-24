//go:build wasip1 && wasm

// @file client.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

// Package roswasm provides bounded conveniences over one numeric ROS backend.
// Selecting a language/backend or constructing a local owner grants nothing.
package roswasm

import (
	"encoding/binary"
	"runtime"
	"sync/atomic"
	"unicode/utf8"
	"unsafe"
)

const (
	OK              uint32 = 0
	BadHandle       uint32 = 9
	Again           uint32 = 11
	Denied          uint32 = 13
	Busy            uint32 = 17
	Invalid         uint32 = 22
	TooLarge        uint32 = 90
	Unsupported     uint32 = 95
	MaxRequestBytes uint32 = 4193786
	MaxOutputBytes  uint32 = 4194304
)

type ownerState struct {
	handle atomic.Uint64
	busy   atomic.Bool
}

// Owner copies share retirement and a nonblocking operation lease. Concurrent
// or reentrant use returns Busy; it never waits, retries or creates authority.
// No finalizer is installed. Keep request bytes unchanged until a call returns.
type Owner struct{ state *ownerState }

func (o *Owner) acquire() (*ownerState, uint64, uint32) {
	if o == nil || o.state == nil {
		return nil, 0, BadHandle
	}
	s := o.state
	if !s.busy.CompareAndSwap(false, true) {
		return nil, 0, Busy
	}
	h := s.handle.Load()
	if h == 0 {
		s.busy.Store(false)
		return nil, 0, BadHandle
	}
	return s, h, OK
}

// Pin the backing object before converting its address to an integer. Integer
// offsets are not Go roots. The same Pinner survives the synchronous import.
func pinnedOffset(p *runtime.Pinner, b []byte) uint64 {
	if len(b) == 0 {
		return 0
	}
	p.Pin(&b[0])
	return uint64(uintptr(unsafe.Pointer(&b[0])))
}

// Open reserves ownership storage before its one import. Aliases are strict
// UTF-8, nonempty, NUL-free and at most255 bytes. No native resource is inferred.
func Open(alias string) (*Owner, uint32) {
	if len(alias) == 0 || len(alias) > 255 || !utf8.ValidString(alias) {
		return nil, Invalid
	}
	for _, c := range alias {
		if c == 0 {
			return nil, Invalid
		}
	}
	input := []byte(alias)
	var slot [8]byte
	o := &Owner{state: &ownerState{}}
	var pin runtime.Pinner
	defer pin.Unpin()
	a, z := pinnedOffset(&pin, input), pinnedOffset(&pin, slot[:])
	code := CapabilityOpen(0, a, uint64(len(input)), z)
	runtime.KeepAlive(input)
	runtime.KeepAlive(&slot)
	if code != OK {
		return nil, code
	}
	h := binary.LittleEndian.Uint64(slot[:])
	if h == 0 {
		return nil, Invalid
	}
	o.state.handle.Store(h)
	return o, OK
}

func (o *Owner) retire(revoke bool) uint32 {
	s, h, code := o.acquire()
	if code != OK {
		return code
	}
	defer s.busy.Store(false)
	s.handle.Store(0) // Retire every copy before the possibly effectful import.
	if revoke {
		return CapabilityRevoke(h)
	}
	return CapabilityClose(h)
}

// Close retires all local copies once, even if Host notification fails.
func (o *Owner) Close() uint32 { return o.retire(false) }

// Revoke is destructive alias revocation, independently checked by the Host.
func (o *Owner) Revoke() uint32 { return o.retire(true) }

func (o *Owner) write(payload []byte, log bool) uint32 {
	if uint64(len(payload)) > uint64(MaxRequestBytes) {
		return TooLarge
	}
	s, h, code := o.acquire()
	if code != OK {
		return code
	}
	defer s.busy.Store(false)
	var pin runtime.Pinner
	defer pin.Unpin()
	a := pinnedOffset(&pin, payload)
	if log {
		code = LogWrite(h, 0, a, uint64(len(payload)))
	} else {
		code = TopicPublish(h, 0, a, uint64(len(payload)))
	}
	runtime.KeepAlive(payload)
	return code
}

// Publish sends complete already-encoded canonical bytes once. No timeout replay.
func (o *Owner) Publish(payload []byte) uint32 { return o.write(payload, false) }

// PublishString retains the existing4096-byte String convenience bound.
func (o *Owner) PublishString(value string) uint32 {
	if len(value) > 4096 {
		return Invalid
	}
	b, code := EncodeString(value)
	if code != OK {
		return code
	}
	return o.Publish(b)
}

// LogString uses a separately granted logger alias, not stdout or a Host file.
func (o *Owner) LogString(value string) uint32 {
	b, code := EncodeString(value)
	if code != OK {
		return code
	}
	return o.write(b, true)
}

func (o *Owner) activate(operation uint8) uint32 {
	s, h, code := o.acquire()
	if code != OK {
		return code
	}
	defer s.busy.Store(false)
	switch operation {
	case 0:
		return TopicSubscribe(h)
	case 1:
		return ServiceAdvertise(h)
	case 2:
		return subscribeParameterEvents(h)
	default:
		return Invalid
	}
}
func (o *Owner) Subscribe() uint32                { return o.activate(0) }
func (o *Owner) AdvertiseService() uint32         { return o.activate(1) }
func (o *Owner) SubscribeParameterEvents() uint32 { return o.activate(2) }

// Result owns only a successful complete output. On every error Data is nil;
// error90 exposes Required only if the Host overwrote its all-ones sentinel.
// A legacy Poll may already have consumed an event. Never automatically retry.
type Result struct {
	Data        []byte
	Required    uint64
	HasRequired bool
}

func finish(code uint32, slot [8]byte, out []byte) (Result, uint32) {
	n := binary.LittleEndian.Uint64(slot[:])
	if code == OK {
		if n == ^uint64(0) || n > uint64(len(out)) {
			return Result{}, Invalid
		}
		return Result{Data: out[:n:n]}, OK
	}
	if code == TooLarge && n != ^uint64(0) {
		return Result{Required: n, HasRequired: true}, code
	}
	return Result{}, code
}

func (o *Owner) receive(capacity uint32, versioned bool) (Result, uint32) {
	if capacity > MaxOutputBytes {
		return Result{}, TooLarge
	}
	s, h, code := o.acquire()
	if code != OK {
		return Result{}, code
	}
	defer s.busy.Store(false)
	out := make([]byte, capacity) // All fallible storage precedes the import.
	slot := [8]byte{255, 255, 255, 255, 255, 255, 255, 255}
	var pin runtime.Pinner
	defer pin.Unpin()
	b, z := pinnedOffset(&pin, out), pinnedOffset(&pin, slot[:])
	if versioned {
		code = EventPollV1(h, 0, b, uint64(capacity), z)
	} else {
		code = EventPoll(h, 0, b, uint64(capacity), z)
	}
	runtime.KeepAlive(out)
	runtime.KeepAlive(&slot)
	return finish(code, slot, out)
}

// Poll copies one legacy subscription/service/Action event. Again is idle.
func (o *Owner) Poll(capacity uint32) (Result, uint32) { return o.receive(capacity, false) }

// PollEvent returns complete versioned event bytes. Its envelope still needs
// the selected source/observer/instance/correlation validator.
func (o *Owner) PollEvent(capacity uint32) (Result, uint32) { return o.receive(capacity, true) }

// Request invokes one exact named operation with canonical borrowed request
// bytes and private output storage. The Host checks role/type/ownership/quotas.
// Absent-backend operations refuse95 before any import or allocation.
func (o *Owner) Request(op Operation, request []byte, capacity uint32) (Result, uint32) {
	if op < OpServiceCall || op > lastOperation {
		return Result{}, Invalid
	}
	if !supports(op) {
		return Result{}, Unsupported
	}
	if uint64(len(request)) > uint64(MaxRequestBytes) || capacity > MaxOutputBytes {
		return Result{}, TooLarge
	}
	s, h, code := o.acquire()
	if code != OK {
		return Result{}, code
	}
	defer s.busy.Store(false)
	out := make([]byte, capacity)
	slot := [8]byte{255, 255, 255, 255, 255, 255, 255, 255}
	var pin runtime.Pinner
	defer pin.Unpin()
	a, b, z := pinnedOffset(&pin, request), pinnedOffset(&pin, out), pinnedOffset(&pin, slot[:])
	code = invoke(op, h, 0, a, uint64(len(request)), b, uint64(capacity), z)
	runtime.KeepAlive(request)
	runtime.KeepAlive(out)
	runtime.KeepAlive(&slot)
	return finish(code, slot, out)
}

func acquirePair(a, b *Owner) (*ownerState, *ownerState, uint64, uint64, uint32) {
	if a == nil || b == nil || a.state == nil || b.state == nil {
		return nil, nil, 0, 0, BadHandle
	}
	if a.state == b.state {
		return nil, nil, 0, 0, Invalid
	}
	x, h, code := a.acquire()
	if code != OK {
		return nil, nil, 0, 0, code
	}
	y, k, code := b.acquire()
	if code != OK {
		x.busy.Store(false)
		return nil, nil, 0, 0, code
	}
	return x, y, h, k, OK
}

// Watch pairs independent already-granted owners. Same-owner copies refuse.
// This supplies no source activation, role upgrade or native identity proof.
func (o *Owner) Watch(source *Owner, correlation uint64) uint32 {
	x, y, h, k, code := acquirePair(o, source)
	if code != OK {
		return code
	}
	defer x.busy.Store(false)
	defer y.busy.Store(false)
	return EventWatch(h, k, correlation)
}

// Readiness is a snapshot, never an admission reservation or authority.
type Readiness struct{ Events, NextBytes, AdmissionSlots, AdmissionBytes uint64 }

func (o *Owner) Ready() (Readiness, uint32) {
	s, h, code := o.acquire()
	if code != OK {
		return Readiness{}, code
	}
	defer s.busy.Store(false)
	var out [32]byte
	var pin runtime.Pinner
	defer pin.Unpin()
	code = EventReady(h, 0, pinnedOffset(&pin, out[:]))
	runtime.KeepAlive(&out)
	if code != OK {
		return Readiness{}, code
	}
	return Readiness{binary.LittleEndian.Uint64(out[0:8]), binary.LittleEndian.Uint64(out[8:16]), binary.LittleEndian.Uint64(out[16:24]), binary.LittleEndian.Uint64(out[24:32])}, OK
}

// Submit uses independent service.call and event.observe owners. A returned
// request ID is not a capability handle. Failure/timeout never causes replay.
func (o *Owner) Submit(observer *Owner, request []byte) (uint64, uint32) {
	if uint64(len(request)) > uint64(MaxRequestBytes) {
		return 0, TooLarge
	}
	x, y, h, k, code := acquirePair(o, observer)
	if code != OK {
		return 0, code
	}
	defer x.busy.Store(false)
	defer y.busy.Store(false)
	var slot [8]byte
	var pin runtime.Pinner
	defer pin.Unpin()
	a, z := pinnedOffset(&pin, request), pinnedOffset(&pin, slot[:])
	code = ServiceSubmit(h, k, 0, a, uint64(len(request)), z)
	runtime.KeepAlive(request)
	runtime.KeepAlive(&slot)
	if code != OK {
		return 0, code
	}
	id := binary.LittleEndian.Uint64(slot[:])
	if id == 0 {
		return 0, Invalid
	}
	return id, OK
}
