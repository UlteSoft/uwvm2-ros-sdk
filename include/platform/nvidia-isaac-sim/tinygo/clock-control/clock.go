//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1 && rmw_service_v1

// Package clock owns one finite genuine Kit clock-program service session.
// @brief Full typed original clock operations through the shared raw12 SDK.
// @details Single admitted Guest thread; no goroutines, implicit updates, retry,
// clock or native provider. Genuine generated records and service-root identity
// come from the shared operator. Native ROSIDL/identity policy remains separate.
// @see Session; Completion; CLOCK-SDK.md
package clock

import (
	records "uwvm2.local/nvidia-isaac-sim-clock/generated"
	ros "uwvm2.local/roswasm"
	owned "uwvm2.local/roswasm/rmwservice"
)

// ClockEvent is the complete actual generated Clock callback value.
// @brief Preserve kind, phase, frame, signed seconds and nanoseconds by value.
// @details Phase/frame locate callback dispatch; no publication-time claim.
// @see Completion; Session.Poll
type ClockEvent = records.Ros2Uwvm_isaac_sim_bridgeMsgClockEvent

// Response is the full actual generated native reply, including all statuses.
// @brief Preserve correlation, state, update/step counters and optional Clock.
// @details Has_event=false requires an all-zero event, never a sample Clock(0).
// @see Completion; Session.Poll
type Response = records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response

type request = records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request

// Completion owns one fully decoded, correlated, real commit-ACKed response.
// @brief No borrowed packet or default value escapes on idle/error.
// @details Both response data and same-take metadata retain complete fields.
// @see Session.Poll
type Completion struct {
	// Response is the entire successful typed native reply.
	// @see Response; Session.Poll
	Response Response
	// Metadata is the actual full native sequence/timestamps/writer association.
	// @see owned.Metadata; Session.Poll
	Metadata owned.Metadata
}

// Session owns a single retained client and at most one pending operation.
// @brief Use only the original *Session on the admitted single Guest thread.
// @details Copies refuse22. Business uncertainty is terminal; Close always
// independently attempts native/raw owner retirement. Local abandon cannot
// acknowledge native simulation cancellation or a physical stop.
// @see New; Session.CancelNative; Session.Close; Session.Diagnostic
type Session struct {
	self                          *Session
	group                         *owned.Group
	client                        *owned.Client[request, Response]
	nonce, pending                uint64
	sequence, steps               uint32
	state, seen, operation, phase uint8
	frame                         uint32
	last                          *Completion
	lastControl                   *owned.Metadata
	attempted, closed             bool
	primary, cleanup              error
}

func failure(code uint32) error { return ros.Error{Code: code} }
func (s *Session) valid() bool  { return s != nil && s.self == s }
func (s *Session) fail(err error) error {
	if s.primary == nil {
		s.primary = err
	}
	s.state = 3
	return err
}
func updates(steps uint32) uint64 {
	n := uint64(4 + steps)
	if steps > 0 {
		n++
	}
	if steps > 10 {
		n++
	}
	return n
}

// New preallocates a bounded single-session owner without opening aliases.
// @brief Reserve64 lifetime transaction slots and generated full body ceilings.
// @details Native resources are acquired only by Connect. No actual SDK/model,
// simulator or ROS provider can be substituted through this API.
// @param[in] nonce Positive externally paired uint64; correlation, not a grant.
// @return Original pointer or22/12/95/shared allocation/target error.
// @see Session.Connect
func New(nonce uint64) (*Session, error) {
	if nonce == 0 {
		return nil, failure(22)
	}
	g, err := owned.NewGroup(owned.Options{Endpoints: 1, TransactionsPerEndpoint: 64,
		MaximumRequest:  records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestMaxWireBytes,
		MaximumResponse: records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseMaxWireBytes,
		WriterBytes:     16, MaximumWaitNanoseconds: 1000000000, StorageBudgetBytes: 1 << 20})
	if err != nil {
		return nil, err
	}
	s := &Session{group: g, nonce: nonce}
	s.self = s
	return s, nil
}

