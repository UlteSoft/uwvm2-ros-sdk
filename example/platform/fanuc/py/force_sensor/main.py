"""@file main.py
@brief Observe every original fanuc_msgs/msg/ForceSensor field in real CPython.
@details The shared transport owns no policy; the alias is supplied at deployment.
"""
import json
import sys
from ros.py.transport import Capability, pause_ms
from fanuc.py.ros2.records import Ros2Fanuc_msgsMsgForceSensor


def main():
    """@brief Subscribe once, decode the whole value, and close before reporting.

    @return First operation, independent close or output status; no service replay.
    @details Only idle 11 permits another poll, at most 250 with 20 ms pauses.
    """
    if len(sys.argv) != 2:
        return 22
    result = dict(primary=0, cleanup=0, cleanup_present=0, response_present=0, wire_hex="")
    owner, result["primary"] = Capability.open(sys.argv[1])
    if owner is not None:
        try:
            result["primary"] = owner.invoke("topic_subscribe")[0]
            if result["primary"] == 0:
                for attempt in range(250):
                    frame = owner.invoke("event_poll", b"", 28)
                    result["primary"], result["rpc_status"] = frame[0], frame[0]
                    result["required"] = str(frame[2]) if frame[2] is not None else None
                    if frame[0] != 11 or attempt == 249:
                        if frame[0] == 0:
                            value = Ros2Fanuc_msgsMsgForceSensor.decode(frame[1])
                            wire = value.encode()
                            if wire != frame[1]:
                                raise ValueError("noncanonical complete value")
                            result["response_present"], result["wire_hex"] = 1, wire.hex()
                        break
                    result["primary"] = pause_ms(20)
                    if result["primary"]:
                        break
        except ValueError:
            result["primary"] = 22
        finally:
            result["cleanup_present"], result["cleanup"] = 1, owner.close()
    print(json.dumps(result, separators=(",", ":")))
    return min(result["primary"] or result["cleanup"], 125)


raise SystemExit(main())
