/** @file Records.h
 * @brief Genuine Objective-C class messages over exact full vendor records.
 */
#pragma once
#include <doosan/c/ros1/doosan-ros1-aws-simulation-complete/bounded_interfaces.h>
#include <doosan/c/ros1/doosan-ros1-aws-simulation-complete/bounded_records.h>
/** @brief Complete original dsr_msgs/ConfigCreateModbusRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigCreateModbusRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest*)value;
@end
/** @brief Complete original dsr_msgs/ConfigCreateModbusResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigCreateModbusResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse*)value;
@end
/** @brief Complete original dsr_msgs/ConfigCreateTcpRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigCreateTcpRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest*)value;
@end
/** @brief Complete original dsr_msgs/ConfigCreateTcpResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigCreateTcpResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse*)value;
@end
/** @brief Complete original dsr_msgs/ConfigCreateToolRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigCreateToolRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest*)value;
@end
/** @brief Complete original dsr_msgs/ConfigCreateToolResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigCreateToolResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse*)value;
@end
/** @brief Complete original dsr_msgs/ConfigDeleteModbusRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigDeleteModbusRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest*)value;
@end
/** @brief Complete original dsr_msgs/ConfigDeleteModbusResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigDeleteModbusResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse*)value;
@end
/** @brief Complete original dsr_msgs/ConfigDeleteTcpRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigDeleteTcpRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest*)value;
@end
/** @brief Complete original dsr_msgs/ConfigDeleteTcpResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigDeleteTcpResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse*)value;
@end
/** @brief Complete original dsr_msgs/ConfigDeleteToolRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigDeleteToolRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest*)value;
@end
/** @brief Complete original dsr_msgs/ConfigDeleteToolResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsConfigDeleteToolResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse*)value;
@end
/** @brief Complete original dsr_msgs/DrlPauseRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlPauseRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlPauseRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlPauseRequest*)value;
@end
/** @brief Complete original dsr_msgs/DrlPauseResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlPauseResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlPauseResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlPauseResponse*)value;
@end
/** @brief Complete original dsr_msgs/DrlResumeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlResumeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlResumeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlResumeRequest*)value;
@end
/** @brief Complete original dsr_msgs/DrlResumeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlResumeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlResumeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlResumeResponse*)value;
@end
/** @brief Complete original dsr_msgs/DrlStartRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlStartRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlStartRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlStartRequest*)value;
@end
/** @brief Complete original dsr_msgs/DrlStartResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlStartResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlStartResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlStartResponse*)value;
@end
/** @brief Complete original dsr_msgs/DrlStopRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlStopRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlStopRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlStopRequest*)value;
@end
/** @brief Complete original dsr_msgs/DrlStopResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsDrlStopResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_DrlStopResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_DrlStopResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetCtrlBoxAnalogInputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCtrlBoxAnalogInputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetCtrlBoxAnalogInputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCtrlBoxAnalogInputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetCtrlBoxDigitalInputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCtrlBoxDigitalInputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetCtrlBoxDigitalInputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCtrlBoxDigitalInputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentPoseRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentPoseRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentPoseResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentPoseResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentSolutionSpaceRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentSolutionSpaceRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentSolutionSpaceResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentSolutionSpaceResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentTcpRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentTcpRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentTcpResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentTcpResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentToolRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentToolRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetCurrentToolResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetCurrentToolResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetDrlStateRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetDrlStateRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetDrlStateResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetDrlStateResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetExternalTorqueRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetExternalTorqueRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetExternalTorqueResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetExternalTorqueResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetJointTorqueRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetJointTorqueRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetJointTorqueResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetJointTorqueResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetLastAlarmRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetLastAlarmRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest*)value;
@end
/** @brief Complete original dsr_msgs/LogAlarm codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsLogAlarm
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_LogAlarm const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_LogAlarm*)value;
@end
/** @brief Complete original dsr_msgs/GetLastAlarmResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetLastAlarmResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetModbusInputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetModbusInputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetModbusInputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetModbusInputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotModeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotModeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotModeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotModeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotSpeedModeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotSpeedModeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotSpeedModeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotSpeedModeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotStateRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotStateRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotStateResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotStateResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotSystemRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotSystemRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetRobotSystemResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetRobotSystemResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetToolDigitalInputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetToolDigitalInputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetToolDigitalInputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetToolDigitalInputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse*)value;
@end
/** @brief Complete original dsr_msgs/GetToolForceRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetToolForceRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetToolForceRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetToolForceRequest*)value;
@end
/** @brief Complete original dsr_msgs/GetToolForceResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsGetToolForceResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_GetToolForceResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_GetToolForceResponse*)value;
@end
/** @brief Complete original dsr_msgs/JogRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsJogRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_JogRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_JogRequest*)value;
@end
/** @brief Complete original dsr_msgs/JogResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsJogResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_JogResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_JogResponse*)value;
@end
/** @brief Complete original dsr_msgs/JogMultiRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsJogMultiRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_JogMultiRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_JogMultiRequest*)value;
@end
/** @brief Complete original dsr_msgs/JogMultiResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsJogMultiResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_JogMultiResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_JogMultiResponse*)value;
@end
/** @brief Complete original dsr_msgs/JogMultiAxis codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsJogMultiAxis
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_JogMultiAxis const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_JogMultiAxis*)value;
@end
/** @brief Complete original dsr_msgs/ModbusState codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsModbusState
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_ModbusState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_ModbusState*)value;
@end
/** @brief Complete original std_msgs/MultiArrayDimension codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Std_msgsMultiArrayDimension
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_std_msgs_MultiArrayDimension const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_std_msgs_MultiArrayDimension*)value;
@end
/** @brief Complete original std_msgs/MultiArrayLayout codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Std_msgsMultiArrayLayout
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_std_msgs_MultiArrayLayout const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_std_msgs_MultiArrayLayout*)value;
@end
/** @brief Complete original std_msgs/Float64MultiArray codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Std_msgsFloat64MultiArray
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_std_msgs_Float64MultiArray const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_std_msgs_Float64MultiArray*)value;
@end
/** @brief Complete original dsr_msgs/MoveBlendingRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveBlendingRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveBlendingResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveBlendingResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveCircleRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveCircleRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveCircleRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveCircleRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveCircleResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveCircleResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveCircleResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveCircleResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveJointRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveJointRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveJointRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveJointRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveJointResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveJointResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveJointResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveJointResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveJointxRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveJointxRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveJointxRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveJointxRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveJointxResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveJointxResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveJointxResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveJointxResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveLineRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveLineRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveLineRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveLineRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveLineResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveLineResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveLineResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveLineResponse*)value;
@end
/** @brief Complete original dsr_msgs/MovePauseRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMovePauseRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MovePauseRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MovePauseRequest*)value;
@end
/** @brief Complete original dsr_msgs/MovePauseResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMovePauseResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MovePauseResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MovePauseResponse*)value;
@end
/** @brief Complete original dsr_msgs/MovePeriodicRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMovePeriodicRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest*)value;
@end
/** @brief Complete original dsr_msgs/MovePeriodicResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMovePeriodicResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveResumeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveResumeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveResumeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveResumeRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveResumeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveResumeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveResumeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveResumeResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveSpiralRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveSpiralRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveSpiralResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveSpiralResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveSplineJointRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveSplineJointRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveSplineJointResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveSplineJointResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveSplineTaskRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveSplineTaskRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveSplineTaskResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveSplineTaskResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveStopRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveStopRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveStopRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveStopRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveStopResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveStopResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveStopResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveStopResponse*)value;
@end
/** @brief Complete original dsr_msgs/MoveWaitRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveWaitRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveWaitRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveWaitRequest*)value;
@end
/** @brief Complete original dsr_msgs/MoveWaitResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsMoveWaitResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_MoveWaitResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_MoveWaitResponse*)value;
@end
/** @brief Complete original dsr_msgs/RobotError codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotError
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_RobotError const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_RobotError*)value;
@end
/** @brief Complete original dsr_msgs/RobotState codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotState
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_RobotState const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_RobotState*)value;
@end
/** @brief Complete original dsr_msgs/RobotStop codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotStop
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_RobotStop const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_RobotStop*)value;
@end
/** @brief Complete original dsr_msgs/Robotiq2FCloseRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotiq2FCloseRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest*)value;
@end
/** @brief Complete original dsr_msgs/Robotiq2FCloseResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotiq2FCloseResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse*)value;
@end
/** @brief Complete original dsr_msgs/Robotiq2FMoveRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotiq2FMoveRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest*)value;
@end
/** @brief Complete original dsr_msgs/Robotiq2FMoveResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotiq2FMoveResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse*)value;
@end
/** @brief Complete original dsr_msgs/Robotiq2FOpenRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotiq2FOpenRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest*)value;
@end
/** @brief Complete original dsr_msgs/Robotiq2FOpenResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsRobotiq2FOpenResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse*)value;
@end
/** @brief Complete original dsr_msgs/SerialSendDataRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSerialSendDataRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest*)value;
@end
/** @brief Complete original dsr_msgs/SerialSendDataResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSerialSendDataResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogInputTypeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxAnalogInputTypeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogInputTypeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxAnalogInputTypeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxAnalogOutputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxAnalogOutputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputTypeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxAnalogOutputTypeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxAnalogOutputTypeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxDigitalOutputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxDigitalOutputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetCtrlBoxDigitalOutputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCtrlBoxDigitalOutputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse const*)value
             bytes:(void*)bytes
          capacity:(size_t)capacity
            length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetCurrentTcpRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCurrentTcpRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetCurrentTcpResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCurrentTcpResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetCurrentToolRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCurrentToolRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetCurrentToolResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetCurrentToolResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetModbusOutputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetModbusOutputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetModbusOutputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetModbusOutputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetRobotModeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetRobotModeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetRobotModeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetRobotModeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetRobotSpeedModeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetRobotSpeedModeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetRobotSpeedModeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetRobotSpeedModeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetRobotSystemRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetRobotSystemRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetRobotSystemResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetRobotSystemResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetSafeStopResetTypeRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetSafeStopResetTypeRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetSafeStopResetTypeResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetSafeStopResetTypeResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse*)value;
@end
/** @brief Complete original dsr_msgs/SetToolDigitalOutputRequest codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetToolDigitalOutputRequest
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest*)value;
@end
/** @brief Complete original dsr_msgs/SetToolDigitalOutputResponse codec class. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteRos1Dsr_msgsSetToolDigitalOutputResponse
/**
 * @brief Encode the selected complete record into a caller-owned byte span.
 * @details Delegates to the exact public C codec, preserving its canonical
 * field order, source bounds, finite-float rules and transactional validation.
 * @param value Borrowed complete initialized record; stable through return.
 * @param bytes Exclusive caller-owned output span with at least capacity bytes.
 * @param capacity Writable output extent in bytes; never an element count.
 * @param length Exclusive destination for the complete encoded byte count.
 * @return Zero on complete encoding; 22 for an invalid record or pointer;
 * 90 when the caller span cannot hold the complete bounded representation.
 * @ownership All objects and spans remain caller-owned. No ROS role is opened.
 */
