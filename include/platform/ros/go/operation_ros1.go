//go:build wasip1 && wasm && ros1 && !ros2

package roswasm

// Backend is a build selection, never a runtime permission.
// @brief Compile-time original ROS1 numeric backend identifier 1.
// @details Selected only by wasip1/wasm plus ros1 without ros2; it neither
// redirects an owner nor grants ROS, clock, filesystem, discovery or network rights.
// @see Operation; Owner.Request; Open
const Backend uint32 = 1

func supports(op Operation) bool {
	switch op {
	case OpServiceCall,
		OpServiceRespond,
		OpActionSendGoal,
		OpActionCancelOwnGoal,
		OpActionCancelAnyGoal,
		OpActionReceiveFeedback,
		OpActionReceiveResult,
		OpActionAdvertise,
		OpActionRespond,
		OpTfLookup,
		OpTfBroadcast,
		OpParameterGet,
		OpParameterSet,
		OpParameterDelete,
		OpParameterExists,
		OpParameterList,
		OpParameterSearch,
		OpGraphInspectTopic,
		OpGraphInspectNode,
		OpGraphInspectService,
		OpGraphListTopics,
		OpGraphListNodes,
		OpGraphListServices,
		OpTimeReadRos,
		OpTimeReadWall:
		return true
	default:
		return false
	}
}

func invoke(op Operation, h uint64, m uint32, a, l, b, c, z uint64) uint32 {
	switch op {
	case OpServiceCall:
		return ServiceCall(h, m, a, l, b, c, z)
	case OpServiceRespond:
		return ServiceRespond(h, m, a, l, b, c, z)
	case OpActionSendGoal:
		return ActionSendGoal(h, m, a, l, b, c, z)
	case OpActionCancelOwnGoal:
		return ActionCancelOwnGoal(h, m, a, l, b, c, z)
	case OpActionCancelAnyGoal:
		return ActionCancelAnyGoal(h, m, a, l, b, c, z)
	case OpActionReceiveFeedback:
		return ActionReceiveFeedback(h, m, a, l, b, c, z)
	case OpActionReceiveResult:
		return ActionReceiveResult(h, m, a, l, b, c, z)
	case OpActionAdvertise:
		return ActionAdvertise(h, m, a, l, b, c, z)
	case OpActionRespond:
		return ActionRespond(h, m, a, l, b, c, z)
	case OpTfLookup:
		return TfLookup(h, m, a, l, b, c, z)
	case OpTfBroadcast:
		return TfBroadcast(h, m, a, l, b, c, z)
	case OpParameterGet:
		return ParameterGet(h, m, a, l, b, c, z)
	case OpParameterSet:
		return ParameterSet(h, m, a, l, b, c, z)
	case OpParameterDelete:
		return ParameterDelete(h, m, a, l, b, c, z)
	case OpParameterExists:
		return ParameterExists(h, m, a, l, b, c, z)
	case OpParameterList:
		return ParameterList(h, m, a, l, b, c, z)
	case OpParameterSearch:
		return ParameterSearch(h, m, a, l, b, c, z)
	case OpGraphInspectTopic:
		return GraphInspectTopic(h, m, a, l, b, c, z)
	case OpGraphInspectNode:
		return GraphInspectNode(h, m, a, l, b, c, z)
	case OpGraphInspectService:
		return GraphInspectService(h, m, a, l, b, c, z)
	case OpGraphListTopics:
		return GraphListTopics(h, m, a, l, b, c, z)
	case OpGraphListNodes:
		return GraphListNodes(h, m, a, l, b, c, z)
	case OpGraphListServices:
		return GraphListServices(h, m, a, l, b, c, z)
	case OpTimeReadRos:
		return TimeReadRos(h, m, a, l, b, c, z)
	case OpTimeReadWall:
		return TimeReadWall(h, m, a, l, b, c, z)
	default:
		return Unsupported
	}
}

func subscribeParameterEvents(h uint64) uint32 {
	return Unsupported
}
