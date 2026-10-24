//go:build wasip1 && wasm

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
	// OK is the original unsigned success status.
	// @brief Numeric success status 0; inspect output only after this result.
	// @details A directly constructed value or numeric copy does not prove a Host call.
	// @see Result; Owner.Request; Owner.Poll
	OK uint32 = 0
	// BadHandle is the original stale, foreign or absent owner refusal.
	// @brief Unsigned invalid-owner status 9.
	// @details A retired local owner is never reopened or regranted implicitly.
	// @see Owner.Close; Owner.Revoke; Open
	BadHandle uint32 = 9
	// Again preserves an actual idle or quota/admission refusal.
	// @brief Original unsigned idle/quota status 11.
	// @details A poll refusal is not a default event or permission to busy-loop/replay.
	// @see Owner.Poll; Owner.PollEvent; Owner.Ready
	Again uint32 = 11
	// Denied preserves the actual missing-authority result.
	// @brief Original unsigned permission-refusal status 13.
	// @details Backend/language selection, values and aliases create no trusted grants.
	// @see Open; Owner.Request; Owner.Watch
	Denied uint32 = 13
	// Busy is the local nonblocking lease/reentry refusal.
	// @brief Unsigned local busy status 17.
	// @details The wrapper never waits for a leased owner or substitutes a new one;
	// any original Host status with the same numeric value is also preserved.
	// @see Owner; Owner.Close; Owner.Watch
	Busy uint32 = 17
	// Invalid is the checked canonical/input-contract refusal.
	// @brief Unsigned invalid-input/status-output refusal 22.
	// @details Invalid successful lengths and zero returned IDs do not expose defaults.
	// @see Owner.Request; Owner.Submit; Open
	Invalid uint32 = 22
	// TooLarge preserves an actual size/capacity/admission refusal.
	// @brief Original unsigned capacity status 90.
	// @details A required extent is known only when the length sentinel was overwritten.
	// @see Result.HasRequired; Result.Required; Owner.Poll
	TooLarge uint32 = 90
	// Unsupported preserves a missing backend/native-feature result.
	// @brief Original unsigned unsupported status 95.
	// @details No other clock, target, library, Host implementation or ROS backend is selected.
	// @see Owner.Request; Operation
	Unsupported uint32 = 95
	// MaxRequestBytes is the inclusive original canonical request-data ceiling.
	// @brief Maximum request data is exactly 4193786 bytes.
	// @details Fits the 4 MiB IPC envelope; the actual schema/alias can allow less.
	// It allocates no memory or native operation quota.
	// @see Owner.Request; Owner.Publish; MaxOutputBytes
	MaxRequestBytes uint32 = 4193786
	// MaxOutputBytes is the inclusive checked output-allocation ceiling.
	// @brief Maximum caller-requested output is exactly 4194304 bytes.
	// @details Providing capacity reserves no event, slot, quota or operation right.
	// @see Owner.Request; Owner.Poll; MaxRequestBytes
	MaxOutputBytes uint32 = 4194304
)

type ownerState struct {
	handle atomic.Uint64
	busy   atomic.Bool
}

// Owner copies share retirement and a nonblocking operation lease. Concurrent
// or reentrant use returns Busy; it never waits, retries or creates authority.
// No finalizer is installed. Keep request bytes unchanged until a call returns.
// @brief Shared Go view of one same-Instance/backend opaque handle generation.
// @details Copies share atomic retirement and one nonblocking operation/callback
// lease. The SDK starts no goroutine, native callback, clock or executor thread.
// Actual Go runtime startup needs its separately selected WASI/runtime closure.
// Pointer buffers are pinned/kept alive through synchronous imports; integer
// offsets are not GC roots. Allocation/runtime panics are not uint32 errors and
// do not promise trap-time cleanup. Close explicitly and preserve primary errors.
// @permissions Every exact alias/operation/type/direction/quota/deadline grant
// comes independently from the trusted current Host; this type supplies none.
// @see Open; Owner.Close; Owner.Revoke; Owner.Request
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
// UTF-8, nonempty, NUL-free and at most 255 bytes. No native resource is inferred.
// @brief Open one exact alias already granted to the current Guest Instance.
// @details Creates bookkeeping before its one memory-zero import, pins exact
// input/slot storage and validates the actual nonzero full u64 handle.
// @param[in] alias Explicit nonempty valid UTF-8 policy alias, at most 255 bytes, no NUL.
// @return New shared Owner and OK, or nil and original Host status/Invalid for
// alias or zero-handle refusal. No default alias or retry owner is fabricated.
// @permissions Exact current-Instance/backend alias grant supplied independently.
// @see Owner.Close; Owner.Revoke; Owner
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
// @brief Permanently retire the shared local generation before one raw close.
// @details Every copy observes handle 0 before the Host result. Nonzero does
// not restore ownership, reset a generation or permit an implicit cleanup retry.
// @param[in] o Existing shared view, borrowed through synchronous retirement.
// @return Original unsigned close status, Busy or BadHandle; OK is actual success.
// @see Owner.Revoke; Owner; BadHandle
func (o *Owner) Close() uint32 { return o.retire(false) }