// Connect opens exact pregranted owners, compares actual QoS and queries readiness.
// @brief Exactly one attempt; all full receipt/type/codec checks use the shared SDK.
// @details No probe client, graph or clock fallback. Failure is terminal and no
// business request is sent. Separately admitted native ROSIDL binding is required.
// @param[in] aliases Exact distinct existing call/observer/availability aliases.
// @param[in] expected Two independently selected complete actual QoS profiles.
// @param[in] waitNanoseconds Finite query wait0..1000000000ns;0 observes once.
// @return Actual receipt pointer or original error/22/17/125/11 unavailable.
// @see Session.Diagnostic; Session.Close
func (s *Session) Connect(aliases owned.ClientAliases, expected [2]owned.QoS, waitNanoseconds uint64) (*owned.Receipt,
	error) {
	if !s.valid() {
		return nil, failure(22)
	}
	if s.closed || s.state == 3 {
		return nil, failure(125)
	}
	if s.attempted {
		return nil, failure(17)
	}
	if waitNanoseconds > 1000000000 || aliases.Availability == "" {
		return nil, failure(22)
	}
	s.attempted = true
	d := owned.Definition[request, Response]{NativeType: records.ClockNativeType,
		CanonicalIdentity: records.ClockCanonicalIdentity,
		Request: owned.Codec[request]{Maximum: records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestMaxWireBytes,
			Encode: func(q request) ([]byte, error) { return q.Encode() },
			Decode: records.DecodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request},
		Response: owned.Codec[Response]{Maximum: records.Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseMaxWireBytes,
			Encode: func(q Response) ([]byte, error) { return q.Encode() },
			Decode: records.DecodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response}}
	c, err := owned.NewClient(s.group, d, aliases, expected)
	if err != nil {
		return nil, s.fail(err)
	}
	s.client = c
	r, err := c.Inspect()
	if err != nil {
		return nil, s.fail(err)
	}
	ready, err := c.Available(waitNanoseconds)
	if err != nil {
		return nil, s.fail(err)
	}
	if !ready {
		return nil, s.fail(failure(11))
	}
	return &r, nil
}

func (s *Session) submit(operation, phase uint8, frame uint32, impulse, extra bool, pacing uint16) (uint64, error) {
	if !s.valid() {
		return 0, failure(22)
	}
	if s.closed || s.state >= 2 {
		return 0, failure(125)
	}
	if s.pending != 0 {
		return 0, failure(17)
	}
	if s.client == nil {
		return 0, failure(9)
	}
	q := request{Operation: operation, Session_nonce: s.nonce, Request_sequence: s.sequence,
		Phase: phase, Frame: frame, Impulse: impulse, Extra_update: extra, Pacing_milliseconds: pacing}
	ticket, err := s.client.Submit(q)
	if err != nil {
		return 0, s.fail(err)
	}
	s.pending, s.operation, s.phase, s.frame = ticket, operation, phase, frame
	return ticket, nil
}

// Start submits original graph creation,1s discovery and playback setup once.
// @brief All native work is acknowledged only by Poll's actual response.
// @details No app updates or pacing happen locally. Sequence0 only.
// @return Actual admission ticket or22/17/125/original error, never completion.
// @see Session.Poll
func (s *Session) Start() (uint64, error) {
	if !s.valid() || s.state != 0 || s.sequence != 0 {
		return 0, failure(22)
	}
	return s.submit(1, 0, 0, false, false, 1000)
}

// Step submits the next exact source frame; the application owns both loops.
// @brief Frame0/10 impulse; phase0 impulse additionally performs one extra update.
// @details Native executes one normal update, one actual Clock poll and100ms
// pacing. Local state advances only after a complete valid actual response.
// @param[in] phase Exact next phase0 or1.
// @param[in] frame Exact next phase-local frame0..19.
// @return Actual admission ticket or22/17/125/original error.
// @see Session.Poll; Session.Finish
func (s *Session) Step(phase uint8, frame uint32) (uint64, error) {
	if !s.valid() || s.state != 1 || s.steps >= 40 || uint32(phase) != s.steps/20 || frame != s.steps%20 {
		return 0, failure(22)
	}
	impulse := frame%10 == 0
	return s.submit(2, phase, frame, impulse, phase == 0 && impulse, 100)
}

