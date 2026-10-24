"""@file main.py
@brief Receive the entire original uwvm_fourier_bridge/msg/Status through one explicit capability.
@details Services are attempted once. Only idle subscriptions repeat under a finite
250-poll budget. All returned fields are decoded by genuine Python, and cleanup
runs even when a codec raises. Output keeps the full original canonical bytes.
"""
import sys
import json
from ros.py.transport import Capability, pause_ms
from fourier.py.ros2_aurora_bridge_v1.records import Ros2Uwvm_fourier_bridgeMsgStatus

facts = {"primary": 0, "cleanup": 0, "cleanup_present": False, "response_present": False, "wire_hex": "", "required": None, "rpc_status_present": False, "rpc_status": None}
if len(sys.argv) != 2:
    exitCode = 22
else:
    request = b""
    owner, facts["primary"] = Capability.open(sys.argv[1])
    if owner is not None:
        try:
            facts["primary"] = owner.invoke("topic_subscribe")[0]
            if facts["primary"] == 0:
                for attempt in range(250):
                    frame = owner.invoke("event_poll", request, 14400)
                    facts["primary"] = frame[0]
                    facts["required"] = None if frame[2] is None else str(frame[2])
                    if frame[0] != 11 or attempt == 249:
                        break
                    facts["primary"] = pause_ms(20)
                    if facts["primary"] != 0:
                        break
                if facts["primary"] == 0:
                    if frame[2] != len(frame[1]):
                        raise ValueError("complete returned extent required")
                    value = Ros2Uwvm_fourier_bridgeMsgStatus.decode(frame[1])
                    facts["wire_hex"] = frame[1].hex()
                    facts["response_present"] = True

        except (ValueError, OverflowError):
            facts["primary"] = 22
        finally:
            facts["cleanup_present"] = True
            facts["cleanup"] = owner.close()
    sys.stdout.write(json.dumps(facts, separators=(",", ":")) + "\n")
    sys.stdout.flush()
    business = 5 if facts["rpc_status_present"] and facts["rpc_status"] != "0" else 0
    exitCode = min(125, facts["primary"] or facts["cleanup"] or business)