// Revoke is destructive alias revocation, independently checked by the Host.
// @brief Permanently retire this shared generation and explicitly revoke it.
// @details Keeps all copies stale after failure; no reopen/regrant or replacement
// handle is created. Preserve revocation status separately from earlier errors.
// Actual revocation can invalidate sibling handles of this alias in the current
// principal; it is neither a physical controller stop nor Host policy administration.
// @param[in] o Original shared view, borrowed through synchronous return.
// @return Original unsigned revoke status, Busy or BadHandle.
// @see Owner.Close; Open; Owner
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
// @brief Publish one complete original canonical message through this exact owner.
// @details Pins/retains the immutable payload through one original topic_publish
// import. A Go byte slice establishes no native schema, publisher or authority.
// @param[in] o Existing independently granted exact publisher owner.
// @param[in] payload Complete original message, at most MaxRequestBytes, stable until return.
// @return Original unsigned Host status or TooLarge, Busy or BadHandle.
// @permissions Exact publish alias/type/direction/quota/deadline grant.
// @see Owner.PublishString; Owner.Request; MaxRequestBytes
func (o *Owner) Publish(payload []byte) uint32 { return o.write(payload, false) }

// PublishString retains the existing 4096-byte String convenience bound.
// @brief Encode and publish one complete canonical String under the retained bound.
// @details Counts UTF-8 bytes, not characters, and uses EncodeString's exact
// u32 byte-prefix/content contract. It performs no normalization or type lookup.
// @param[in] o Exact independently granted canonical String publisher owner.
// @param[in] value Complete immutable String content, at most 4096 UTF-8 bytes.
// @return Original encode/publish status; Invalid rejects excess convenience bound
// or malformed UTF-8. Allocation/runtime panics remain separate from status values.
// @permissions Exact selected String type/publish/quota/deadline grant.
// @see EncodeString; Owner.Publish; Owner.LogString
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
// @brief Encode one complete canonical String and write through its exact log owner.
// @details Uses EncodeString's original UTF-8 and full request-size checks.
// Creates no file, native logger name or altered severity/policy configuration.
// @param[in] o Independently granted exact canonical String log owner.
// @param[in] value Complete immutable original log String content.
// @return Original encode/log status, preserving all checked capacity/owner/Host refusals.
// @permissions Exact log alias/schema/direction/quota/deadline grant.
// @see EncodeString; Owner.PublishString; Owner.Request
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

// Subscribe activates the exact original subscription with no payload.
// @brief Activate the independently granted topic subscription.
// @details Creates no default observer, native callback, context or executor.
// @param[in] o Exact existing subscription owner, borrowed through the call.
// @return Original unsigned subscription status, Busy or BadHandle.
// @permissions Exact subscription/type/delivery/quota/deadline grant.
// @see Owner.Poll; Owner.Watch; Owner.Close
func (o *Owner) Subscribe() uint32 { return o.activate(0) }

// AdvertiseService activates the exact original business-ABI server.
// @brief Activate a Service server using the existing original advertisement owner.
// @details Chooses no new alias/type/Node. Responses need independent rights;
// original-control Services require the separate owned raw12 transport.
// @param[in] o Exact existing independently granted advertisement owner.
// @return Original unsigned activation status, Busy or BadHandle.
// @permissions Exact advertise/type/native-QoS grant; no response grant is added.
// @see Owner.Poll; Owner.Request; Owner.Close
func (o *Owner) AdvertiseService() uint32 { return o.activate(1) }