+ (uint32_t)encode:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse const*)value bytes:(void*)bytes capacity:(size_t)capacity length:(size_t*)length;
/**
 * @brief Decode one exact complete canonical record transactionally.
 * @details Truncated, trailing, malformed or out-of-bound fields are refused.
 * @param bytes Borrowed immutable encoded span; stable through return.
 * @param length Exact readable span extent in bytes; no trailing frame allowed.
 * @param value Exclusive destination for the complete decoded record.
 * @return Zero on complete decoding; 22 for invalid inputs, malformed fields,
 * truncation, trailing bytes, overlap or an extent outside the record's bound.
 * @ownership The caller retains every span. On refusal the output record stays
 * unchanged; a successful result owns its complete inline canonical value.
 */
+ (uint32_t)decode:(void const*)bytes length:(size_t)length value:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse*)value;
@end

/** @brief Preserve complete typed service/action roles and results through real Objective-C messages. */
__attribute__((objc_root_class))
@interface DoosanDoosanRos1AwsSimulationCompleteInterfaces
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest const*)request
                                                              response:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateModbus_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_1_dsr_msgs_ConfigCreateModbusResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest const*)request
                                                           response:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_poll:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t*)ticket
                                                            request:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateTcp_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_1_dsr_msgs_ConfigCreateTcpResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_call:(roswasmc_capability const*)cap
                                                             request:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest const*)request
                                                            response:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_poll:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t*)ticket
                                                             request:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigCreateTool_respond:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t)ticket
                                                               response:(roswasmc_bounded_1_dsr_msgs_ConfigCreateToolResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_call:(roswasmc_capability const*)cap
                                                               request:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest const*)request
                                                              response:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_poll:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t*)ticket
                                                               request:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbus_respond:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t)ticket
                                                                 response:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteModbusResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest const*)request
                                                           response:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_poll:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t*)ticket
                                                            request:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcp_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteTcpResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_call:(roswasmc_capability const*)cap
                                                             request:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest const*)request
                                                            response:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_poll:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t*)ticket
                                                             request:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_ConfigDeleteTool_respond:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t)ticket
                                                               response:(roswasmc_bounded_1_dsr_msgs_ConfigDeleteToolResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlPause_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlPause_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_1_dsr_msgs_DrlPauseRequest const*)request
                                                    response:(roswasmc_bounded_1_dsr_msgs_DrlPauseResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlPause_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlPause_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_1_dsr_msgs_DrlPauseRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlPause_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlPause_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_1_dsr_msgs_DrlPauseResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlResume_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlResume_call:(roswasmc_capability const*)cap
                                                      request:(roswasmc_bounded_1_dsr_msgs_DrlResumeRequest const*)request
                                                     response:(roswasmc_bounded_1_dsr_msgs_DrlResumeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlResume_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlResume_poll:(roswasmc_capability const*)cap
                                                       ticket:(uint64_t*)ticket
                                                      request:(roswasmc_bounded_1_dsr_msgs_DrlResumeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlResume_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlResume_respond:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t)ticket
                                                        response:(roswasmc_bounded_1_dsr_msgs_DrlResumeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlStart_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlStart_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_1_dsr_msgs_DrlStartRequest const*)request
                                                    response:(roswasmc_bounded_1_dsr_msgs_DrlStartResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlStart_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlStart_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_1_dsr_msgs_DrlStartRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlStart_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlStart_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_1_dsr_msgs_DrlStartResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlStop_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlStop_call:(roswasmc_capability const*)cap
                                                    request:(roswasmc_bounded_1_dsr_msgs_DrlStopRequest const*)request
                                                   response:(roswasmc_bounded_1_dsr_msgs_DrlStopResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlStop_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlStop_poll:(roswasmc_capability const*)cap
                                                     ticket:(uint64_t*)ticket
                                                    request:(roswasmc_bounded_1_dsr_msgs_DrlStopRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_DrlStop_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_DrlStop_respond:(roswasmc_capability const*)cap
                                                        ticket:(uint64_t)ticket
                                                      response:(roswasmc_bounded_1_dsr_msgs_DrlStopResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_call:(roswasmc_capability const*)cap
                                                                  request:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest const*)request
                                                                 response:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_poll:(roswasmc_capability const*)cap
                                                                   ticket:(uint64_t*)ticket
                                                                  request:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInput_respond:(roswasmc_capability const*)cap
                                                                      ticket:(uint64_t)ticket
                                                                    response:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxAnalogInputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_call:(roswasmc_capability const*)cap
                                                                   request:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest const*)request
                                                                  response:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_poll:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t*)ticket
                                                                   request:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInput_respond:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t)ticket
                                                                     response:(roswasmc_bounded_1_dsr_msgs_GetCtrlBoxDigitalInputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPose_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentPose_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPose_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentPose_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentPose_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentPose_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_GetCurrentPoseResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest const*)request
                                                                   response:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpace_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_1_dsr_msgs_GetCurrentSolutionSpaceResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest const*)request
                                                         response:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentTcp_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_1_dsr_msgs_GetCurrentTcpResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTool_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentTool_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTool_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentTool_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetCurrentTool_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetCurrentTool_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_GetCurrentToolResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetDrlState_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetDrlState_call:(roswasmc_capability const*)cap
                                                        request:(roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest const*)request
                                                       response:(roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetDrlState_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetDrlState_poll:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t*)ticket
                                                        request:(roswasmc_bounded_1_dsr_msgs_GetDrlStateRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetDrlState_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetDrlState_respond:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t)ticket
                                                          response:(roswasmc_bounded_1_dsr_msgs_GetDrlStateResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetExternalTorque_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetExternalTorque_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest const*)request
                                                             response:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetExternalTorque_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetExternalTorque_poll:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t*)ticket
                                                              request:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetExternalTorque_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetExternalTorque_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_1_dsr_msgs_GetExternalTorqueResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetJointTorque_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetJointTorque_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetJointTorque_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetJointTorque_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetJointTorque_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetJointTorque_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_GetJointTorqueResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetLastAlarm_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetLastAlarm_call:(roswasmc_capability const*)cap
                                                         request:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest const*)request
                                                        response:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetLastAlarm_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetLastAlarm_poll:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t*)ticket
                                                         request:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetLastAlarm_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetLastAlarm_respond:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t)ticket
                                                           response:(roswasmc_bounded_1_dsr_msgs_GetLastAlarmResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetModbusInput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetModbusInput_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetModbusInput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetModbusInput_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetModbusInputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetModbusInput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetModbusInput_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_GetModbusInputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotMode_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotMode_call:(roswasmc_capability const*)cap
                                                         request:(roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest const*)request
                                                        response:(roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotMode_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotMode_poll:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t*)ticket
                                                         request:(roswasmc_bounded_1_dsr_msgs_GetRobotModeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotMode_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotMode_respond:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t)ticket
                                                           response:(roswasmc_bounded_1_dsr_msgs_GetRobotModeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest const*)request
                                                             response:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_poll:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t*)ticket
                                                              request:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotSpeedMode_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_1_dsr_msgs_GetRobotSpeedModeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotState_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotState_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest const*)request
                                                         response:(roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotState_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotState_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_1_dsr_msgs_GetRobotStateRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotState_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotState_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_1_dsr_msgs_GetRobotStateResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotSystem_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotSystem_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotSystem_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotSystem_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetRobotSystem_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetRobotSystem_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_GetRobotSystemResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_call:(roswasmc_capability const*)cap
                                                                request:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest const*)request
                                                               response:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_poll:(roswasmc_capability const*)cap
                                                                 ticket:(uint64_t*)ticket
                                                                request:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetToolDigitalInput_respond:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t)ticket
                                                                  response:(roswasmc_bounded_1_dsr_msgs_GetToolDigitalInputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetToolForce_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetToolForce_call:(roswasmc_capability const*)cap
                                                         request:(roswasmc_bounded_1_dsr_msgs_GetToolForceRequest const*)request
                                                        response:(roswasmc_bounded_1_dsr_msgs_GetToolForceResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetToolForce_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetToolForce_poll:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t*)ticket
                                                         request:(roswasmc_bounded_1_dsr_msgs_GetToolForceRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_GetToolForce_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_GetToolForce_respond:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t)ticket
                                                           response:(roswasmc_bounded_1_dsr_msgs_GetToolForceResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Jog_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Jog_call:(roswasmc_capability const*)cap
                                                request:(roswasmc_bounded_1_dsr_msgs_JogRequest const*)request
                                               response:(roswasmc_bounded_1_dsr_msgs_JogResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Jog_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Jog_poll:(roswasmc_capability const*)cap
                                                 ticket:(uint64_t*)ticket
                                                request:(roswasmc_bounded_1_dsr_msgs_JogRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Jog_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Jog_respond:(roswasmc_capability const*)cap
                                                    ticket:(uint64_t)ticket
                                                  response:(roswasmc_bounded_1_dsr_msgs_JogResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_JogMulti_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_JogMulti_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_1_dsr_msgs_JogMultiRequest const*)request
                                                    response:(roswasmc_bounded_1_dsr_msgs_JogMultiResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_JogMulti_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_JogMulti_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_1_dsr_msgs_JogMultiRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_JogMulti_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_JogMulti_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_1_dsr_msgs_JogMultiResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveBlending_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveBlending_call:(roswasmc_capability const*)cap
                                                         request:(roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest const*)request
                                                        response:(roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveBlending_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveBlending_poll:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t*)ticket
                                                         request:(roswasmc_bounded_1_dsr_msgs_MoveBlendingRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveBlending_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveBlending_respond:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t)ticket
                                                           response:(roswasmc_bounded_1_dsr_msgs_MoveBlendingResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveCircle_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveCircle_call:(roswasmc_capability const*)cap
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveCircleRequest const*)request
                                                      response:(roswasmc_bounded_1_dsr_msgs_MoveCircleResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveCircle_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveCircle_poll:(roswasmc_capability const*)cap
                                                        ticket:(uint64_t*)ticket
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveCircleRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveCircle_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveCircle_respond:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t)ticket
                                                         response:(roswasmc_bounded_1_dsr_msgs_MoveCircleResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveJoint_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveJoint_call:(roswasmc_capability const*)cap
                                                      request:(roswasmc_bounded_1_dsr_msgs_MoveJointRequest const*)request
                                                     response:(roswasmc_bounded_1_dsr_msgs_MoveJointResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveJoint_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveJoint_poll:(roswasmc_capability const*)cap
                                                       ticket:(uint64_t*)ticket
                                                      request:(roswasmc_bounded_1_dsr_msgs_MoveJointRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveJoint_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveJoint_respond:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t)ticket
                                                        response:(roswasmc_bounded_1_dsr_msgs_MoveJointResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveJointx_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveJointx_call:(roswasmc_capability const*)cap
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveJointxRequest const*)request
                                                      response:(roswasmc_bounded_1_dsr_msgs_MoveJointxResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveJointx_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveJointx_poll:(roswasmc_capability const*)cap
                                                        ticket:(uint64_t*)ticket
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveJointxRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveJointx_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveJointx_respond:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t)ticket
                                                         response:(roswasmc_bounded_1_dsr_msgs_MoveJointxResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveLine_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveLine_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_1_dsr_msgs_MoveLineRequest const*)request
                                                    response:(roswasmc_bounded_1_dsr_msgs_MoveLineResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveLine_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveLine_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_1_dsr_msgs_MoveLineRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveLine_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveLine_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_1_dsr_msgs_MoveLineResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MovePause_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MovePause_call:(roswasmc_capability const*)cap
                                                      request:(roswasmc_bounded_1_dsr_msgs_MovePauseRequest const*)request
                                                     response:(roswasmc_bounded_1_dsr_msgs_MovePauseResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MovePause_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MovePause_poll:(roswasmc_capability const*)cap
                                                       ticket:(uint64_t*)ticket
                                                      request:(roswasmc_bounded_1_dsr_msgs_MovePauseRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MovePause_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MovePause_respond:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t)ticket
                                                        response:(roswasmc_bounded_1_dsr_msgs_MovePauseResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MovePeriodic_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MovePeriodic_call:(roswasmc_capability const*)cap
                                                         request:(roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest const*)request
                                                        response:(roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MovePeriodic_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MovePeriodic_poll:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t*)ticket
                                                         request:(roswasmc_bounded_1_dsr_msgs_MovePeriodicRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MovePeriodic_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MovePeriodic_respond:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t)ticket
                                                           response:(roswasmc_bounded_1_dsr_msgs_MovePeriodicResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveResume_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveResume_call:(roswasmc_capability const*)cap
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveResumeRequest const*)request
                                                      response:(roswasmc_bounded_1_dsr_msgs_MoveResumeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveResume_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveResume_poll:(roswasmc_capability const*)cap
                                                        ticket:(uint64_t*)ticket
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveResumeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveResume_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveResume_respond:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t)ticket
                                                         response:(roswasmc_bounded_1_dsr_msgs_MoveResumeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSpiral_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSpiral_call:(roswasmc_capability const*)cap
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest const*)request
                                                      response:(roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSpiral_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSpiral_poll:(roswasmc_capability const*)cap
                                                        ticket:(uint64_t*)ticket
                                                       request:(roswasmc_bounded_1_dsr_msgs_MoveSpiralRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSpiral_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSpiral_respond:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t)ticket
                                                         response:(roswasmc_bounded_1_dsr_msgs_MoveSpiralResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest const*)request
                                                           response:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_poll:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t*)ticket
                                                            request:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSplineJoint_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_1_dsr_msgs_MoveSplineJointResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSplineTask_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSplineTask_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSplineTask_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSplineTask_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveSplineTask_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveSplineTask_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_MoveSplineTaskResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveStop_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveStop_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_1_dsr_msgs_MoveStopRequest const*)request
                                                    response:(roswasmc_bounded_1_dsr_msgs_MoveStopResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveStop_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveStop_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_1_dsr_msgs_MoveStopRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveStop_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveStop_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_1_dsr_msgs_MoveStopResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveWait_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveWait_call:(roswasmc_capability const*)cap
                                                     request:(roswasmc_bounded_1_dsr_msgs_MoveWaitRequest const*)request
                                                    response:(roswasmc_bounded_1_dsr_msgs_MoveWaitResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveWait_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveWait_poll:(roswasmc_capability const*)cap
                                                      ticket:(uint64_t*)ticket
                                                     request:(roswasmc_bounded_1_dsr_msgs_MoveWaitRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_MoveWait_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_MoveWait_respond:(roswasmc_capability const*)cap
                                                         ticket:(uint64_t)ticket
                                                       response:(roswasmc_bounded_1_dsr_msgs_MoveWaitResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FClose_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_Robotiq2FCloseResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest const*)request
                                                         response:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FMove_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_1_dsr_msgs_Robotiq2FMoveResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest const*)request
                                                         response:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_Robotiq2FOpen_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_1_dsr_msgs_Robotiq2FOpenResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SerialSendData_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SerialSendData_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SerialSendData_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SerialSendData_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_SerialSendDataRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SerialSendData_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SerialSendData_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_SerialSendDataResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_call:(roswasmc_capability const*)cap
                                                                      request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest const*)request
                                                                     response:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_poll:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t*)ticket
                                                                      request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputType_respond:(roswasmc_capability const*)cap
                                                                          ticket:(uint64_t)ticket
                                                                        response:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogInputTypeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_call:(roswasmc_capability const*)cap
                                                                   request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest const*)request
                                                                  response:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_poll:(roswasmc_capability const*)cap
                                                                    ticket:(uint64_t*)ticket
                                                                   request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutput_respond:(roswasmc_capability const*)cap
                                                                       ticket:(uint64_t)ticket
                                                                     response:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_call:(roswasmc_capability const*)cap
                                                                       request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest const*)request
                                                                      response:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_poll:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t*)ticket
                                                                       request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputType_respond:(roswasmc_capability const*)cap
                                                                           ticket:(uint64_t)ticket
                                                                         response:
                                                                             (roswasmc_bounded_1_dsr_msgs_SetCtrlBoxAnalogOutputTypeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_call:(roswasmc_capability const*)cap
                                                                    request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest const*)request
                                                                   response:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_poll:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t*)ticket
                                                                    request:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutput_respond:(roswasmc_capability const*)cap
                                                                        ticket:(uint64_t)ticket
                                                                      response:(roswasmc_bounded_1_dsr_msgs_SetCtrlBoxDigitalOutputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_call:(roswasmc_capability const*)cap
                                                          request:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest const*)request
                                                         response:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_poll:(roswasmc_capability const*)cap
                                                           ticket:(uint64_t*)ticket
                                                          request:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCurrentTcp_respond:(roswasmc_capability const*)cap
                                                              ticket:(uint64_t)ticket
                                                            response:(roswasmc_bounded_1_dsr_msgs_SetCurrentTcpResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTool_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCurrentTool_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTool_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCurrentTool_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetCurrentTool_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetCurrentTool_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_SetCurrentToolResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetModbusOutput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetModbusOutput_call:(roswasmc_capability const*)cap
                                                            request:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest const*)request
                                                           response:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetModbusOutput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetModbusOutput_poll:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t*)ticket
                                                            request:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetModbusOutput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetModbusOutput_respond:(roswasmc_capability const*)cap
                                                                ticket:(uint64_t)ticket
                                                              response:(roswasmc_bounded_1_dsr_msgs_SetModbusOutputResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotMode_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotMode_call:(roswasmc_capability const*)cap
                                                         request:(roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest const*)request
                                                        response:(roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotMode_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotMode_poll:(roswasmc_capability const*)cap
                                                          ticket:(uint64_t*)ticket
                                                         request:(roswasmc_bounded_1_dsr_msgs_SetRobotModeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotMode_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotMode_respond:(roswasmc_capability const*)cap
                                                             ticket:(uint64_t)ticket
                                                           response:(roswasmc_bounded_1_dsr_msgs_SetRobotModeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_call:(roswasmc_capability const*)cap
                                                              request:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest const*)request
                                                             response:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_poll:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t*)ticket
                                                              request:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotSpeedMode_respond:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t)ticket
                                                                response:(roswasmc_bounded_1_dsr_msgs_SetRobotSpeedModeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotSystem_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotSystem_call:(roswasmc_capability const*)cap
                                                           request:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest const*)request
                                                          response:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotSystem_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotSystem_poll:(roswasmc_capability const*)cap
                                                            ticket:(uint64_t*)ticket
                                                           request:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetRobotSystem_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetRobotSystem_respond:(roswasmc_capability const*)cap
                                                               ticket:(uint64_t)ticket
                                                             response:(roswasmc_bounded_1_dsr_msgs_SetRobotSystemResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_call:(roswasmc_capability const*)cap
                                                                 request:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest const*)request
                                                                response:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_poll:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t*)ticket
                                                                 request:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetSafeStopResetType_respond:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t)ticket
                                                                   response:(roswasmc_bounded_1_dsr_msgs_SetSafeStopResetTypeResponse const*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_call.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param request Complete immutable selected canonical value; keep its storage stable through return.
 * @param response Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_call:(roswasmc_capability const*)cap
                                                                 request:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest const*)request
                                                                response:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse*)response;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_poll.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param request Exclusive caller destination; consume only when the full returned result reports success.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_poll:(roswasmc_capability const*)cap
                                                                  ticket:(uint64_t*)ticket
                                                                 request:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputRequest*)request;
/**
 * @brief Invoke one complete original typed service/action operation.
 * @details Delegates directly to the selected public C implementation:
 * \c roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_respond.
 * Borrow stable caller-initialized roles and exact complete values. Admission,
 * pending ownership, framing, no-replay rules and cleanup remain unchanged.
 * @param cap Borrowed explicitly admitted capability; its backend/context stay live through return.
 * @param ticket Exact owned correlation ID, or caller destination for the admitted ID when pointer-qualified.
 * @param response Complete immutable selected canonical value; keep its storage stable through return.
 * @return The complete original roswasmc_result, including error and observed
 * length facts. No partial result is reclassified as successful delivery.
 * @ownership Every passed object/span remains caller-owned. No alias is opened,
 * no native ROS pointer crosses this ABI and no permission is granted.
 * @thread Use the original admitted Guest execution thread and owner lease.
 */
+ (roswasmc_result)roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutput_respond:(roswasmc_capability const*)cap
                                                                     ticket:(uint64_t)ticket
                                                                   response:(roswasmc_bounded_1_dsr_msgs_SetToolDigitalOutputResponse const*)response;
@end
