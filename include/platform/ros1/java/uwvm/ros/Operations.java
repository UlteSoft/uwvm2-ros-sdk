package uwvm.ros;

/**
 * @brief Exact ROS 1 response-bearing request dispatch without ABI narrowing.
 * @details Selectors confer no permissions. Unsupported operations return95
 * before import. All memory remains caller-owned for each synchronous call.
 */
public final class Operations
{
    /** @brief Prevent construction of this static exact dispatch. */
    private Operations()
    {
    }

    /** @brief Stable selector for the exact action_advertise ABI import. */
    public static final int ACTION_ADVERTISE = 1;
    /** @brief Stable selector for the exact action_cancel_any_goal ABI import. */
    public static final int ACTION_CANCEL_ANY_GOAL = 2;
    /** @brief Stable selector for the exact action_cancel_own_goal ABI import. */
    public static final int ACTION_CANCEL_OWN_GOAL = 3;
    /** @brief Stable selector for the exact action_receive_feedback ABI import. */
    public static final int ACTION_RECEIVE_FEEDBACK = 4;
    /** @brief Stable selector for the exact action_receive_result ABI import. */
    public static final int ACTION_RECEIVE_RESULT = 5;
    /** @brief Stable selector for the exact action_respond ABI import. */
    public static final int ACTION_RESPOND = 6;
    /** @brief Stable selector for the exact action_send_goal ABI import. */
    public static final int ACTION_SEND_GOAL = 7;
    /** @brief Stable selector for the exact graph_inspect_action ABI import. */
    public static final int GRAPH_INSPECT_ACTION = 8;
    /** @brief Stable selector for the exact graph_inspect_node ABI import. */
    public static final int GRAPH_INSPECT_NODE = 9;
    /** @brief Stable selector for the exact graph_inspect_service ABI import. */
    public static final int GRAPH_INSPECT_SERVICE = 10;
    /** @brief Stable selector for the exact graph_inspect_topic ABI import. */
    public static final int GRAPH_INSPECT_TOPIC = 11;
    /** @brief Stable selector for the exact graph_list_nodes ABI import. */
    public static final int GRAPH_LIST_NODES = 12;
    /** @brief Stable selector for the exact graph_list_services ABI import. */
    public static final int GRAPH_LIST_SERVICES = 13;
    /** @brief Stable selector for the exact graph_list_topics ABI import. */
    public static final int GRAPH_LIST_TOPICS = 14;
    /** @brief Stable selector for the exact lifecycle_change_state ABI import. */
    public static final int LIFECYCLE_CHANGE_STATE = 15;
    /** @brief Stable selector for the exact lifecycle_get_state ABI import. */
    public static final int LIFECYCLE_GET_STATE = 16;
    /** @brief Stable selector for the exact parameter_declare ABI import. */
    public static final int PARAMETER_DECLARE = 17;
    /** @brief Stable selector for the exact parameter_delete ABI import. */
    public static final int PARAMETER_DELETE = 18;
    /** @brief Stable selector for the exact parameter_describe ABI import. */
    public static final int PARAMETER_DESCRIBE = 19;
    /** @brief Stable selector for the exact parameter_exists ABI import. */
    public static final int PARAMETER_EXISTS = 20;
    /** @brief Stable selector for the exact parameter_get ABI import. */
    public static final int PARAMETER_GET = 21;
    /** @brief Stable selector for the exact parameter_list ABI import. */
    public static final int PARAMETER_LIST = 22;
    /** @brief Stable selector for the exact parameter_search ABI import. */
    public static final int PARAMETER_SEARCH = 23;
    /** @brief Stable selector for the exact parameter_set ABI import. */
    public static final int PARAMETER_SET = 24;
    /** @brief Stable selector for the exact parameter_undeclare ABI import. */
    public static final int PARAMETER_UNDECLARE = 25;
    /** @brief Stable selector for the exact service_call ABI import. */
    public static final int SERVICE_CALL = 26;
    /** @brief Stable selector for the exact service_respond ABI import. */
    public static final int SERVICE_RESPOND = 27;
    /** @brief Stable selector for the exact tf_broadcast ABI import. */
    public static final int TF_BROADCAST = 28;
    /** @brief Stable selector for the exact tf_lookup ABI import. */
    public static final int TF_LOOKUP = 29;
    /** @brief Stable selector for the exact time_read_ros ABI import. */
    public static final int TIME_READ_ROS = 30;
    /** @brief Stable selector for the exact time_read_steady ABI import. */
    public static final int TIME_READ_STEADY = 31;
    /** @brief Stable selector for the exact time_read_system ABI import. */
    public static final int TIME_READ_SYSTEM = 32;
    /** @brief Stable selector for the exact time_read_wall ABI import. */
    public static final int TIME_READ_WALL = 33;

