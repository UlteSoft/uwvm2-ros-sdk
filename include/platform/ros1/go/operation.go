//go:build wasip1 && wasm

// @file operation.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

// Operation selects one exact existing RPC import. It creates no alias, native
// resource or stronger role. Non-RPC calls have their own explicit methods.
type Operation uint8

const (
	OpServiceCall Operation = iota + 1
	OpServiceRespond
	OpActionSendGoal
	OpActionCancelOwnGoal
	OpActionCancelAnyGoal
	OpActionReceiveFeedback
	OpActionReceiveResult
	OpActionAdvertise
	OpActionRespond
	OpTfLookup
	OpTfBroadcast
	OpParameterGet
	OpParameterSet
	OpParameterDelete
	OpParameterExists
	OpParameterList
	OpParameterSearch
	OpGraphInspectTopic
	OpGraphInspectNode
	OpGraphInspectService
	OpGraphListTopics
	OpGraphListNodes
	OpGraphListServices
	OpTimeReadRos
	OpTimeReadWall
	OpParameterDescribe
	OpParameterDeclare
	OpParameterUndeclare
	OpGraphInspectAction
	OpLifecycleGetState
	OpLifecycleChangeState
	OpTimeReadSystem
	OpTimeReadSteady
	lastOperation = OpTimeReadSteady
)