// SubscribeParameterEvents activates the exact original parameter-event source.
// @brief Activate the independently granted parameter-event subscription.
// @details Creates no parameter store, default native Node, mutation permission or observer.
// @param[in] o Exact existing parameter-event owner, borrowed through return.
// @return Original unsigned activation status, Busy or BadHandle.
// @permissions Exact event alias/schema/delivery/quota/deadline grant.
// @see Owner.Poll; Owner.Watch; Owner.Ready
func (o *Owner) SubscribeParameterEvents() uint32 { return o.activate(2) }

// Result owns only a successful complete output. On every error Data is nil;
// error90 exposes Required only if the Host overwrote its all-ones sentinel.
// A legacy Poll may already have consumed an event. Never automatically retry.
// @brief Owned successful bytes or independently observed required-capacity data.
// @details The accompanying returned uint32 status governs validity. Public
// construction is ordinary local data and does not authenticate a Host result.
// Allocation ownership stays in Go; no native ROS object pointer is returned.
// @see Owner.Request; Owner.Poll; TooLarge
type Result struct {
	// Data owns only the successful initialized output prefix.
	// @brief Complete initialized bytes, valid only with accompanying OK status.
	// @details The slice retains its private Go backing allocation and caps capacity
	// to the initialized length. All error Result values expose nil Data; they do
	// not promise that unreturned internal allocation bytes were physically erased.
	// @see Owner.Request; Owner.Poll; Owner.PollEvent
	Data []byte
	// Required is an actually observed advisory byte requirement.
	// @brief Original required bytes, valid only when HasRequired is true.
	// @details Zero can be a genuinely observed extent. It reserves no storage or
	// permission to replay an effectful operation or possibly consumed legacy event.
	// @see Result.HasRequired; TooLarge; Owner.Poll
	Required uint64
	// HasRequired distinguishes an observed extent from a surviving sentinel.
	// @brief True only for actual status 90 with an overwritten all-ones length slot.
	// @details False means Required is not established; never infer an extent from
	// its zero/default value or fabricate a reservation for another operation.
	// @see Result.Required; Owner.Request; TooLarge
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
// @brief Poll one actual original legacy event into private bounded Go storage.
// @details Pins output/length buffers and checks the original all-ones sentinel
// before exposing owned initialized bytes. Capacity/decode refusal may follow
// legacy consumption; no automatic grow/retry or default idle event is returned.
// @param[in] o Exact existing subscription/observer owner, borrowed through return.
// @param[in] capacity Explicit output allocation in bytes, at most MaxOutputBytes.
// @return Result and original status; Again is genuine idle/quota, not a value.
// @permissions Exact schema/alias/delivery/quota/deadline grant.
// @see Owner.PollEvent; Owner.Request; Result; Owner.Ready
func (o *Owner) Poll(capacity uint32) (Result, uint32) { return o.receive(capacity, false) }

// PollEvent returns complete versioned event bytes. Its envelope still needs
// the selected source/observer/instance/correlation validator.
// @brief Poll one complete versioned event with its original canonical envelope.
// @details Returns actual bytes only; caller validation must still verify the
// complete 64-byte header, source, observer, Instance and correlation before
// interpreting its body. The original versioned contract retains the pinned
// event on capacity status 90; Again is idle rather than a delivered value.
// @param[in] o Exact existing independently granted versioned observer owner.
// @param[in] capacity Explicit complete-event output allocation, at most MaxOutputBytes.
// @return Owned successful Result and OK, or unchanged original/local refusal status.
// No failed/idle output is published and no consumed legacy operation is retried.
// @permissions Exact original observer/schema/delivery/quota/deadline grant.
// @see Owner.Poll; Owner.Watch; Result; Owner.Ready
func (o *Owner) PollEvent(capacity uint32) (Result, uint32) { return o.receive(capacity, true) }

// Request invokes one exact named operation with canonical borrowed request
// bytes and private output storage. The Host checks role/type/ownership/quotas.
// Absent-backend operations refuse95 before any import or allocation.
// @brief Execute one exact selected original RPC with pinned complete canonical buffers.
// @details Checks selector/backend support before owner lease or output allocation.
// Borrows immutable request bytes and private output/length buffers only through
// synchronous import return; successful data owns its Go backing allocation.
// @param[in] o Existing exact original owner for this operation and backend.
// @param[in] op Exact Operation selector; an unavailable backend refuses Unsupported.
// @param[in] request Complete stable original canonical body, at most MaxRequestBytes.
// @param[in] capacity Explicit private output byte allocation, at most MaxOutputBytes.
// @return Result and original unsigned status. Invalid selector/success length
// uses Invalid; limits use TooLarge. Required is meaningful only for an actual
// overwritten status-90 length slot. Timeout/consumption/capacity never authorizes replay.
// @permissions Exact operation/alias/type/direction/quota/deadline Host grant.
// @see Result; Operation; Owner.Poll; Owner.Close
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
// @brief Register this exact independently granted observer against a distinct source.
// @details Acquires both shared state leases without waiting. Copied views of
// the same underlying state still refuse; successful watch reserves no future record.
// @param[in] o Existing exact independently granted observer owner.
// @param[in] source Distinct live original owner from the same Instance/backend.
// @param[in] correlation Exact owned u64 outgoing-goal ID for Action data watches;
// metadata-only watches use 0. A copied number grants no native goal ownership.
// @return Original unsigned status, Invalid for same state, Busy or BadHandle.
// @permissions Exact observer/source pairing and their independent trusted grants.
// @see Owner.Ready; Owner.PollEvent; Owner.Submit
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
// @brief Complete four-word data from one actual observer-readiness query.
// @details Only a successful Ready call establishes a Host observation. Direct
// construction/default values cannot reserve an event, slot, byte quota or ROS right.
// @see Owner.Ready; Owner.Watch; Owner.Submit
type Readiness struct {
	// Events is the current ready event-record count.
	// @brief Unsigned complete ready count from an actual successful snapshot.
	// @details Zero is an idle observation and does not retire or revoke an owner.
	// @see Owner.Ready; Owner.PollEvent
	Events uint64
	// NextBytes is the complete next-event extent, including its envelope.
	// @brief Observed next complete event bytes without host-int narrowing.
	// @details A later poll performs independent state/capacity/quota checks.
	// @see Owner.PollEvent; Readiness.Events
	NextBytes uint64
	// AdmissionSlots is the currently observed asynchronous admission-slot budget.
	// @brief Complete unsigned slot snapshot, not a later-submission reservation.
	// @details A Service submit still needs its own independent admission and grants.
	// @see Owner.Submit; Readiness.AdmissionBytes
	AdmissionSlots uint64
	// AdmissionBytes is the currently observed asynchronous admission-byte budget.
	// @brief Complete unsigned byte snapshot; exact schema/alias ceilings can be lower.
	// @details This local value neither enlarges a Host quota nor authorizes a payload.
	// @see Owner.Submit; Readiness.AdmissionSlots
	AdmissionBytes uint64
}

// Ready obtains the complete actual versioned readiness snapshot.
// @brief Read all four original unsigned words from one successful readiness call.
// @details Pins the complete 32-byte output, checks status and decodes canonical
// LE values. No later record or asynchronous slot/byte budget is reserved.
// @param[in] o Existing exact independently granted readiness observer owner.
// @return Complete Readiness and OK, or zero unusable snapshot and original status.
// Busy/BadHandle/Host refusal is distinct from a successful observation of zero events.
// @permissions Exact original observer/readiness operation and its own limits.
// @see Readiness; Owner.Watch; Owner.PollEvent; Owner.Submit
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
// @brief Submit one complete original business-ABI Service request with an observer.
// @details Pins request/ID storage and verifies the actual nonzero full u64 ID.
// Admission is not an already completed response. Original-control owned raw12
// remains a separate required transport, without a legacy fallback here.
// @param[in] o Exact existing independently granted Service-call owner.
// @param[in] observer Distinct live independently granted original observer owner.
// @param[in] request Complete immutable canonical body, at most MaxRequestBytes.
// @return Actual nonzero original ID and OK, or 0 and unchanged refusal status;
// same owner/zero successful ID uses Invalid. No possibly admitted send is replayed.
// @permissions Exact call/observer/type/direction/quota/deadline grants.
// @see Owner.PollEvent; Owner.Watch; Owner.Ready; Operation
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
