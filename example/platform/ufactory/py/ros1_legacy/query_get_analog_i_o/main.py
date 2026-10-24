"""@file main.py
@brief Query every original xarm_msgs/GetAnalogIO field.
@details Genuine Python executes all control flow and validates every field.
The shared interpreter packages this application and its modules into one Wasm.
"""
import json
import sys
from ros.py.transport import Capability, pause_ms
from ufactory.py.ros1_legacy.records import Ros1Xarm_msgsGetAnalogIOResponse, Ros1Xarm_msgsGetAnalogIORequest


def main():
    """@brief Observe/query once with explicit ownership and finite idle polling.

    @return First original operation/codec error, then independent cleanup/output error.
    @details No request is replayed, no native policy is written, and no robot is commanded.
    """
    if len(sys.argv) != 2:
        return 22
    primary = 0
    cleanup = 0
    present = False
    wire = b""
    owner, primary = Capability.open(sys.argv[1])
    if owner is not None:
        try:
            payload = Ros1Xarm_msgsGetAnalogIORequest().encode()
            reply = owner.invoke("service_call", payload, 266)
            primary, wire = reply[0], reply[1]
            if primary == 0:
                value = Ros1Xarm_msgsGetAnalogIOResponse.decode(wire)
                wire = value.encode()
                present = True
        except Exception as error:
            primary = getattr(error, "code", 22)
        finally:
            cleanup = owner.close()
    try:
        print(json.dumps({"primary": primary, "cleanup": cleanup,
              "cleanup_present": owner is not None, "response_present": present,
              "wire_hex": wire.hex() if present else ""}))
    except Exception:
        return min(primary or cleanup or 5, 125)
    return min(primary or cleanup, 125)


exitCode = main()