// Finish submits explicit native retirement after all40 actual acknowledged steps.
// @brief Requires both actual callback kinds in both phases; absence returns110.
// @details A local completeness refusal leaves the certain session available for
// explicit CancelNative. No fake timestamp, placeholder frame or hidden loop.
// @return Actual ticket or22/110/original error; Poll acknowledges cleanup.
// @see Session.CancelNative; Session.Poll
func (s *Session) Finish() (uint64, error) {
	if !s.valid() || s.state != 1 || s.steps != 40 {
		return 0, failure(22)
	}
	if s.seen != 15 {
		return 0, failure(110)
	}
	return s.submit(3, 0, 0, false, false, 0)
}

// CancelNative submits a distinct explicit native simulation retirement request.
// @brief No request may be pending and native effects must remain certain.
// @details Only a successful correlated reply acknowledges native cancellation;
// local abandonment or endpoint close does not prove native stop.
// @return Actual ticket or17/125/original error; no automatic retry.
// @see Session.Poll; Session.AbandonPending; Session.Close
func (s *Session) CancelNative() (uint64, error) { return s.submit(4, 0, 0, false, false, 0) }

// Poll receives one actual complete response through the real retained transport.
// @brief Validate every business field after shared full decode and exact commit0.
// @details Original transport/status/cleanup errors remain terminal. Genuine11
// is idle; no value pointer is returned. Event absence must be allzero and is
// never exposed as a Clock sample. This call does not infer physical time.
// @return Owned completion, or nil with original error/11 idle/22 correlation.
// @see Session.AbandonPending; Session.Diagnostic
func (s *Session) Poll() (*Completion, error) {
	if !s.valid() {
		return nil, failure(22)
	}
	if s.closed || s.state >= 2 {
		return nil, failure(125)
	}
	if s.pending == 0 || s.client == nil {
		return nil, failure(22)
	}
	d, err := s.client.Receive()
	if d.Metadata.Sequence != 0 && (d.Metadata.Kind == 6 || d.Metadata.Kind == 7) {
		control := d.Metadata
		s.lastControl = &control
	}
	if e, ok := err.(ros.Error); ok && e.Code == 11 {
		return nil, err
	}
	if err != nil {
		return nil, s.fail(err)
	}
	if d.HasValue {
		s.last = &Completion{Response: d.Value, Metadata: d.Metadata}
	}
	ticket := s.pending
	s.pending = 0
	r := d.Value
	if !d.HasValue || d.Abandoned || d.Metadata.Ticket != ticket || r.Session_nonce != s.nonce || r.Request_sequence !=
		s.sequence {
		return nil, s.fail(failure(22))
	}
	if r.Status != 0 {
		return nil, s.fail(failure(r.Status))
	}
	if r.Cleanup_status != 0 {
		return nil, s.fail(failure(r.Cleanup_status))
	}
	completed := s.steps
	if s.operation == 2 {
		completed++
	}
	wantedState := uint8(1)
	if s.operation >= 3 {
		wantedState = 2
	}
	wantedUpdates := updates(completed)
	if s.operation == 4 && s.state == 0 {
		wantedUpdates = 1
	}
	if r.State != wantedState || r.Completed_steps != completed || r.Actual_app_updates != wantedUpdates {
		return nil, s.fail(failure(22))
	}
	e := r.Event
	if r.Has_event {
		if s.operation != 2 || e.Kind < 1 || e.Kind > 2 || e.Phase != s.phase || e.Frame != s.frame || e.Nanosec >=
			1000000000 {
			return nil, s.fail(failure(22))
		}
		s.seen |= 1 << (s.phase*2 + e.Kind - 1)
	} else if e.Kind != 0 || e.Phase != 0 || e.Frame != 0 || e.Sec != 0 || e.Nanosec != 0 {
		return nil, s.fail(failure(22))
	}
	s.steps, s.state = completed, r.State
	s.sequence++
	return &Completion{Response: r, Metadata: d.Metadata}, nil
}

