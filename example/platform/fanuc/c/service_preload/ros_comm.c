/**
 * @file ros_comm.c
 * @brief Keep the sole native read-service capability in one shared Wasm.
 * @details Only this module may receive the operator's explicit ROS grant and
 * module-exports call boundary. It owns request, response, canonical bytes and
 * cleanup. Scalars are returned after the synchronous owner has been closed.
 */
#include <fanuc/c/ros2/fanuc-ros2-complete/bounded_interfaces.h>
#include <ros2/c/roswasm/ros2.h>
#include <stdint.h>

static unsigned char response_wire[32];
static uint32_t primary_status, cleanup_status, cleanup_present, rpc_status = UINT32_MAX;
static uint32_t rpc_present, response_present, response_size, attempted;

/**
 * @brief Perform one original request using this module's fixed manual alias.
 * @param schedule Exact uint16 payload schedule;the standalone example selects7.
 * @return Actual primary status, including semantic refusal5 or permission13.
 * @details The fixed alias is sample. An attempted call is never replayed.
 * A complete controller refusal keeps all fields; close status remains separate.
 */
__attribute__((visibility("default"))) uint32_t payload_service_call(uint32_t schedule)
{
    if(attempted || schedule > UINT16_MAX) { return 22; }
    attempted = 1;
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability owner;
    roswasmc_capability_init(&owner, &context);
    roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_Request request = {0};
    roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_Response response = {0};
    request.payload_schedule_id = (uint16_t)schedule;
    primary_status = roswasmc_open(&owner, "sample", 6);
    if(!primary_status)
    {
        roswasmc_result rpc = roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_call(&owner, &request, &response);
        rpc_present = 1;
        rpc_status = rpc.error;
        primary_status = rpc.error;
        if(!primary_status)
        {
            size_t size = 0;
            primary_status = roswasmc_bounded_2_fanuc_msgs_srv_GetPayloadValue_Response_encode(&response, response_wire, sizeof response_wire, &size);
            if(!primary_status)
            {
                response_present = 1;
                response_size = (uint32_t)size;
                if(response.result) { primary_status = 5; }
            }
        }
        cleanup_present = 1;
        cleanup_status = roswasmc_close(&owner);
    }
    return primary_status;
}

/** @brief Return the original close status independently of the primary result. */
__attribute__((visibility("default"))) uint32_t payload_service_cleanup(void)
{ return cleanup_status; }

/** @brief Report whether a close was actually attempted. */
__attribute__((visibility("default"))) uint32_t payload_service_cleanup_present(void)
{ return cleanup_present; }

/** @brief Return the actual RPC status, or UINT32_MAX when no RPC was admitted. */
__attribute__((visibility("default"))) uint32_t payload_service_rpc(void)
{ return rpc_status; }

/** @brief Report whether a native service-call import was actually attempted. */
__attribute__((visibility("default"))) uint32_t payload_service_rpc_present(void)
{ return rpc_present; }

/** @brief Report whether a complete canonical original response is retained. */
__attribute__((visibility("default"))) uint32_t payload_service_present(void)
{ return response_present; }

/** @brief Return the complete retained response extent in bytes. */
__attribute__((visibility("default"))) uint32_t payload_service_size(void)
{ return response_size; }

/**
 * @brief Copy one retained response byte through a scalar return value.
 * @param index Byte offset in this module's retained response.
 * @return Exact byte0..255, or sentinel256 for an invalid or absent byte.
 */
__attribute__((visibility("default"))) uint32_t payload_service_byte(uint32_t index)
{ return response_present && index < response_size ? response_wire[index] : 256; }
