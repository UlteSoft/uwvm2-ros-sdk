//go:build wasip1 && wasm

package roswasm

// Operation selects one exact existing RPC import. It creates no alias, native
// resource or stronger role. Non-RPC calls have their own explicit methods.
// @brief Checked selector for one original backend-specific seven-argument RPC.
// @details Owner.Request maps this value directly to its selected import after
// validating the range and backend support. Values alone provide no schema,
// handle, native resource or authority; unsupported selections refuse 95 locally.
// @see Owner.Request; Backend; OpServiceCall; Owner.Subscribe
type Operation uint8

const (
	// OpServiceCall selects the original synchronous Service call.
	// @brief Complete exact Service request/response RPC on either selected backend.
	// @details Schema, alias and finite deadline are trusted policy; uncertain calls
	// are never automatically replayed. Owned raw12 remains a separate transport.
	// @see CallValue; Owner.Request; OpServiceRespond
	OpServiceCall Operation = iota + 1
	// OpServiceRespond selects an original owned incoming-request response.
	// @brief Legacy Service response with its actual nonzero u64 request-ID prefix.
	// @details Advertising supplies no response grant; the Host checks live pending
	// ownership. Neither copied IDs nor a response body create an owned raw12 session.
	// @see RespondValue; Owner.AdvertiseService; OpServiceCall
	OpServiceRespond
	// OpActionSendGoal selects admission of one complete original Action goal.
	// @brief Send-goal RPC returning an exact nonzero original u64 goal ID.
	// @details Admission is distinct from terminal success; no cancel-any right or
	// future result is inferred, and unknown delivery never authorizes replay.
	// @see SendGoalValue; OpActionReceiveResult; OpActionCancelOwnGoal
	OpActionSendGoal
	// OpActionCancelOwnGoal selects cancellation of one actually owned goal.
	// @brief Own-goal cancellation RPC requiring a nonzero original ID.
	// @details The original Bool acknowledgement is distinct from terminal state
	// and physical stopping; this selection cannot acquire an any-goal grant.
	// @see CancelOwnGoal; OpActionCancelAnyGoal; ResultValue
	OpActionCancelOwnGoal
	// OpActionCancelAnyGoal selects the independently granted any-goal operation.
	// @brief Explicit any-goal cancellation RPC with its own trusted policy scope.
	// @details Only this API admits the original zero all-goals selector; that
	// convention must not be substituted into own-goal cancellation calls.
	// @see Owner.CancelAnyGoal; CancelOwnGoal; OpActionCancelOwnGoal
	OpActionCancelAnyGoal
	// OpActionReceiveFeedback selects one original goal-ID-plus-feedback body.
	// @brief Receive-feedback RPC whose returned full ID must match the request.
	// @details A decoded ID is local data and supplies no ownership transfer;
	// capacity/decode refusal must not trigger automatic legacy consumption retries.
	// @see FeedbackValue; OpActionSendGoal; OpActionReceiveResult
	OpActionReceiveFeedback
	// OpActionReceiveResult selects one original terminal Action envelope.
	// @brief Receive-result RPC with full goal ID, terminal kind and complete body.
	// @details Validate kind 2/3/4 before publishing a value; actual successful
	// terminal consumption retires the goal's native ownership rather than regranting it.
	// @see ResultValue; Terminal; OpActionReceiveFeedback
	OpActionReceiveResult
	// OpActionAdvertise selects original Action-server activation.
	// @brief Empty activation RPC for one already granted exact Action-server alias.
	// @details Chooses no alternate Action/type and starts no native Guest callback;
	// incoming goals still require explicit polling and independent reply authority.
	// @see Owner.Request; Owner.Poll; OpActionRespond
	OpActionAdvertise
	// OpActionRespond selects one owned original feedback/result reply.
	// @brief Original Action response RPC with full ID, kind and complete body.
	// @details Selecting feedback/success/abort/cancellation bytes does not establish
	// native goal state. A terminal reply is not replayed after unknown delivery.
	// @see ActionReplyValue; OpActionAdvertise; OpActionReceiveResult
	OpActionRespond
	// OpTfLookup selects the exact configured source/target frame lookup.
	// @brief Transform lookup RPC with u64 nanoseconds; zero requests latest.
	// @details Frame pair and clock domain remain independently fixed by policy;
	// the request never changes either frame or falls back to another clock.
	// @see Owner.LookupTransform; Transform; OpTfBroadcast
	OpTfLookup
	// OpTfBroadcast selects publication of one complete original TransformStamped.
	// @brief Transform broadcast RPC preserving header, frames, translation and rotation.
	// @details Encoding does not normalize a quaternion or change names/units;
	// actual frame/schema/publication checks remain in the independently granted Host.
	// @see Owner.BroadcastTransform; Transform.Encode; OpTfLookup
	OpTfBroadcast
	// OpParameterGet selects an empty request for one exact granted parameter.
	// @brief Read the original canonical value kind already fixed by trusted policy.
	// @details No node/key/parent namespace can be selected by payload or inferred
	// from returned data; every schema/size/status check still applies.
	// @see Owner.GetParameter; ParameterValue; OpParameterSet
	OpParameterGet
	// OpParameterSet selects mutation of one exact granted parameter value.
	// @brief Set one complete original typed parameter with checked element bounds.
	// @details Unknown timeout can follow a native mutation; it does not prove the
	// old value remained unchanged or authorize a second set.
	// @see Owner.SetParameter; ParameterValue.Encode; OpParameterGet
	OpParameterSet
	// OpParameterDelete selects the ROS1 exact-key deletion operation.
	// @brief Delete only the independently granted ROS1 parameter key.
	// @details A child-key grant never expands to its parent namespace; selected
	// ROS2 Request refuses Unsupported before output allocation or a Host import.
	// @see Owner.Request; OpParameterSet; OpParameterUndeclare
	OpParameterDelete
	// OpParameterExists selects the ROS1 exact-key existence query.
	// @brief Query the selected ROS1 key and decode a strict canonical Bool.
	// @details Host refusal is not false; ROS2 selection refuses Unsupported locally
	// rather than probing another backend or native parameter store.
	// @see Owner.Request; DecodeBool; OpParameterGet
	OpParameterExists
	// OpParameterList selects the exact configured parameter-list scope.
	// @brief Read the original bounded canonical String parameter-list result.
	// @details Available on both selected backends. Returned names establish no
	// additional get/set/delete/declaration authority for any listed resource.
	// @see Owner.Request; DecodeString; OpParameterGet
	OpParameterList
	// OpParameterSearch selects the separately configured ROS1 parent search.
	// @brief Search only the trusted opt-in ROS1 scope and allowed name prefix.
	// @details Parent queries remain individually constrained; ROS2 selection
	// refuses Unsupported locally without emulating search by another operation.
	// @see Owner.Request; DecodeString; OpParameterExists
	OpParameterSearch
	// OpGraphInspectTopic selects the granted exact topic graph inspection.
	// @brief Read one bounded original canonical String topic snapshot.
	// @details Available on both backends; graph visibility creates no publisher,
	// subscription, endpoint, type grant or control authority for returned names.
	// @see Owner.GraphSnapshot; OpGraphListTopics; DecodeString
	OpGraphInspectTopic
	// OpGraphInspectNode selects the granted exact node graph inspection.
	// @brief Read one bounded original canonical String node snapshot.
	// @details Available on both backends; returned names are observations and do
	// not become a local Node identity, namespace grant or native context.
	// @see Owner.GraphSnapshot; OpGraphListNodes; Node
	OpGraphInspectNode
	// OpGraphInspectService selects the granted exact Service graph inspection.
	// @brief Read one bounded original canonical String Service snapshot.
	// @details Available on both backends; discovery results grant neither call,
	// advertisement, pending-request ownership nor response permission.
	// @see Owner.GraphSnapshot; OpGraphListServices; OpServiceCall
	OpGraphInspectService
	// OpGraphListTopics selects the independently granted topic-list scope.
	// @brief Read a bounded original canonical String list of visible topics.
	// @details Available on both backends; listing adds no topic/type or traffic
	// right and performs no automatic subscription or alias construction.
	// @see Owner.GraphSnapshot; OpGraphInspectTopic; DecodeString
	OpGraphListTopics
	// OpGraphListNodes selects the independently granted node-list scope.
	// @brief Read a bounded original canonical String list of visible nodes.
	// @details Available on both backends; results are a snapshot without native
	// ownership, endpoint creation or guarantees about later graph state.
	// @see Owner.GraphSnapshot; OpGraphInspectNode; DecodeString
	OpGraphListNodes
	// OpGraphListServices selects the independently granted Service-list scope.
	// @brief Read a bounded original canonical String list of visible Services.
	// @details Available on both backends; no listed name can bypass independently
	// checked Service schema/call/advertise/response grants.
	// @see Owner.GraphSnapshot; OpGraphInspectService; OpServiceRespond
	OpGraphListServices
	// OpTimeReadRos selects the exact configured ROS clock observation.
	// @brief Read one full u64 nanosecond value in the original granted ROS domain.
	// @details Available on both backends; it supplies no wall/steady fallback,
	// clock-control right, timer or Go-runtime startup grant.
	// @see Owner.ReadClock; DecodeTime; OpTimeReadWall
	OpTimeReadRos
	// OpTimeReadWall selects the original ROS1 wall-clock operation.
	// @brief Read one full u64 nanosecond value from a separately granted ROS1 clock.
	// @details ROS2 Request refuses Unsupported locally; selecting this value
	// neither substitutes system/steady time nor grants WASI runtime clock access.
	// @see Owner.ReadClock; OpTimeReadSystem; OpTimeReadSteady
	OpTimeReadWall
	// OpParameterDescribe selects the ROS2 exact parameter metadata query.
	// @brief Read configured ROS2 parameter metadata without declaring or mutating it.
	// @details ROS1 Request refuses Unsupported locally; returned metadata cannot
	// grant a parameter value kind, namespace, declaration or mutation permission.
	// @see Owner.Request; OpParameterGet; OpParameterDeclare
	OpParameterDescribe
	// OpParameterDeclare selects declaration on the ROS2 Gateway's local node.
	// @brief Declare one exact selected ROS2 parameter with its full canonical default.
	// @details Remote declaration is not emulated. ROS1 selection refuses locally;
	// schema/kind/default/ownership/quota checks remain trusted Host decisions.
	// @see Owner.DeclareParameter; ParameterValue.Encode; OpParameterUndeclare
	OpParameterDeclare
	// OpParameterUndeclare selects the ROS2 Gateway-local undeclaration operation.
	// @brief Undeclare only the exact independently granted local ROS2 parameter.
	// @details Unsupported remote/ROS1 operations stay unsupported; this selector
	// never falls back to deletion, setting an empty value or another backend.
	// @see Owner.Request; OpParameterDeclare; OpParameterDelete
	OpParameterUndeclare
	// OpGraphInspectAction selects the original ROS2 Action graph query.
	// @brief Read one bounded original canonical String Action snapshot on ROS2.
	// @details ROS1 Request refuses Unsupported locally. Graph visibility adds no
	// send/cancel/feedback/result/server grant for any observed Action.
	// @see Owner.GraphSnapshot; OpActionSendGoal; OpActionAdvertise
	OpGraphInspectAction
	// OpLifecycleGetState selects the exact ROS2 Lifecycle state query.
	// @brief Read the complete original state ID and canonical label together.
	// @details ROS1 Request refuses Unsupported locally; a Host/decode error is
	// neither a state observation nor proof of a completed transition.
	// @see Owner.GetLifecycleState; LifecycleState; OpLifecycleChangeState
	OpLifecycleGetState
	// OpLifecycleChangeState selects one trusted configured ROS2 transition.
	// @brief Request the original fixed Lifecycle transition and read its strict Bool.
	// @details Payload cannot choose another transition. ROS1 refuses locally;
	// unknown timeout cannot establish state or authorize replaying a control change.
	// @see Owner.ChangeLifecycleState; OpLifecycleGetState; DecodeBool
	OpLifecycleChangeState
	// OpTimeReadSystem selects the independently granted original ROS2 system clock.
	// @brief Read full u64 system-clock nanoseconds on the selected ROS2 backend.
	// @details ROS1 Request refuses Unsupported locally. This never substitutes
	// ROS/steady time or authorizes the Go runtime's WASI startup clock imports.
	// @see Owner.ReadClock; OpTimeReadRos; OpTimeReadSteady
	OpTimeReadSystem
	// OpTimeReadSteady selects the independently granted original ROS2 steady clock.
	// @brief Read full u64 steady-clock nanoseconds on the selected ROS2 backend.
	// @details ROS1 Request refuses Unsupported locally; no cross-domain origin,
	// wall-time conversion, timer creation or runtime startup grant is inferred.
	// @see Owner.ReadClock; OpTimeReadSystem; DecodeTime
	OpTimeReadSteady
	lastOperation = OpTimeReadSteady
)