// AbandonPending locally abandons the actual pending ticket and poisons the session.
// @brief This is work-budget exhaustion, not a physical timeout or DDS cancellation.
// @details No resubmission is allowed; native effects remain uncertain. Diagnostic
// retains the independent actual abandon result and endpoint cleanup remains due.
// @return Original abandon error/nil,22 no ticket or9 missing client.
// @see Session.CancelNative; Session.Close
func (s *Session) AbandonPending() error {
	if !s.valid() || s.pending == 0 {
		return failure(22)
	}
	ticket := s.pending
	s.pending = 0
	s.fail(failure(90))
	return s.client.Abandon(ticket)
}

// Close once-attempts pending abandonment and every real native/raw retirement.
// @brief Retain first business error and independent cleanup error.
// @details Repeated calls are inert; traps/OOM can prevent ordinary cleanup and
// still require Host drain. Successful close does not acknowledge Kit cancellation.
// @return Original first business error, otherwise cleanup error/nil.
// @see Session.CleanupError; Session.Diagnostic
func (s *Session) Close() error {
	if !s.valid() {
		return failure(22)
	}
	if !s.closed {
		if s.pending != 0 {
			s.cleanup = s.AbandonPending()
		}
		if err := s.group.Close(); s.cleanup == nil {
			s.cleanup = err
		}
		s.closed = true
	}
	if s.primary != nil {
		return s.primary
	}
	return s.cleanup
}

// CleanupError returns the independent once-cleanup result without native work.
// @brief Nil before Close does not prove any cleanup was attempted.
// @details Use Diagnostic for the complete actual operation/cleanup ledger.
// @return Original cleanup error or nil;22 on a copied/invalid owner.
// @see Session.Close
func (s *Session) CleanupError() error {
	if !s.valid() {
		return failure(22)
	}
	return s.cleanup
}

// Diagnostic copies the entire shared open/receipt/decode/ACK/retire/close journal.
// @brief Remains available after Close; original receipt bytes are retained.
// @details No journal value grants native permissions or type identity proof.
// @return Actual snapshot or shared9 before attempt/22 invalid copied owner.
// @see Session.Close; owned.Diagnostic
func (s *Session) Diagnostic() (owned.Diagnostic, error) {
	if !s.valid() {
		return owned.Diagnostic{}, failure(22)
	}
	return s.group.Diagnostic(0)
}

// LastResponse copies the latest complete actual body-bearing response/metadata.
// @brief Preserve every native error/cleanup/counter field after local rejection.
// @details The record passed shared full decode/ACK but may have failed business
// correlation/status checks; it is diagnostic data, never accepted completion.
// Idle/control/decode failure leaves the preceding body snapshot. Copying the
// scalar-only record/metadata shares no transport packet or mutable container.
// @return Independent complete snapshot, nil before any body,22 invalid owner.
// @see Session.Poll; Session.Diagnostic
func (s *Session) LastResponse() (*Completion, error) {
	if !s.valid() {
		return nil, failure(22)
	}
	if s.last == nil {
		return nil, nil
	}
	copy := *s.last
	return &copy, nil
}

// LastControl copies every field of the latest actual committed resource control.
// @brief Preserve kind/flags/error/ticket and original association, never a Clock.
// @details Shared code only returns this metadata after exact control commit0.
// Body/idle/decode refusal leaves the preceding control. Native time/writer are
// absent on controls, not synthesized service observations. Available after Close.
// @return Independent actual control snapshot, nil before one,22 invalid owner.
// @see Session.Poll; Session.Diagnostic
func (s *Session) LastControl() (*owned.Metadata, error) {
	if !s.valid() {
		return nil, failure(22)
	}
	if s.lastControl == nil {
		return nil, nil
	}
	copy := *s.lastControl
	return &copy, nil
}