    /**
     * @brief Test whether a selector exists in this compiled backend.
     * @param operation Explicit selector, never an authority grant.
     * @return True only for the actual supported request form; no import runs.
     */
    public static boolean supported(int operation)
    {
        switch(operation)
        {
            case ACTION_ADVERTISE:
            case ACTION_CANCEL_ANY_GOAL:
            case ACTION_CANCEL_OWN_GOAL:
            case ACTION_RECEIVE_FEEDBACK:
            case ACTION_RECEIVE_RESULT:
            case ACTION_RESPOND:
            case ACTION_SEND_GOAL:
            case GRAPH_INSPECT_NODE:
            case GRAPH_INSPECT_SERVICE:
            case GRAPH_INSPECT_TOPIC:
            case GRAPH_LIST_NODES:
            case GRAPH_LIST_SERVICES:
            case GRAPH_LIST_TOPICS:
            case PARAMETER_DELETE:
            case PARAMETER_EXISTS:
            case PARAMETER_GET:
            case PARAMETER_LIST:
            case PARAMETER_SEARCH:
            case PARAMETER_SET:
            case SERVICE_CALL:
            case SERVICE_RESPOND:
            case TF_BROADCAST:
            case TF_LOOKUP:
            case TIME_READ_ROS:
            case TIME_READ_WALL: return true;
            default: return false;
        }
    }

    /**
     * @brief Invoke one exact seven-parameter request import without replay.
     * @param operation Explicit request selector; unsupported returns95.
     * @param handle Full owned capability bits, including unsigned bit63.
     * @param request Borrowed canonical request offset in memory zero.
     * @param length Exact request byte count.
     * @param output Caller-owned response offset.
     * @param capacity Exact finite response capacity.
     * @param slot Caller-owned eight-byte required-length slot.
     * @return Actual ABI errno; a length slot is inspected only if written.
     */
    public static int invoke(int operation, long handle, long request, long length, long output, long capacity, long slot)
    {
        switch(operation)
        {
            case ACTION_ADVERTISE: return Raw.action_advertise(handle, 0, request, length, output, capacity, slot);
            case ACTION_CANCEL_ANY_GOAL: return Raw.action_cancel_any_goal(handle, 0, request, length, output, capacity, slot);
            case ACTION_CANCEL_OWN_GOAL: return Raw.action_cancel_own_goal(handle, 0, request, length, output, capacity, slot);
            case ACTION_RECEIVE_FEEDBACK: return Raw.action_receive_feedback(handle, 0, request, length, output, capacity, slot);
            case ACTION_RECEIVE_RESULT: return Raw.action_receive_result(handle, 0, request, length, output, capacity, slot);
            case ACTION_RESPOND: return Raw.action_respond(handle, 0, request, length, output, capacity, slot);
            case ACTION_SEND_GOAL: return Raw.action_send_goal(handle, 0, request, length, output, capacity, slot);
            case GRAPH_INSPECT_NODE: return Raw.graph_inspect_node(handle, 0, request, length, output, capacity, slot);
            case GRAPH_INSPECT_SERVICE: return Raw.graph_inspect_service(handle, 0, request, length, output, capacity, slot);
            case GRAPH_INSPECT_TOPIC: return Raw.graph_inspect_topic(handle, 0, request, length, output, capacity, slot);
            case GRAPH_LIST_NODES: return Raw.graph_list_nodes(handle, 0, request, length, output, capacity, slot);
            case GRAPH_LIST_SERVICES: return Raw.graph_list_services(handle, 0, request, length, output, capacity, slot);
            case GRAPH_LIST_TOPICS: return Raw.graph_list_topics(handle, 0, request, length, output, capacity, slot);
            case PARAMETER_DELETE: return Raw.parameter_delete(handle, 0, request, length, output, capacity, slot);
            case PARAMETER_EXISTS: return Raw.parameter_exists(handle, 0, request, length, output, capacity, slot);
            case PARAMETER_GET: return Raw.parameter_get(handle, 0, request, length, output, capacity, slot);
            case PARAMETER_LIST: return Raw.parameter_list(handle, 0, request, length, output, capacity, slot);
            case PARAMETER_SEARCH: return Raw.parameter_search(handle, 0, request, length, output, capacity, slot);
            case PARAMETER_SET: return Raw.parameter_set(handle, 0, request, length, output, capacity, slot);
            case SERVICE_CALL: return Raw.service_call(handle, 0, request, length, output, capacity, slot);
            case SERVICE_RESPOND: return Raw.service_respond(handle, 0, request, length, output, capacity, slot);
            case TF_BROADCAST: return Raw.tf_broadcast(handle, 0, request, length, output, capacity, slot);
            case TF_LOOKUP: return Raw.tf_lookup(handle, 0, request, length, output, capacity, slot);
            case TIME_READ_ROS: return Raw.time_read_ros(handle, 0, request, length, output, capacity, slot);
            case TIME_READ_WALL: return Raw.time_read_wall(handle, 0, request, length, output, capacity, slot);
            default: return 95;
        }
    }
}
