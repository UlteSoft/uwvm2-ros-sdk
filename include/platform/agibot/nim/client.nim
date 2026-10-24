# @file client.nim
# @brief Provide the complete agibot client.nim source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
# encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
# SPDX-License-Identifier: Apache-2.0
## Complete AimDK observation API compiled through Nim's C backend into Wasm.
##
## The shared C implementation links into this same wasm32-wasip1 command and
## calls uwvm_ros2_v1 directly. No host Nim runtime or ROS process executes the
## application. JSON preserves every original field; all int64/uint64 values
## are decimal strings. Calls retain no pointer or allocation after returning.

type
  ObservationResult* = object
    ## Owned call metadata. Output is initialized only when errorCode is zero.
    errorCode*: uint32
      ## Original transport, bounded decoder or serializer errno.
    cleanupError*: uint32
      ## Independent capability-close status; retirement is attempted once.
    written*: uint32
      ## Number of complete UTF-8 bytes in the caller-owned output span.
    vendorCode*: int64
      ## Exact original service response code; zero for a state sample.

proc rawObserve(operation: uint32; capabilityAlias: pointer; aliasBytes: uint32;
                timeoutMilliseconds: uint32; output: pointer; capacity: uint32;
                written: ptr uint32; cleanup: ptr uint32; vendorCode: ptr int64): uint32
  {.importc: "agibot_json_observe", cdecl,
    header: "<agibot/shared/observation_json.h>".}

proc observe(operation: uint32; capabilityAlias: cstring; output: var openArray[byte];
             timeoutMilliseconds: uint32): ObservationResult =
  if capabilityAlias == nil or len(capabilityAlias) == 0 or len(capabilityAlias) > 255 or
      output.len == 0 or output.len > 65536:
    result.errorCode = 22
    return
  result.errorCode = rawObserve(operation, cast[pointer](capabilityAlias),
    uint32(len(capabilityAlias)), timeoutMilliseconds, addr output[0], uint32(output.len),
    addr result.written, addr result.cleanupError, addr result.vendorCode)

proc queryMode*(capabilityAlias: cstring; output: var openArray[byte]): ObservationResult =
  ## Query GetMcAction once, with no retry of the service request.
  ## capabilityAlias is a borrowed NUL-terminated granted UTF-8 alias, 1..255 bytes.
  ## output owns 1..65536 writable bytes and must not overlap the alias.
  ## Returns independent ABI/codec and cleanup errors; inspect vendorCode after
  ## success. No capability survives this synchronous call.
  observe(1, capabilityAlias, output, 3000)

proc nextMotionState*(capabilityAlias: cstring; output: var openArray[byte];
                      timeoutMilliseconds: uint32 = 3000): ObservationResult =
  ## Subscribe to original McCommonState and receive one complete sample.
  ## timeoutMilliseconds is 1..30000 ms measured by explicitly granted WASI
  ## monotonic time. Errno 110 means deadline expiry; native units and original
  ## timestamps remain unchanged in JSON. The subscription closes on all paths.
  observe(2, capabilityAlias, output, timeoutMilliseconds)

proc listResources*(capabilityAlias: cstring; output: var openArray[byte]): ObservationResult =
  ## Read complete X2 Ultra GetRobotResources arrays without starting motion.
  ## The alias and output are borrowed until return; independent calls may use
  ## disjoint buffers. Both JSON bounds and the original vendor code are checked
  ## separately. EDU hardware does not officially provide this resource API.
  observe(3, capabilityAlias, output, 3000)

proc writeJson*(bytes: pointer; length: uint32): uint32
  {.importc: "agibot_guest_write_json", cdecl, header: "<agibot/shared/command_io.h>".}
  ## Write initialized JSON and a newline through WASI stdout. Returns 0 or errno.

proc usage*(): uint32
  {.importc: "agibot_guest_usage", cdecl, header: "<agibot/shared/command_io.h>".}
  ## Report the missing/extra alias and return 22, or 5 if the diagnostic fails.

proc diagnostic*(error, cleanup: uint32): uint32
  {.importc: "agibot_guest_diagnostic", cdecl, header: "<agibot/shared/command_io.h>".}
  ## Report both original errors and return application failure, without retry.
