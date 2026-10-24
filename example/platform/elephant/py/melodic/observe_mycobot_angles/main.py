"""@file main.py
@brief Observe every original mycobot_communication/MycobotAngles field.
@details Genuine Python executes all control flow and validates every field.
The shared interpreter packages this application and its modules into one Wasm.
"""
import json
import sys
from ros.py.transport import Capability, pause_ms
from elephant.py.melodic.records import Ros1Mycobot_communicationMycobotAngles


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
            primary = owner.invoke("topic_subscribe")[0]
            for attempt in range(250):
                if primary:
                    break
                reply = owner.invoke("event_poll", b"", 24)
                primary, wire = reply[0], reply[1]
                if primary != 11 or attempt == 249:
                    break
                primary = pause_ms(20)
            if primary == 0:
                value = Ros1Mycobot_communicationMycobotAngles.decode(wire)
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
