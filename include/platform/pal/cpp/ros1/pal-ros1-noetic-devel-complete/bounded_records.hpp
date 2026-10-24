/** @file C++20 typed bounded canonical records, independent of native ROS libraries.
 * Includes use the existing roswasmcpp Publisher/Subscription codecs and do not grant
 * aliases. Custom Service/Action component codecs also accept the raw typed RPC facade. */
#pragma once
#include <platform/pal/c/ros1/pal-ros1-noetic-devel-complete/bounded_records.h>
#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>

namespace uwvm_custom
{
    /** @brief Complete bounded guest value for geometry_msgs/Vector3. */
    using Ros1Geometry_msgsVector3 = roswasmc_bounded_1_geometry_msgs_Vector3;
    /** @brief Complete bounded guest value for geometry_msgs/Accel. */
    using Ros1Geometry_msgsAccel = roswasmc_bounded_1_geometry_msgs_Accel;
    /** @brief Complete bounded guest value for geometry_msgs/Point. */
    using Ros1Geometry_msgsPoint = roswasmc_bounded_1_geometry_msgs_Point;
    /** @brief Complete bounded guest value for geometry_msgs/Point32. */
    using Ros1Geometry_msgsPoint32 = roswasmc_bounded_1_geometry_msgs_Point32;
    /** @brief Complete bounded guest value for time. */
    using Ros1Time = roswasmc_bounded_1_time;
    /** @brief Complete bounded guest value for std_msgs/Header. */
    using Ros1Std_msgsHeader = roswasmc_bounded_1_std_msgs_Header;
    /** @brief Complete bounded guest value for geometry_msgs/PointStamped. */
    using Ros1Geometry_msgsPointStamped = roswasmc_bounded_1_geometry_msgs_PointStamped;
    /** @brief Complete bounded guest value for geometry_msgs/Quaternion. */
    using Ros1Geometry_msgsQuaternion = roswasmc_bounded_1_geometry_msgs_Quaternion;
    /** @brief Complete bounded guest value for geometry_msgs/Pose. */
    using Ros1Geometry_msgsPose = roswasmc_bounded_1_geometry_msgs_Pose;
    /** @brief Complete bounded guest value for geometry_msgs/Pose2D. */
    using Ros1Geometry_msgsPose2D = roswasmc_bounded_1_geometry_msgs_Pose2D;
    /** @brief Complete bounded guest value for geometry_msgs/PoseArray. */
    using Ros1Geometry_msgsPoseArray = roswasmc_bounded_1_geometry_msgs_PoseArray;
    /** @brief Complete bounded guest value for geometry_msgs/PoseWithCovariance. */
    using Ros1Geometry_msgsPoseWithCovariance = roswasmc_bounded_1_geometry_msgs_PoseWithCovariance;
    /** @brief Complete bounded guest value for geometry_msgs/PoseWithCovarianceStamped. */
    using Ros1Geometry_msgsPoseWithCovarianceStamped = roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped;
    /** @brief Complete bounded guest value for geometry_msgs/Transform. */
    using Ros1Geometry_msgsTransform = roswasmc_bounded_1_geometry_msgs_Transform;
    /** @brief Complete bounded guest value for geometry_msgs/TransformStamped. */
    using Ros1Geometry_msgsTransformStamped = roswasmc_bounded_1_geometry_msgs_TransformStamped;
    /** @brief Complete bounded guest value for geometry_msgs/Twist. */
    using Ros1Geometry_msgsTwist = roswasmc_bounded_1_geometry_msgs_Twist;
    /** @brief Complete bounded guest value for geometry_msgs/Wrench. */
    using Ros1Geometry_msgsWrench = roswasmc_bounded_1_geometry_msgs_Wrench;
    /** @brief Complete bounded guest value for humanoid_nav_msgs/StepTarget. */
    using Ros1Humanoid_nav_msgsStepTarget = roswasmc_bounded_1_humanoid_nav_msgs_StepTarget;
    /** @brief Complete bounded guest value for nav_msgs/MapMetaData. */
    using Ros1Nav_msgsMapMetaData = roswasmc_bounded_1_nav_msgs_MapMetaData;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/BehaviourArgument. */
    using Ros1Pal_behaviour_msgsBehaviourArgument = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/BehaviourEventRequest. */
    using Ros1Pal_behaviour_msgsBehaviourEventRequest = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/BehaviourEventResponse. */
    using Ros1Pal_behaviour_msgsBehaviourEventResponse = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/BehaviourTaskGoal. */
    using Ros1Pal_behaviour_msgsBehaviourTaskGoal = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/BehaviourTaskResult. */
    using Ros1Pal_behaviour_msgsBehaviourTaskResult = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/BehaviourTaskFeedback. */
    using Ros1Pal_behaviour_msgsBehaviourTaskFeedback = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/PresentationGoal. */
    using Ros1Pal_behaviour_msgsPresentationGoal = roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/PresentationResult. */
    using Ros1Pal_behaviour_msgsPresentationResult = roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult;
    /** @brief Complete bounded guest value for pal_behaviour_msgs/PresentationFeedback. */
    using Ros1Pal_behaviour_msgsPresentationFeedback = roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback;
    /** @brief Complete bounded guest value for pal_common_msgs/DisableGoal. */
    using Ros1Pal_common_msgsDisableGoal = roswasmc_bounded_1_pal_common_msgs_DisableGoal;
    /** @brief Complete bounded guest value for pal_common_msgs/DisableResult. */
    using Ros1Pal_common_msgsDisableResult = roswasmc_bounded_1_pal_common_msgs_DisableResult;
    /** @brief Complete bounded guest value for pal_common_msgs/DisableFeedback. */
    using Ros1Pal_common_msgsDisableFeedback = roswasmc_bounded_1_pal_common_msgs_DisableFeedback;
    /** @brief Complete bounded guest value for pal_common_msgs/EmptyGoal. */
    using Ros1Pal_common_msgsEmptyGoal = roswasmc_bounded_1_pal_common_msgs_EmptyGoal;
    /** @brief Complete bounded guest value for pal_common_msgs/EmptyResult. */
    using Ros1Pal_common_msgsEmptyResult = roswasmc_bounded_1_pal_common_msgs_EmptyResult;
    /** @brief Complete bounded guest value for pal_common_msgs/EmptyFeedback. */
    using Ros1Pal_common_msgsEmptyFeedback = roswasmc_bounded_1_pal_common_msgs_EmptyFeedback;
    /** @brief Complete bounded guest value for pal_common_msgs/GetStringRequest. */
    using Ros1Pal_common_msgsGetStringRequest = roswasmc_bounded_1_pal_common_msgs_GetStringRequest;
    /** @brief Complete bounded guest value for pal_common_msgs/GetStringResponse. */
    using Ros1Pal_common_msgsGetStringResponse = roswasmc_bounded_1_pal_common_msgs_GetStringResponse;
    /** @brief Complete bounded guest value for pal_common_msgs/JointCurrent. */
    using Ros1Pal_common_msgsJointCurrent = roswasmc_bounded_1_pal_common_msgs_JointCurrent;
    /** @brief Complete bounded guest value for pal_common_msgs/SetStringRequest. */
    using Ros1Pal_common_msgsSetStringRequest = roswasmc_bounded_1_pal_common_msgs_SetStringRequest;
    /** @brief Complete bounded guest value for pal_common_msgs/SetStringResponse. */
    using Ros1Pal_common_msgsSetStringResponse = roswasmc_bounded_1_pal_common_msgs_SetStringResponse;
    /** @brief Complete bounded guest value for pal_control_msgs/ActuatorCurrentLimit. */
    using Ros1Pal_control_msgsActuatorCurrentLimit = roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit;
    /** @brief Complete bounded guest value for pal_control_msgs/CurrentLimitRequest. */
    using Ros1Pal_control_msgsCurrentLimitRequest = roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest;
    /** @brief Complete bounded guest value for pal_control_msgs/CurrentLimitResponse. */
    using Ros1Pal_control_msgsCurrentLimitResponse = roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse;
    /** @brief Complete bounded guest value for pal_control_msgs/MotionManagerGoal. */
    using Ros1Pal_control_msgsMotionManagerGoal = roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal;
    /** @brief Complete bounded guest value for pal_control_msgs/MotionManagerResult. */
    using Ros1Pal_control_msgsMotionManagerResult = roswasmc_bounded_1_pal_control_msgs_MotionManagerResult;
    /** @brief Complete bounded guest value for pal_control_msgs/MotionManagerFeedback. */
    using Ros1Pal_control_msgsMotionManagerFeedback = roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback;
    /** @brief Complete bounded guest value for duration. */
    using Ros1Duration = roswasmc_bounded_1_duration;
    /** @brief Complete bounded guest value for pal_control_msgs/OperationalSpaceGoal. */
    using Ros1Pal_control_msgsOperationalSpaceGoal = roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal;
    /** @brief Complete bounded guest value for pal_control_msgs/RigidBodyTrajectoryPoint. */
    using Ros1Pal_control_msgsRigidBodyTrajectoryPoint = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint;
    /** @brief Complete bounded guest value for pal_control_msgs/RigidBodyTrajectoryGoal. */
    using Ros1Pal_control_msgsRigidBodyTrajectoryGoal = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal;
    /** @brief Complete bounded guest value for pal_control_msgs/RigidBodyTrajectoryResult. */
    using Ros1Pal_control_msgsRigidBodyTrajectoryResult = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult;
    /** @brief Complete bounded guest value for pal_control_msgs/RigidBodyTrajectoryFeedback. */
    using Ros1Pal_control_msgsRigidBodyTrajectoryFeedback = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback;
    /** @brief Complete bounded guest value for sensor_msgs/Image. */
    using Ros1Sensor_msgsImage = roswasmc_bounded_1_sensor_msgs_Image;
    /** @brief Complete bounded guest value for pal_detection_msgs/AddTexturedObjectRequest. */
    using Ros1Pal_detection_msgsAddTexturedObjectRequest = roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest;
    /** @brief Complete bounded guest value for pal_detection_msgs/AddTexturedObjectResponse. */
    using Ros1Pal_detection_msgsAddTexturedObjectResponse = roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse;
    /** @brief Complete bounded guest value for pal_detection_msgs/ChangeObjectRecognizerModelRequest. */
    using Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest = roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest;
    /** @brief Complete bounded guest value for pal_detection_msgs/ChangeObjectRecognizerModelResponse. */
    using Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse = roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse;
    /** @brief Complete bounded guest value for pal_detection_msgs/Detection2d. */
    using Ros1Pal_detection_msgsDetection2d = roswasmc_bounded_1_pal_detection_msgs_Detection2d;
    /** @brief Complete bounded guest value for pal_detection_msgs/Detections2d. */
    using Ros1Pal_detection_msgsDetections2d = roswasmc_bounded_1_pal_detection_msgs_Detections2d;
    /** @brief Complete bounded guest value for pal_detection_msgs/FaceDetection. */
    using Ros1Pal_detection_msgsFaceDetection = roswasmc_bounded_1_pal_detection_msgs_FaceDetection;
    /** @brief Complete bounded guest value for pal_detection_msgs/FaceDetections. */
    using Ros1Pal_detection_msgsFaceDetections = roswasmc_bounded_1_pal_detection_msgs_FaceDetections;
    /** @brief Complete bounded guest value for sensor_msgs/RegionOfInterest. */
    using Ros1Sensor_msgsRegionOfInterest = roswasmc_bounded_1_sensor_msgs_RegionOfInterest;
    /** @brief Complete bounded guest value for pal_detection_msgs/FaceThermalDetections. */
    using Ros1Pal_detection_msgsFaceThermalDetections = roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections;
    /** @brief Complete bounded guest value for pal_detection_msgs/Gesture. */
    using Ros1Pal_detection_msgsGesture = roswasmc_bounded_1_pal_detection_msgs_Gesture;
    /** @brief Complete bounded guest value for pal_detection_msgs/LegDetections. */
    using Ros1Pal_detection_msgsLegDetections = roswasmc_bounded_1_pal_detection_msgs_LegDetections;
    /** @brief Complete bounded guest value for pal_detection_msgs/Obstacle. */
    using Ros1Pal_detection_msgsObstacle = roswasmc_bounded_1_pal_detection_msgs_Obstacle;
    /** @brief Complete bounded guest value for pal_detection_msgs/Obstacles. */
    using Ros1Pal_detection_msgsObstacles = roswasmc_bounded_1_pal_detection_msgs_Obstacles;
    /** @brief Complete bounded guest value for pal_detection_msgs/PersonDetection. */
    using Ros1Pal_detection_msgsPersonDetection = roswasmc_bounded_1_pal_detection_msgs_PersonDetection;
    /** @brief Complete bounded guest value for pal_detection_msgs/PersonDetections. */
    using Ros1Pal_detection_msgsPersonDetections = roswasmc_bounded_1_pal_detection_msgs_PersonDetections;
    /** @brief Complete bounded guest value for sensor_msgs/CompressedImage. */
    using Ros1Sensor_msgsCompressedImage = roswasmc_bounded_1_sensor_msgs_CompressedImage;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizeObjectsGoal. */
    using Ros1Pal_detection_msgsRecognizeObjectsGoal = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizedObject. */
    using Ros1Pal_detection_msgsRecognizedObject = roswasmc_bounded_1_pal_detection_msgs_RecognizedObject;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizedObjectArray. */
    using Ros1Pal_detection_msgsRecognizedObjectArray = roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizeObjectsResult. */
    using Ros1Pal_detection_msgsRecognizeObjectsResult = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizeObjectsFeedback. */
    using Ros1Pal_detection_msgsRecognizeObjectsFeedback = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizedActions. */
    using Ros1Pal_detection_msgsRecognizedActions = roswasmc_bounded_1_pal_detection_msgs_RecognizedActions;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizerRequest. */
    using Ros1Pal_detection_msgsRecognizerRequest = roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest;
    /** @brief Complete bounded guest value for pal_detection_msgs/RecognizerResponse. */
    using Ros1Pal_detection_msgsRecognizerResponse = roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse;
    /** @brief Complete bounded guest value for pal_detection_msgs/RotatedDetection2d. */
    using Ros1Pal_detection_msgsRotatedDetection2d = roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d;
    /** @brief Complete bounded guest value for pal_detection_msgs/SelectTexturedObjectRequest. */
    using Ros1Pal_detection_msgsSelectTexturedObjectRequest = roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest;
    /** @brief Complete bounded guest value for pal_detection_msgs/SelectTexturedObjectResponse. */
    using Ros1Pal_detection_msgsSelectTexturedObjectResponse = roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse;
    /** @brief Complete bounded guest value for pal_detection_msgs/SetDatabaseRequest. */
    using Ros1Pal_detection_msgsSetDatabaseRequest = roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest;
    /** @brief Complete bounded guest value for pal_detection_msgs/SetDatabaseResponse. */
    using Ros1Pal_detection_msgsSetDatabaseResponse = roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse;
    /** @brief Complete bounded guest value for pal_detection_msgs/StartEnrollmentRequest. */
    using Ros1Pal_detection_msgsStartEnrollmentRequest = roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest;
    /** @brief Complete bounded guest value for pal_detection_msgs/StartEnrollmentResponse. */
    using Ros1Pal_detection_msgsStartEnrollmentResponse = roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse;
    /** @brief Complete bounded guest value for pal_detection_msgs/StopEnrollmentRequest. */
    using Ros1Pal_detection_msgsStopEnrollmentRequest = roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest;
    /** @brief Complete bounded guest value for pal_detection_msgs/StopEnrollmentResponse. */
    using Ros1Pal_detection_msgsStopEnrollmentResponse = roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse;
    /** @brief Complete bounded guest value for pal_detection_msgs/TexturedObjectDetection. */
    using Ros1Pal_detection_msgsTexturedObjectDetection = roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection;
    /** @brief Complete bounded guest value for pal_detection_msgs/WaveDetection. */
    using Ros1Pal_detection_msgsWaveDetection = roswasmc_bounded_1_pal_detection_msgs_WaveDetection;
    /** @brief Complete bounded guest value for pal_device_msgs/BatteryState. */
    using Ros1Pal_device_msgsBatteryState = roswasmc_bounded_1_pal_device_msgs_BatteryState;
    /** @brief Complete bounded guest value for pal_device_msgs/Bumper. */
    using Ros1Pal_device_msgsBumper = roswasmc_bounded_1_pal_device_msgs_Bumper;
    /** @brief Complete bounded guest value for pal_device_msgs/CancelEffectRequest. */
    using Ros1Pal_device_msgsCancelEffectRequest = roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest;
    /** @brief Complete bounded guest value for pal_device_msgs/CancelEffectResponse. */
    using Ros1Pal_device_msgsCancelEffectResponse = roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse;
    /** @brief Complete bounded guest value for std_msgs/ColorRGBA. */
    using Ros1Std_msgsColorRGBA = roswasmc_bounded_1_std_msgs_ColorRGBA;
    /** @brief Complete bounded guest value for pal_device_msgs/LedFixedColorParams. */
    using Ros1Pal_device_msgsLedFixedColorParams = roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedRainbowParams. */
    using Ros1Pal_device_msgsLedRainbowParams = roswasmc_bounded_1_pal_device_msgs_LedRainbowParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedFadeParams. */
    using Ros1Pal_device_msgsLedFadeParams = roswasmc_bounded_1_pal_device_msgs_LedFadeParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedBlinkParams. */
    using Ros1Pal_device_msgsLedBlinkParams = roswasmc_bounded_1_pal_device_msgs_LedBlinkParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedProgressParams. */
    using Ros1Pal_device_msgsLedProgressParams = roswasmc_bounded_1_pal_device_msgs_LedProgressParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedFlowParams. */
    using Ros1Pal_device_msgsLedFlowParams = roswasmc_bounded_1_pal_device_msgs_LedFlowParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedPreProgrammedParams. */
    using Ros1Pal_device_msgsLedPreProgrammedParams = roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedEffectViaTopicParams. */
    using Ros1Pal_device_msgsLedEffectViaTopicParams = roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedDataArrayParams. */
    using Ros1Pal_device_msgsLedDataArrayParams = roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams;
    /** @brief Complete bounded guest value for pal_device_msgs/LedEffectParams. */
    using Ros1Pal_device_msgsLedEffectParams = roswasmc_bounded_1_pal_device_msgs_LedEffectParams;
    /** @brief Complete bounded guest value for pal_device_msgs/DoTimedLedEffectGoal. */
    using Ros1Pal_device_msgsDoTimedLedEffectGoal = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal;
    /** @brief Complete bounded guest value for pal_device_msgs/DoTimedLedEffectResult. */
    using Ros1Pal_device_msgsDoTimedLedEffectResult = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult;
    /** @brief Complete bounded guest value for pal_device_msgs/DoTimedLedEffectFeedback. */
    using Ros1Pal_device_msgsDoTimedLedEffectFeedback = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback;
    /** @brief Complete bounded guest value for pal_device_msgs/LedGroup. */
    using Ros1Pal_device_msgsLedGroup = roswasmc_bounded_1_pal_device_msgs_LedGroup;
    /** @brief Complete bounded guest value for pal_device_msgs/ShutdownAndWakeUpRobotRequest. */
    using Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest = roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest;
    /** @brief Complete bounded guest value for pal_device_msgs/ShutdownAndWakeUpRobotResponse. */
    using Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse = roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse;
    /** @brief Complete bounded guest value for pal_device_msgs/TimedBlinkEffectRequest. */
    using Ros1Pal_device_msgsTimedBlinkEffectRequest = roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest;
    /** @brief Complete bounded guest value for pal_device_msgs/TimedBlinkEffectResponse. */
    using Ros1Pal_device_msgsTimedBlinkEffectResponse = roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse;
    /** @brief Complete bounded guest value for pal_device_msgs/TimedColourEffectRequest. */
    using Ros1Pal_device_msgsTimedColourEffectRequest = roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest;
    /** @brief Complete bounded guest value for pal_device_msgs/TimedColourEffectResponse. */
    using Ros1Pal_device_msgsTimedColourEffectResponse = roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse;
    /** @brief Complete bounded guest value for pal_device_msgs/TimedFadeEffectRequest. */
    using Ros1Pal_device_msgsTimedFadeEffectRequest = roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest;
    /** @brief Complete bounded guest value for pal_device_msgs/TimedFadeEffectResponse. */
    using Ros1Pal_device_msgsTimedFadeEffectResponse = roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRActivation. */
    using Ros1Pal_interaction_msgsASRActivation = roswasmc_bounded_1_pal_interaction_msgs_ASRActivation;
    /** @brief Complete bounded guest value for pal_interaction_msgs/actiontag. */
    using Ros1Pal_interaction_msgsActiontag = roswasmc_bounded_1_pal_interaction_msgs_actiontag;
    /** @brief Complete bounded guest value for pal_interaction_msgs/asrresult. */
    using Ros1Pal_interaction_msgsAsrresult = roswasmc_bounded_1_pal_interaction_msgs_asrresult;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASREvent. */
    using Ros1Pal_interaction_msgsASREvent = roswasmc_bounded_1_pal_interaction_msgs_ASREvent;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRFileGoal. */
    using Ros1Pal_interaction_msgsASRFileGoal = roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRFileResult. */
    using Ros1Pal_interaction_msgsASRFileResult = roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRFileFeedback. */
    using Ros1Pal_interaction_msgsASRFileFeedback = roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRLangModelMngmt. */
    using Ros1Pal_interaction_msgsASRLangModelMngmt = roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRLanguage. */
    using Ros1Pal_interaction_msgsASRLanguage = roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRSrvRequest. */
    using Ros1Pal_interaction_msgsASRSrvRequest = roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRServiceRequest. */
    using Ros1Pal_interaction_msgsASRServiceRequest = roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest;
    /** @brief Complete bounded guest value for pal_interaction_msgs/AudioDeviceDescription. */
    using Ros1Pal_interaction_msgsAudioDeviceDescription = roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRStatus. */
    using Ros1Pal_interaction_msgsASRStatus = roswasmc_bounded_1_pal_interaction_msgs_ASRStatus;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRSrvResponse. */
    using Ros1Pal_interaction_msgsASRSrvResponse = roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse;
    /** @brief Complete bounded guest value for pal_interaction_msgs/ASRServiceResponse. */
    using Ros1Pal_interaction_msgsASRServiceResponse = roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse;
    /** @brief Complete bounded guest value for pal_interaction_msgs/AudioPlayGoal. */
    using Ros1Pal_interaction_msgsAudioPlayGoal = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal;
    /** @brief Complete bounded guest value for pal_interaction_msgs/AudioPlayResult. */
    using Ros1Pal_interaction_msgsAudioPlayResult = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult;
    /** @brief Complete bounded guest value for pal_interaction_msgs/AudioPlayFeedback. */
    using Ros1Pal_interaction_msgsAudioPlayFeedback = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback;
    /** @brief Complete bounded guest value for pal_interaction_msgs/AudioPlayerState. */
    using Ros1Pal_interaction_msgsAudioPlayerState = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState;
    /** @brief Complete bounded guest value for pal_interaction_msgs/DirectionOfArrival. */
    using Ros1Pal_interaction_msgsDirectionOfArrival = roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival;
    /** @brief Complete bounded guest value for pal_interaction_msgs/EnablingSoundLocalisation. */
    using Ros1Pal_interaction_msgsEnablingSoundLocalisation = roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation;
    /** @brief Complete bounded guest value for pal_interaction_msgs/I18nArgument. */
    using Ros1Pal_interaction_msgsI18nArgument = roswasmc_bounded_1_pal_interaction_msgs_I18nArgument;
    /** @brief Complete bounded guest value for pal_interaction_msgs/I18nText. */
    using Ros1Pal_interaction_msgsI18nText = roswasmc_bounded_1_pal_interaction_msgs_I18nText;
    /** @brief Complete bounded guest value for pal_interaction_msgs/TtsText. */
    using Ros1Pal_interaction_msgsTtsText = roswasmc_bounded_1_pal_interaction_msgs_TtsText;
    /** @brief Complete bounded guest value for pal_interaction_msgs/GetSpeechDurationRequest. */
    using Ros1Pal_interaction_msgsGetSpeechDurationRequest = roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest;
    /** @brief Complete bounded guest value for pal_interaction_msgs/GetSpeechDurationResponse. */
    using Ros1Pal_interaction_msgsGetSpeechDurationResponse = roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse;
    /** @brief Complete bounded guest value for pal_interaction_msgs/InputArgument. */
    using Ros1Pal_interaction_msgsInputArgument = roswasmc_bounded_1_pal_interaction_msgs_InputArgument;
    /** @brief Complete bounded guest value for pal_interaction_msgs/Input. */
    using Ros1Pal_interaction_msgsInput = roswasmc_bounded_1_pal_interaction_msgs_Input;
    /** @brief Complete bounded guest value for pal_interaction_msgs/SoundGoal. */
    using Ros1Pal_interaction_msgsSoundGoal = roswasmc_bounded_1_pal_interaction_msgs_SoundGoal;
    /** @brief Complete bounded guest value for pal_interaction_msgs/SoundResult. */
    using Ros1Pal_interaction_msgsSoundResult = roswasmc_bounded_1_pal_interaction_msgs_SoundResult;
    /** @brief Complete bounded guest value for pal_interaction_msgs/SoundFeedback. */
    using Ros1Pal_interaction_msgsSoundFeedback = roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback;
    /** @brief Complete bounded guest value for pal_interaction_msgs/SoundLocalisationServiceRequest. */
    using Ros1Pal_interaction_msgsSoundLocalisationServiceRequest = roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest;
    /** @brief Complete bounded guest value for pal_interaction_msgs/SoundLocalisationServiceResponse. */
    using Ros1Pal_interaction_msgsSoundLocalisationServiceResponse = roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse;
    /** @brief Complete bounded guest value for pal_interaction_msgs/TTSstate. */
    using Ros1Pal_interaction_msgsTTSstate = roswasmc_bounded_1_pal_interaction_msgs_TTSstate;
    /** @brief Complete bounded guest value for pal_interaction_msgs/TtsGoal. */
    using Ros1Pal_interaction_msgsTtsGoal = roswasmc_bounded_1_pal_interaction_msgs_TtsGoal;
    /** @brief Complete bounded guest value for pal_interaction_msgs/TtsResult. */
    using Ros1Pal_interaction_msgsTtsResult = roswasmc_bounded_1_pal_interaction_msgs_TtsResult;
    /** @brief Complete bounded guest value for pal_interaction_msgs/TtsMark. */
    using Ros1Pal_interaction_msgsTtsMark = roswasmc_bounded_1_pal_interaction_msgs_TtsMark;
    /** @brief Complete bounded guest value for pal_interaction_msgs/TtsFeedback. */
    using Ros1Pal_interaction_msgsTtsFeedback = roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback;
    /** @brief Complete bounded guest value for pal_interaction_msgs/VoiceActivity. */
    using Ros1Pal_interaction_msgsVoiceActivity = roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity;
    /** @brief Complete bounded guest value for pal_interaction_msgs/WebGuiEvent. */
    using Ros1Pal_interaction_msgsWebGuiEvent = roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent;
    /** @brief Complete bounded guest value for pal_interaction_msgs/asrupdate. */
    using Ros1Pal_interaction_msgsAsrupdate = roswasmc_bounded_1_pal_interaction_msgs_asrupdate;
    /** @brief Complete bounded guest value for pal_interaction_msgs/audiosignal. */
    using Ros1Pal_interaction_msgsAudiosignal = roswasmc_bounded_1_pal_interaction_msgs_audiosignal;
    /** @brief Complete bounded guest value for pal_interaction_msgs/recognizerServiceRequest. */
    using Ros1Pal_interaction_msgsRecognizerServiceRequest = roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest;
    /** @brief Complete bounded guest value for pal_interaction_msgs/recognizerServiceResponse. */
    using Ros1Pal_interaction_msgsRecognizerServiceResponse = roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse;
    /** @brief Complete bounded guest value for pal_motion_model_msgs/GetMotionMapRequest. */
    using Ros1Pal_motion_model_msgsGetMotionMapRequest = roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest;
    /** @brief Complete bounded guest value for pal_motion_model_msgs/MotionModel. */
    using Ros1Pal_motion_model_msgsMotionModel = roswasmc_bounded_1_pal_motion_model_msgs_MotionModel;
    /** @brief Complete bounded guest value for pal_motion_model_msgs/MotionModelList. */
    using Ros1Pal_motion_model_msgsMotionModelList = roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList;
    /** @brief Complete bounded guest value for pal_motion_model_msgs/MotionModelMap. */
    using Ros1Pal_motion_model_msgsMotionModelMap = roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap;
    /** @brief Complete bounded guest value for pal_motion_model_msgs/GetMotionMapResponse. */
    using Ros1Pal_motion_model_msgsGetMotionMapResponse = roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse;
    /** @brief Complete bounded guest value for pal_multirobot_msgs/WifiServiceDetection. */
    using Ros1Pal_multirobot_msgsWifiServiceDetection = roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection;
    /** @brief Complete bounded guest value for pal_simulation_msgs/ExternalWrench. */
    using Ros1Pal_simulation_msgsExternalWrench = roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench;
    /** @brief Complete bounded guest value for std_msgs/String. */
    using Ros1Std_msgsString = roswasmc_bounded_1_std_msgs_String;
    /** @brief Complete bounded guest value for std_msgs/Bool. */
    using Ros1Std_msgsBool = roswasmc_bounded_1_std_msgs_Bool;
    /** @brief Complete bounded guest value for pal_tablet_msgs/FunctionalityStatus. */
    using Ros1Pal_tablet_msgsFunctionalityStatus = roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus;
    /** @brief Complete bounded guest value for pal_tablet_msgs/RobotStatus. */
    using Ros1Pal_tablet_msgsRobotStatus = roswasmc_bounded_1_pal_tablet_msgs_RobotStatus;
    /** @brief Complete bounded guest value for pal_video_recording_msgs/StartRecordingRequest. */
    using Ros1Pal_video_recording_msgsStartRecordingRequest = roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest;
    /** @brief Complete bounded guest value for pal_video_recording_msgs/StartRecordingResponse. */
    using Ros1Pal_video_recording_msgsStartRecordingResponse = roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse;
    /** @brief Complete bounded guest value for pal_video_recording_msgs/StopRecordingRequest. */
    using Ros1Pal_video_recording_msgsStopRecordingRequest = roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest;
    /** @brief Complete bounded guest value for pal_video_recording_msgs/StopRecordingResponse. */
    using Ros1Pal_video_recording_msgsStopRecordingResponse = roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse;
    /** @brief Complete bounded guest value for pal_vision_msgs/DetectedObject. */
    using Ros1Pal_vision_msgsDetectedObject = roswasmc_bounded_1_pal_vision_msgs_DetectedObject;
    /** @brief Complete bounded guest value for pal_vision_msgs/Rectangle. */
    using Ros1Pal_vision_msgsRectangle = roswasmc_bounded_1_pal_vision_msgs_Rectangle;
    /** @brief Complete bounded guest value for pal_vision_msgs/DetectedPerson. */
    using Ros1Pal_vision_msgsDetectedPerson = roswasmc_bounded_1_pal_vision_msgs_DetectedPerson;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceDetection. */
    using Ros1Pal_vision_msgsFaceDetection = roswasmc_bounded_1_pal_vision_msgs_FaceDetection;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceDetections. */
    using Ros1Pal_vision_msgsFaceDetections = roswasmc_bounded_1_pal_vision_msgs_FaceDetections;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceRecognitionGoal. */
    using Ros1Pal_vision_msgsFaceRecognitionGoal = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceRecognitionResult. */
    using Ros1Pal_vision_msgsFaceRecognitionResult = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceRecognitionFeedback. */
    using Ros1Pal_vision_msgsFaceRecognitionFeedback = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceTrackingStartRequest. */
    using Ros1Pal_vision_msgsFaceTrackingStartRequest = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceTrackingStartResponse. */
    using Ros1Pal_vision_msgsFaceTrackingStartResponse = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceTrackingStopRequest. */
    using Ros1Pal_vision_msgsFaceTrackingStopRequest = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest;
    /** @brief Complete bounded guest value for pal_vision_msgs/FaceTrackingStopResponse. */
    using Ros1Pal_vision_msgsFaceTrackingStopResponse = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse;
    /** @brief Complete bounded guest value for pal_vision_msgs/FollowMeResponse. */
    using Ros1Pal_vision_msgsFollowMeResponse = roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse;
    /** @brief Complete bounded guest value for pal_vision_msgs/FollowMeStartRequest. */
    using Ros1Pal_vision_msgsFollowMeStartRequest = roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest;
    /** @brief Complete bounded guest value for pal_vision_msgs/FollowMeStartResponse. */
    using Ros1Pal_vision_msgsFollowMeStartResponse = roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse;
    /** @brief Complete bounded guest value for pal_vision_msgs/FollowMeStopRequest. */
    using Ros1Pal_vision_msgsFollowMeStopRequest = roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest;
    /** @brief Complete bounded guest value for pal_vision_msgs/FollowMeStopResponse. */
    using Ros1Pal_vision_msgsFollowMeStopResponse = roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse;
    /** @brief Complete bounded guest value for pal_vision_msgs/Gesture. */
    using Ros1Pal_vision_msgsGesture = roswasmc_bounded_1_pal_vision_msgs_Gesture;
    /** @brief Complete bounded guest value for pal_vision_msgs/HeadPanTilt. */
    using Ros1Pal_vision_msgsHeadPanTilt = roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt;
    /** @brief Complete bounded guest value for pal_vision_msgs/HogDetection. */
    using Ros1Pal_vision_msgsHogDetection = roswasmc_bounded_1_pal_vision_msgs_HogDetection;
    /** @brief Complete bounded guest value for pal_vision_msgs/HogDetections. */
    using Ros1Pal_vision_msgsHogDetections = roswasmc_bounded_1_pal_vision_msgs_HogDetections;
    /** @brief Complete bounded guest value for pal_vision_msgs/LegDetections. */
    using Ros1Pal_vision_msgsLegDetections = roswasmc_bounded_1_pal_vision_msgs_LegDetections;
    /** @brief Complete bounded guest value for pal_vision_msgs/LookToPixelRequest. */
    using Ros1Pal_vision_msgsLookToPixelRequest = roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest;
    /** @brief Complete bounded guest value for pal_vision_msgs/LookToPixelResponse. */
    using Ros1Pal_vision_msgsLookToPixelResponse = roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse;
    /** @brief Complete bounded guest value for pal_visual_localization_msgs/VisualLocAddPlaceGoal. */
    using Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal;
    /** @brief Complete bounded guest value for pal_visual_localization_msgs/VisualLocAddPlaceResult. */
    using Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult;
    /** @brief Complete bounded guest value for pal_visual_localization_msgs/VisualLocAddPlaceFeedback. */
    using Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback;
    /** @brief Complete bounded guest value for pal_visual_localization_msgs/VisualLocRecognizeGoal. */
    using Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal;
    /** @brief Complete bounded guest value for pal_visual_localization_msgs/VisualLocRecognizeResult. */
    using Ros1Pal_visual_localization_msgsVisualLocRecognizeResult = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult;
    /** @brief Complete bounded guest value for pal_visual_localization_msgs/VisualLocRecognizeFeedback. */
    using Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback;
    /** @brief Complete bounded guest value for pal_walking_msgs/ContactState. */
    using Ros1Pal_walking_msgsContactState = roswasmc_bounded_1_pal_walking_msgs_ContactState;
    /** @brief Complete bounded guest value for pal_walking_msgs/MoveHipFeetRequest. */
    using Ros1Pal_walking_msgsMoveHipFeetRequest = roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest;
    /** @brief Complete bounded guest value for pal_walking_msgs/MoveHipFeetResponse. */
    using Ros1Pal_walking_msgsMoveHipFeetResponse = roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse;
    /** @brief Complete bounded guest value for pal_walking_msgs/SMStatus. */
    using Ros1Pal_walking_msgsSMStatus = roswasmc_bounded_1_pal_walking_msgs_SMStatus;
    /** @brief Complete bounded guest value for pal_walking_msgs/SitRequest. */
    using Ros1Pal_walking_msgsSitRequest = roswasmc_bounded_1_pal_walking_msgs_SitRequest;
    /** @brief Complete bounded guest value for pal_walking_msgs/SitResponse. */
    using Ros1Pal_walking_msgsSitResponse = roswasmc_bounded_1_pal_walking_msgs_SitResponse;
    /** @brief Complete bounded guest value for pal_walking_msgs/StepOverRequest. */
    using Ros1Pal_walking_msgsStepOverRequest = roswasmc_bounded_1_pal_walking_msgs_StepOverRequest;
    /** @brief Complete bounded guest value for pal_walking_msgs/StepOverResponse. */
    using Ros1Pal_walking_msgsStepOverResponse = roswasmc_bounded_1_pal_walking_msgs_StepOverResponse;
    /** @brief Complete bounded guest value for pal_walking_msgs/WalkStepsRequest. */
    using Ros1Pal_walking_msgsWalkStepsRequest = roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest;
    /** @brief Complete bounded guest value for pal_walking_msgs/WalkStepsResponse. */
    using Ros1Pal_walking_msgsWalkStepsResponse = roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse;
    /** @brief Complete bounded guest value for pal_walking_msgs/WalkingStatus. */
    using Ros1Pal_walking_msgsWalkingStatus = roswasmc_bounded_1_pal_walking_msgs_WalkingStatus;
    /** @brief Complete bounded guest value for std_msgs/Duration. */
    using Ros1Std_msgsDuration = roswasmc_bounded_1_std_msgs_Duration;
    /** @brief Complete bounded guest value for pal_walking_msgs/WalkingStep. */
    using Ros1Pal_walking_msgsWalkingStep = roswasmc_bounded_1_pal_walking_msgs_WalkingStep;
    /** @brief Complete bounded guest value for pal_wifi_localization_msgs/GetWifiMapRequest. */
    using Ros1Pal_wifi_localization_msgsGetWifiMapRequest = roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest;
    /** @brief Complete bounded guest value for pal_wifi_localization_msgs/WifiSignal. */
    using Ros1Pal_wifi_localization_msgsWifiSignal = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal;
    /** @brief Complete bounded guest value for pal_wifi_localization_msgs/WifiSignalList. */
    using Ros1Pal_wifi_localization_msgsWifiSignalList = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList;
    /** @brief Complete bounded guest value for pal_wifi_localization_msgs/WifiSignalMap. */
    using Ros1Pal_wifi_localization_msgsWifiSignalMap = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap;
    /** @brief Complete bounded guest value for pal_wifi_localization_msgs/GetWifiMapResponse. */
    using Ros1Pal_wifi_localization_msgsGetWifiMapResponse = roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse;
}  // namespace uwvm_custom

namespace roswasmcpp
{
    /** @brief Checked codec for geometry_msgs/Vector3; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsVector3>
    {
        static constexpr size_t max_wire_bytes = 24;
        static constexpr char const* codec_identity = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc";

        static bool encode(uwvm_custom::Ros1Geometry_msgsVector3 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Vector3_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Vector3_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Vector3_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsVector3& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Vector3_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Accel; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsAccel>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed";

        static bool encode(uwvm_custom::Ros1Geometry_msgsAccel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Accel_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Accel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Accel_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsAccel& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Accel_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Point; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoint>
    {
        static constexpr size_t max_wire_bytes = 24;
        static constexpr char const* codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Point_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Point_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPoint& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Point_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Point32; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoint32>
    {
        static constexpr size_t max_wire_bytes = 12;
        static constexpr char const* codec_identity = "UWVMROS1_ac11d311f1db295f3e53b300246dbb111148097fe50787e812cd1bf627ecc59d";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPoint32 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Point32_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Point32_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Point32_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPoint32& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Point32_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for time; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Time>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";

        static bool encode(uwvm_custom::Ros1Time const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_time_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_time_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Time& out)
        {
            return !roswasmc_bounded_1_time_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for std_msgs/Header; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsHeader>
    {
        static constexpr size_t max_wire_bytes = 144;
        static constexpr char const* codec_identity = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435";

        static bool encode(uwvm_custom::Ros1Std_msgsHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Header_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Header_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsHeader& out)
        {
            return !roswasmc_bounded_1_std_msgs_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/PointStamped; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPointStamped>
    {
        static constexpr size_t max_wire_bytes = 168;
        static constexpr char const* codec_identity = "UWVMROS1_4292765fd525ff25fcdf66cba24b1680e01d7a3f036f66a1d5bc21f5db935e90";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPointStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_PointStamped_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_PointStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_PointStamped_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPointStamped& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_PointStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Quaternion; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsQuaternion>
    {
        static constexpr size_t max_wire_bytes = 32;
        static constexpr char const* codec_identity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";

        static bool encode(uwvm_custom::Ros1Geometry_msgsQuaternion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Quaternion_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsQuaternion& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Quaternion_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Pose; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPose>
    {
        static constexpr size_t max_wire_bytes = 56;
        static constexpr char const* codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Pose_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPose& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Pose2D; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPose2D>
    {
        static constexpr size_t max_wire_bytes = 24;
        static constexpr char const* codec_identity = "UWVMROS1_272e907f7422675f272752642d2421c870d46b48b101f1fc6dec5e9ea70b8b0f";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPose2D const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Pose2D_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Pose2D_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Pose2D_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPose2D& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Pose2D_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/PoseArray; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoseArray>
    {
        static constexpr size_t max_wire_bytes = 372;
        static constexpr char const* codec_identity = "UWVMROS1_cc369b2d02464c719f6c9c6eb8f4e328e7623ddd455372cea2085f44bb782900";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPoseArray const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_PoseArray_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_PoseArray_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_PoseArray_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPoseArray& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_PoseArray_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/PoseWithCovariance; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoseWithCovariance>
    {
        static constexpr size_t max_wire_bytes = 344;
        static constexpr char const* codec_identity = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPoseWithCovariance const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPoseWithCovariance& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_PoseWithCovariance_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/PoseWithCovarianceStamped; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoseWithCovarianceStamped>
    {
        static constexpr size_t max_wire_bytes = 488;
        static constexpr char const* codec_identity = "UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9";

        static bool encode(uwvm_custom::Ros1Geometry_msgsPoseWithCovarianceStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsPoseWithCovarianceStamped& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_PoseWithCovarianceStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Transform; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsTransform>
    {
        static constexpr size_t max_wire_bytes = 56;
        static constexpr char const* codec_identity = "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085";

        static bool encode(uwvm_custom::Ros1Geometry_msgsTransform const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Transform_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Transform_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Transform_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsTransform& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Transform_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/TransformStamped; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsTransformStamped>
    {
        static constexpr size_t max_wire_bytes = 332;
        static constexpr char const* codec_identity = "UWVMROS1_f4e1d7f868984da7e3717192245f9adf2cc18c76bebaac6357ae2ed30b5b132c";

        static bool encode(uwvm_custom::Ros1Geometry_msgsTransformStamped const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_TransformStamped_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_TransformStamped_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_TransformStamped_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsTransformStamped& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_TransformStamped_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Twist; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsTwist>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921";

        static bool encode(uwvm_custom::Ros1Geometry_msgsTwist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Twist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Twist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Twist_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsTwist& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Twist_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for geometry_msgs/Wrench; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsWrench>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3";

        static bool encode(uwvm_custom::Ros1Geometry_msgsWrench const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Wrench_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Wrench_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Wrench_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Geometry_msgsWrench& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Wrench_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for humanoid_nav_msgs/StepTarget; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Humanoid_nav_msgsStepTarget>
    {
        static constexpr size_t max_wire_bytes = 25;
        static constexpr char const* codec_identity = "UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6";

        static bool encode(uwvm_custom::Ros1Humanoid_nav_msgsStepTarget const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Humanoid_nav_msgsStepTarget& out)
        {
            return !roswasmc_bounded_1_humanoid_nav_msgs_StepTarget_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for nav_msgs/MapMetaData; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Nav_msgsMapMetaData>
    {
        static constexpr size_t max_wire_bytes = 76;
        static constexpr char const* codec_identity = "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec";

        static bool encode(uwvm_custom::Ros1Nav_msgsMapMetaData const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_nav_msgs_MapMetaData_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_nav_msgs_MapMetaData_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_nav_msgs_MapMetaData_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Nav_msgsMapMetaData& out)
        {
            return !roswasmc_bounded_1_nav_msgs_MapMetaData_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/BehaviourArgument; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourArgument>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_024bb88cf3b278e19491258b73c01eca83b0ccfd9381e96b9bb5733227bc4bc0";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsBehaviourArgument const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsBehaviourArgument& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourArgument_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/BehaviourEventRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventRequest>
    {
        static constexpr size_t max_wire_bytes = 1192;
        static constexpr char const* codec_identity = "UWVMROS1_048535054a3fb576c8101615baffb84809d2e09e6570527a185e54b54460374c";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventRequest& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/BehaviourEventResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventResponse>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_5d4451abae7cf7d65e7385b4e447df7f991644aa8763758b129e5df6920ba1fd";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsBehaviourEventResponse& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourEventResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/BehaviourTaskGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskGoal>
    {
        static constexpr size_t max_wire_bytes = 1192;
        static constexpr char const* codec_identity = "UWVMROS1_298df310a5cc1085df5355d10a2ecd627415e85f1399f52eaba19a3e16f2389f";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskGoal& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/BehaviourTaskResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskResult>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e18dbdb679b8d00ba9ba5f72201ccf93eec866891009b3639f0892c64da18491";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskResult& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/BehaviourTaskFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_4270594f10120216110afd3b219cec42018a71cc751bf09a379e608ce99b1752";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsBehaviourTaskFeedback& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_BehaviourTaskFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/PresentationGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsPresentationGoal>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_f63991747249e4417a36723dcfe3620fb3efc20784b6a60334f46b3476c76b96";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsPresentationGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsPresentationGoal& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_PresentationGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/PresentationResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsPresentationResult>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_416d43dac88c97f0b25fb206e5529d660fbadb5c8bf98c78190616eaae7c8c41";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsPresentationResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsPresentationResult& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_PresentationResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_behaviour_msgs/PresentationFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_behaviour_msgsPresentationFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_a80db9d9290af9c76e0d611c42e60939bcfc26897ba56efb2cefd5df072f5970";

        static bool encode(uwvm_custom::Ros1Pal_behaviour_msgsPresentationFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_behaviour_msgsPresentationFeedback& out)
        {
            return !roswasmc_bounded_1_pal_behaviour_msgs_PresentationFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/DisableGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsDisableGoal>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_7b506fba552b6058cfbd7275e45a82399b686d73dc891bfee6dc506a02f1db3a";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsDisableGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_DisableGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_DisableGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_DisableGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsDisableGoal& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_DisableGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/DisableResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsDisableResult>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e16cdbd4052e095ead5edfda8c339d94483de63d5442139e0c8b0c5300a2056f";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsDisableResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_DisableResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_DisableResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_DisableResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsDisableResult& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_DisableResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/DisableFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsDisableFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_892e1dc5726b25276dfd880aff5c9741922b938048d8fc044662fd6f11939555";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsDisableFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_DisableFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_DisableFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_DisableFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsDisableFeedback& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_DisableFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/EmptyGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsEmptyGoal>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_b2e8505fe9480002666ccc1bc6ed3e250f521f1e0fb2165336de288f0798c7ce";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsEmptyGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_EmptyGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_EmptyGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_EmptyGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsEmptyGoal& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_EmptyGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/EmptyResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsEmptyResult>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_7e831f6ff8bda7d3ff2a477bb867ce2b965d82e60c8c089a68a030be1c56202a";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsEmptyResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_EmptyResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_EmptyResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_EmptyResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsEmptyResult& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_EmptyResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/EmptyFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsEmptyFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_4e37b746163e601913c21f82128415e9493467848b1203b0744a4f7697125160";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsEmptyFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsEmptyFeedback& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_EmptyFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/GetStringRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsGetStringRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_5da980a34f4dc0c571eccf18e9b5ba9e3f600ec33066d5632e5eed6a57432975";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsGetStringRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_GetStringRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_GetStringRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_GetStringRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsGetStringRequest& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_GetStringRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/GetStringResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsGetStringResponse>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_92faf0451e15a3363daed687078ea103a59e98135e888ad54f8dd9d282443a59";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsGetStringResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_GetStringResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_GetStringResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_GetStringResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsGetStringResponse& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_GetStringResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/JointCurrent; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsJointCurrent>
    {
        static constexpr size_t max_wire_bytes = 136;
        static constexpr char const* codec_identity = "UWVMROS1_5c8818c8e15e17e0696cd7301896246ea43e5309f24e8d00e3254283199a5b39";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsJointCurrent const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_JointCurrent_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_JointCurrent_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_JointCurrent_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsJointCurrent& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_JointCurrent_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/SetStringRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsSetStringRequest>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_1266d5e50f2f3ada01139b7cf49daf4dd6a9a358edf26519c6b85bd2b9c675b3";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsSetStringRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_SetStringRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_SetStringRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_SetStringRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsSetStringRequest& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_SetStringRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_common_msgs/SetStringResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_common_msgsSetStringResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_77c77473e16b6242e69e1674bf3c1faf66169bb858144992be3f6cfd712bd370";

        static bool encode(uwvm_custom::Ros1Pal_common_msgsSetStringResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_common_msgs_SetStringResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_common_msgs_SetStringResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_common_msgs_SetStringResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_common_msgsSetStringResponse& out)
        {
            return !roswasmc_bounded_1_pal_common_msgs_SetStringResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/ActuatorCurrentLimit; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsActuatorCurrentLimit>
    {
        static constexpr size_t max_wire_bytes = 2248;
        static constexpr char const* codec_identity = "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsActuatorCurrentLimit const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsActuatorCurrentLimit& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_ActuatorCurrentLimit_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/CurrentLimitRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsCurrentLimitRequest>
    {
        static constexpr size_t max_wire_bytes = 140;
        static constexpr char const* codec_identity = "UWVMROS1_b029cf04f0b1c9db6817fbd10f193d7402afbc84853aed53dc62646e56d030b5";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsCurrentLimitRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsCurrentLimitRequest& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_CurrentLimitRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/CurrentLimitResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsCurrentLimitResponse>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_e3b16641e9b7be7b3cb0cf7198a63b41ebd0b38eb7dc6b7bd9263650279b0c37";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsCurrentLimitResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsCurrentLimitResponse& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_CurrentLimitResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/MotionManagerGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsMotionManagerGoal>
    {
        static constexpr size_t max_wire_bytes = 140;
        static constexpr char const* codec_identity = "UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsMotionManagerGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsMotionManagerGoal& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_MotionManagerGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/MotionManagerResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsMotionManagerResult>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_8c9a1d39fe8d1a23621b871bb0752196123c9eab96c31055c384d0056da3165c";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsMotionManagerResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsMotionManagerResult& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_MotionManagerResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/MotionManagerFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsMotionManagerFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_90343a2a84a0db6a4730b7c9cb437ba55e9dd30c10b662db6dabe561ecf48009";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsMotionManagerFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsMotionManagerFeedback& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_MotionManagerFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for duration; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Duration>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8";

        static bool encode(uwvm_custom::Ros1Duration const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_duration_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_duration_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_duration_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Duration& out)
        {
            return !roswasmc_bounded_1_duration_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/OperationalSpaceGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsOperationalSpaceGoal>
    {
        static constexpr size_t max_wire_bytes = 306;
        static constexpr char const* codec_identity = "UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsOperationalSpaceGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsOperationalSpaceGoal& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_OperationalSpaceGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/RigidBodyTrajectoryPoint; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryPoint>
    {
        static constexpr size_t max_wire_bytes = 160;
        static constexpr char const* codec_identity = "UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryPoint& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryPoint_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/RigidBodyTrajectoryGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryGoal>
    {
        static constexpr size_t max_wire_bytes = 789;
        static constexpr char const* codec_identity = "UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryGoal& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/RigidBodyTrajectoryResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryResult>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_7f2a255f550c28c0d817ada4d3a0419b4d44347d0d9050821395a65ae6431f9f";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryResult& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_control_msgs/RigidBodyTrajectoryFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_2ea6f2ce67dcc51782fa6db213b7a9e0c758b608961efc1e0783c8f14dbabd96";

        static bool encode(uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_control_msgsRigidBodyTrajectoryFeedback& out)
        {
            return !roswasmc_bounded_1_pal_control_msgs_RigidBodyTrajectoryFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for sensor_msgs/Image; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Sensor_msgsImage>
    {
        static constexpr size_t max_wire_bytes = 4389;
        static constexpr char const* codec_identity = "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce";

        static bool encode(uwvm_custom::Ros1Sensor_msgsImage const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_sensor_msgs_Image_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_sensor_msgs_Image_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_sensor_msgs_Image_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Sensor_msgsImage& out)
        {
            return !roswasmc_bounded_1_sensor_msgs_Image_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/AddTexturedObjectRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectRequest>
    {
        static constexpr size_t max_wire_bytes = 4521;
        static constexpr char const* codec_identity = "UWVMROS1_0462d396de70e5db24dbbe0dab8c326f81120356b4d632fd3b56b433d89f616d";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectRequest& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/AddTexturedObjectResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_6eb1d5f37f64d4f141251e607533ebf037973dc704dbcf3e06d4fb8d2c86ee1d";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsAddTexturedObjectResponse& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_AddTexturedObjectResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/ChangeObjectRecognizerModelRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_d8071195e710803f51bfd07d74bd9450c5ce1ca21b464414ad806695692e0342";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/ChangeObjectRecognizerModelResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_cd5c9ca75201a47ae2eb04ec69ecea7762257b946bb2777a2c7224b51515775d";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_ChangeObjectRecognizerModelResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/Detection2d; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsDetection2d>
    {
        static constexpr size_t max_wire_bytes = 32;
        static constexpr char const* codec_identity = "UWVMROS1_4f0e64fd7996b772586fce060823565b53147a7b29456c8a3b5f8fa48e81663e";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsDetection2d const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_Detection2d_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_Detection2d_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_Detection2d_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsDetection2d& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_Detection2d_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/Detections2d; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsDetections2d>
    {
        static constexpr size_t max_wire_bytes = 608;
        static constexpr char const* codec_identity = "UWVMROS1_0b21e2e5d47b2e4e46f46506940a84b3df0acef77d7e3c66716bc9cc7b0b8e04";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsDetections2d const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_Detections2d_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_Detections2d_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_Detections2d_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsDetections2d& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_Detections2d_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/FaceDetection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsFaceDetection>
    {
        static constexpr size_t max_wire_bytes = 481;
        static constexpr char const* codec_identity = "UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsFaceDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_FaceDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_FaceDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_FaceDetection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsFaceDetection& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_FaceDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/FaceDetections; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsFaceDetections>
    {
        static constexpr size_t max_wire_bytes = 2404;
        static constexpr char const* codec_identity = "UWVMROS1_ee4b1061b4a4d0bd25f5f2ae4725248e53c82181ab685036cc246100f6019a4b";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsFaceDetections const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_FaceDetections_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_FaceDetections_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_FaceDetections_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsFaceDetections& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_FaceDetections_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for sensor_msgs/RegionOfInterest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Sensor_msgsRegionOfInterest>
    {
        static constexpr size_t max_wire_bytes = 17;
        static constexpr char const* codec_identity = "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86";

        static bool encode(uwvm_custom::Ros1Sensor_msgsRegionOfInterest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_sensor_msgs_RegionOfInterest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_sensor_msgs_RegionOfInterest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_sensor_msgs_RegionOfInterest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Sensor_msgsRegionOfInterest& out)
        {
            return !roswasmc_bounded_1_sensor_msgs_RegionOfInterest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/FaceThermalDetections; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsFaceThermalDetections>
    {
        static constexpr size_t max_wire_bytes = 216;
        static constexpr char const* codec_identity = "UWVMROS1_056b2da5537a5a7a7cb428e134dc11c22e271780146febf7af837a516fb9b07d";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsFaceThermalDetections const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsFaceThermalDetections& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_FaceThermalDetections_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/Gesture; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsGesture>
    {
        static constexpr size_t max_wire_bytes = 300;
        static constexpr char const* codec_identity = "UWVMROS1_d9a3e3adffc40a24a70a967fa616ee81a8d21eb08d7656830e0915cd0945ac38";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsGesture const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_Gesture_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_Gesture_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_Gesture_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsGesture& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_Gesture_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/LegDetections; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsLegDetections>
    {
        static constexpr size_t max_wire_bytes = 576;
        static constexpr char const* codec_identity = "UWVMROS1_eaaabdd63d786de0b4bf51199a211f86024e9f835ede77f9bcf92dc77f67ac1d";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsLegDetections const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_LegDetections_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_LegDetections_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_LegDetections_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsLegDetections& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_LegDetections_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/Obstacle; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsObstacle>
    {
        static constexpr size_t max_wire_bytes = 72;
        static constexpr char const* codec_identity = "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsObstacle const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_Obstacle_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_Obstacle_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_Obstacle_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsObstacle& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_Obstacle_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/Obstacles; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsObstacles>
    {
        static constexpr size_t max_wire_bytes = 436;
        static constexpr char const* codec_identity = "UWVMROS1_4dba9077149d1e00d54b01031f5de9ef885904c00e2ec10b262302fccb86fe7e";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsObstacles const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_Obstacles_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_Obstacles_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_Obstacles_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsObstacles& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_Obstacles_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/PersonDetection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsPersonDetection>
    {
        static constexpr size_t max_wire_bytes = 1257;
        static constexpr char const* codec_identity = "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsPersonDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_PersonDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_PersonDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_PersonDetection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsPersonDetection& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_PersonDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/PersonDetections; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsPersonDetections>
    {
        static constexpr size_t max_wire_bytes = 5508;
        static constexpr char const* codec_identity = "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsPersonDetections const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_PersonDetections_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_PersonDetections_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_PersonDetections_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsPersonDetections& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_PersonDetections_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for sensor_msgs/CompressedImage; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Sensor_msgsCompressedImage>
    {
        static constexpr size_t max_wire_bytes = 4376;
        static constexpr char const* codec_identity = "UWVMROS1_c72a32a46b8b10037ccaa32f7c5d403f908eed838df86faf2c7d36344cea958d";

        static bool encode(uwvm_custom::Ros1Sensor_msgsCompressedImage const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_sensor_msgs_CompressedImage_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_sensor_msgs_CompressedImage_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_sensor_msgs_CompressedImage_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Sensor_msgsCompressedImage& out)
        {
            return !roswasmc_bounded_1_sensor_msgs_CompressedImage_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizeObjectsGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsGoal>
    {
        static constexpr size_t max_wire_bytes = 4376;
        static constexpr char const* codec_identity = "UWVMROS1_9d87bc6c703c50a0b900a7d4bdcefeda5363c5b2f9affe4e9466a3b4f6dfc585";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsGoal& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizedObject; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizedObject>
    {
        static constexpr size_t max_wire_bytes = 153;
        static constexpr char const* codec_identity = "UWVMROS1_36cc36b8ff12ed25b3feadadc7e58a76c1e9c57aaa68b2a295c341c5075203fd";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizedObject const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizedObject& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizedObject_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizedObjectArray; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizedObjectArray>
    {
        static constexpr size_t max_wire_bytes = 760;
        static constexpr char const* codec_identity = "UWVMROS1_8d781116572e1ba9b5cc79b9d4ae844c64e3ef56a274da3de56cc2400baa51e0";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizedObjectArray const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizedObjectArray& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizedObjectArray_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizeObjectsResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsResult>
    {
        static constexpr size_t max_wire_bytes = 5138;
        static constexpr char const* codec_identity = "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsResult& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizeObjectsFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_c18fdb9db683f1ae2a17cc0a7cdc2bcc3ca060ef0c05cacb4defc35af0829f94";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizeObjectsFeedback& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizeObjectsFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizedActions; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizedActions>
    {
        static constexpr size_t max_wire_bytes = 2524;
        static constexpr char const* codec_identity = "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizedActions const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizedActions& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizedActions_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizerRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizerRequest>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_0d3ff43e5e851b33f710c9477383884c1db45971e4959df5892abff59fe29f55";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizerRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizerRequest& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizerRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RecognizerResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRecognizerResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_604e61f18d602f79b4e5a4145530ded34ac47d7a0ed97185c31457cef365935a";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRecognizerResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRecognizerResponse& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RecognizerResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/RotatedDetection2d; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsRotatedDetection2d>
    {
        static constexpr size_t max_wire_bytes = 408;
        static constexpr char const* codec_identity = "UWVMROS1_2f22137d0171356fffb61ee8f668d07f90deadad0f900a2aa83ee0edfde0e52d";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsRotatedDetection2d const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsRotatedDetection2d& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_RotatedDetection2d_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/SelectTexturedObjectRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectRequest>
    {
        static constexpr size_t max_wire_bytes = 148;
        static constexpr char const* codec_identity = "UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectRequest& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/SelectTexturedObjectResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_98857d1de78a0b8014ea0dfd0597f41b908869229b1ef9d815a983571180db22";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsSelectTexturedObjectResponse& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_SelectTexturedObjectResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/SetDatabaseRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsSetDatabaseRequest>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_fa4b3a519fcae8b8ac43d6e764203d720939a001c7f572e43e03c2f64904308b";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsSetDatabaseRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsSetDatabaseRequest& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_SetDatabaseRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/SetDatabaseResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsSetDatabaseResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_31307d8d81296f69a5bb7dbd54bc10aea47a41b1d1458b6d5451d53bdc2f9b46";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsSetDatabaseResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsSetDatabaseResponse& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_SetDatabaseResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/StartEnrollmentRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentRequest>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_d1175a40ec4050b7d53f0929d9fb9ca6d33155c6df2295082e159db96e2fa7d8";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentRequest& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/StartEnrollmentResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentResponse>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_7d24b04c596d75db09309a7244e275e5980344aaf020f91a44bef100927d5b62";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsStartEnrollmentResponse& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_StartEnrollmentResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/StopEnrollmentRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_627511d9388c67421ccbd8f1928ec5a7e87ad1cc19f0e6b69b4be089ea69d3df";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentRequest& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/StopEnrollmentResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentResponse>
    {
        static constexpr size_t max_wire_bytes = 137;
        static constexpr char const* codec_identity = "UWVMROS1_30384a8e564b227756bc3e778edf7d0a0b60440baf8e966352600b15b1a9a1aa";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsStopEnrollmentResponse& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_StopEnrollmentResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/TexturedObjectDetection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsTexturedObjectDetection>
    {
        static constexpr size_t max_wire_bytes = 4928;
        static constexpr char const* codec_identity = "UWVMROS1_4a13d12a14db4a3f8883d2bd66317d4b50bd2246fde7de5cdc966d4d35cff204";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsTexturedObjectDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsTexturedObjectDetection& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_TexturedObjectDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_detection_msgs/WaveDetection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_detection_msgsWaveDetection>
    {
        static constexpr size_t max_wire_bytes = 147;
        static constexpr char const* codec_identity = "UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e";

        static bool encode(uwvm_custom::Ros1Pal_detection_msgsWaveDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_detection_msgs_WaveDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_detection_msgs_WaveDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_detection_msgs_WaveDetection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_detection_msgsWaveDetection& out)
        {
            return !roswasmc_bounded_1_pal_detection_msgs_WaveDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/BatteryState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsBatteryState>
    {
        static constexpr size_t max_wire_bytes = 5;
        static constexpr char const* codec_identity = "UWVMROS1_0c5a63bef9a7aa5a22424277d8d442de7b2330cb3c61e80548dae5a58d70527b";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsBatteryState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_BatteryState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_BatteryState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_BatteryState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsBatteryState& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_BatteryState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/Bumper; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsBumper>
    {
        static constexpr size_t max_wire_bytes = 145;
        static constexpr char const* codec_identity = "UWVMROS1_696d3699d4b707663768df69acccade49e0108ed6d1c91b87fc260cc5c6b8ac9";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsBumper const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_Bumper_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_Bumper_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_Bumper_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsBumper& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_Bumper_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/CancelEffectRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsCancelEffectRequest>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_7d1029daaad94f262487491600881e1ec56b29b7f743652b46315b80b9aa4929";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsCancelEffectRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsCancelEffectRequest& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_CancelEffectRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/CancelEffectResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsCancelEffectResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_5dc811711832b14077af8da7c5a7e5f0813f3428a12e5b4bb80467571f7b9360";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsCancelEffectResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsCancelEffectResponse& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_CancelEffectResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for std_msgs/ColorRGBA; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsColorRGBA>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d";

        static bool encode(uwvm_custom::Ros1Std_msgsColorRGBA const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_ColorRGBA_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_ColorRGBA_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_ColorRGBA_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsColorRGBA& out)
        {
            return !roswasmc_bounded_1_std_msgs_ColorRGBA_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedFixedColorParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedFixedColorParams>
    {
        static constexpr size_t max_wire_bytes = 16;
        static constexpr char const* codec_identity = "UWVMROS1_48ff1292535293f3a3e5e93e2650ea8e949f01c38fa5344e83f3c101d79dab2b";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedFixedColorParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedFixedColorParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedFixedColorParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedRainbowParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedRainbowParams>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_78566593a51307fafdf358be01818b05b93bb22cb9c56241ca9ed3ab99e45ef9";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedRainbowParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedRainbowParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedRainbowParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedRainbowParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedRainbowParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedRainbowParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedFadeParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedFadeParams>
    {
        static constexpr size_t max_wire_bytes = 41;
        static constexpr char const* codec_identity = "UWVMROS1_ef4e86603f7f13e7595cb43ee879ad87ce8cb2b77c4fbf918b930066bdf88e6f";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedFadeParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedFadeParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedFadeParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedFadeParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedFadeParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedFadeParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedBlinkParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedBlinkParams>
    {
        static constexpr size_t max_wire_bytes = 48;
        static constexpr char const* codec_identity = "UWVMROS1_d8d4df17343bdef6d9ab19c2127c2375e0b97160517c8a59a5b4dc8967c250e2";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedBlinkParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedBlinkParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedBlinkParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedBlinkParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedBlinkParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedBlinkParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedProgressParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedProgressParams>
    {
        static constexpr size_t max_wire_bytes = 40;
        static constexpr char const* codec_identity = "UWVMROS1_e16b3b7d1c4a997f806a4e5bd67f150f947c0f06c0e1e810e34006d010a3b85e";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedProgressParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedProgressParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedProgressParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedProgressParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedProgressParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedProgressParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedFlowParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedFlowParams>
    {
        static constexpr size_t max_wire_bytes = 40;
        static constexpr char const* codec_identity = "UWVMROS1_b056dfced68aebfe2fda868b0d012ff75254be3787cf16f83a3ed939d7647aa7";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedFlowParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedFlowParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedFlowParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedFlowParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedFlowParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedFlowParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedPreProgrammedParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedPreProgrammedParams>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_86d21feddc513d20ae7c9772636027d56ce7244e56b18d7f4a6814eb246e2f1c";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedPreProgrammedParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedPreProgrammedParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedPreProgrammedParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedEffectViaTopicParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedEffectViaTopicParams>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_0ecb4f17c68f4e0dc1d682a09e40c4177a0f568e4465b5810b8371e8dc544042";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedEffectViaTopicParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedEffectViaTopicParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedEffectViaTopicParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedDataArrayParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedDataArrayParams>
    {
        static constexpr size_t max_wire_bytes = 68;
        static constexpr char const* codec_identity = "UWVMROS1_edd98b3ea577b8bb6bc3e66afcf900c719fe0b3e964a636f0e87b5bf1f7fe56a";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedDataArrayParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedDataArrayParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedDataArrayParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedEffectParams; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedEffectParams>
    {
        static constexpr size_t max_wire_bytes = 395;
        static constexpr char const* codec_identity = "UWVMROS1_c2d7568c4d0e241b555b76b29424dc46d72587421f5c2e0647204b792b9b17a6";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedEffectParams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedEffectParams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedEffectParams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedEffectParams_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedEffectParams& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedEffectParams_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/DoTimedLedEffectGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectGoal>
    {
        static constexpr size_t max_wire_bytes = 472;
        static constexpr char const* codec_identity = "UWVMROS1_683df32baf5dae0e44c1f7345d0867d5f68ae493d0652b44b314e8d6d348b7dc";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectGoal& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/DoTimedLedEffectResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectResult>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_b23c6e239b4bf2ca3810eeb253d87a1e834c8ccb4b3c0c473cb4097aa3456be8";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectResult& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/DoTimedLedEffectFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_75ad5b9ac229b54a0b9883961cf275a9c11a0dd4c7761913326a8df0aea182f6";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsDoTimedLedEffectFeedback& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_DoTimedLedEffectFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/LedGroup; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsLedGroup>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_d28d4258c918d58634c62cd20e417ca06734a5a2de8516b65663a9a3be82b008";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsLedGroup const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_LedGroup_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_LedGroup_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_LedGroup_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsLedGroup& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_LedGroup_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/ShutdownAndWakeUpRobotRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_e4fee1d5bb74578f009ac582242bf11237d0af2a1b8ff57b750e74dd338e3cbf";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/ShutdownAndWakeUpRobotResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e4d1f2b350c53536e168ee2b8b51f439084939dd2ff14769152d99d52f16c3a8";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_ShutdownAndWakeUpRobotResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/TimedBlinkEffectRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectRequest>
    {
        static constexpr size_t max_wire_bytes = 61;
        static constexpr char const* codec_identity = "UWVMROS1_8ec92359735c7aabcb8896987a538b39e66996ae82805fb82e0dfc6099bd2fb9";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectRequest& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/TimedBlinkEffectResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectResponse>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_40ddabd6ab74343f2fd4be29e2987fcd382376d3d5f1873220524f47667b00bd";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsTimedBlinkEffectResponse& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_TimedBlinkEffectResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/TimedColourEffectRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsTimedColourEffectRequest>
    {
        static constexpr size_t max_wire_bytes = 29;
        static constexpr char const* codec_identity = "UWVMROS1_ad05e8c9bbc7cececa0735b5828b81adcd042b7e738f346ffa758407cd20ded3";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsTimedColourEffectRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsTimedColourEffectRequest& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_TimedColourEffectRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/TimedColourEffectResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsTimedColourEffectResponse>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_2fe607c0e0a960342b47148f85c8d887b4fe51b065e05529cf540260890f9484";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsTimedColourEffectResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsTimedColourEffectResponse& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_TimedColourEffectResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/TimedFadeEffectRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectRequest>
    {
        static constexpr size_t max_wire_bytes = 54;
        static constexpr char const* codec_identity = "UWVMROS1_a23170818bde569a005dff556b11553e7973cb7e8c126a5fd292daca2dafe458";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectRequest& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_device_msgs/TimedFadeEffectResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectResponse>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_75811f0336a7e87b571ddbdb8a062b120b60b4b142c63e7af328fe9c4ea9ae15";

        static bool encode(uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_device_msgsTimedFadeEffectResponse& out)
        {
            return !roswasmc_bounded_1_pal_device_msgs_TimedFadeEffectResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRActivation; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRActivation>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRActivation const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRActivation& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRActivation_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/actiontag; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsActiontag>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_bd76d0c6a24ccccf66c8723e96bdb0bacf4b9f89fd569482dbb05b8c3a0e7a08";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsActiontag const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_actiontag_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_actiontag_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_actiontag_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsActiontag& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_actiontag_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/asrresult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAsrresult>
    {
        static constexpr size_t max_wire_bytes = 1209;
        static constexpr char const* codec_identity = "UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAsrresult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_asrresult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_asrresult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_asrresult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAsrresult& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_asrresult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASREvent; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASREvent>
    {
        static constexpr size_t max_wire_bytes = 1212;
        static constexpr char const* codec_identity = "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASREvent const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASREvent_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASREvent_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASREvent_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASREvent& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASREvent_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRFileGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRFileGoal>
    {
        static constexpr size_t max_wire_bytes = 396;
        static constexpr char const* codec_identity = "UWVMROS1_9ccba4b3d861d0e759312bec211e5f198eb11bd3838088906a7cba85ab56dd35";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRFileGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRFileGoal& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRFileGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRFileResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRFileResult>
    {
        static constexpr size_t max_wire_bytes = 5104;
        static constexpr char const* codec_identity = "UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRFileResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRFileResult& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRFileResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRFileFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRFileFeedback>
    {
        static constexpr size_t max_wire_bytes = 1209;
        static constexpr char const* codec_identity = "UWVMROS1_c5a53add76fa297f74af24e0ecb0d3dc68b3ce85eaecdff21a26a7441e2ad9c3";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRFileFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRFileFeedback& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRFileFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRLangModelMngmt; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRLangModelMngmt>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRLangModelMngmt const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRLangModelMngmt& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRLangModelMngmt_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRLanguage; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRLanguage>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_227aee498814954d3800e631b8dce3a5fd3d22dc5437ec24b03b5f8cc48000eb";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRLanguage const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRLanguage& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRLanguage_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRSrvRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRSrvRequest>
    {
        static constexpr size_t max_wire_bytes = 526;
        static constexpr char const* codec_identity = "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRSrvRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRSrvRequest& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRSrvRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRServiceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRServiceRequest>
    {
        static constexpr size_t max_wire_bytes = 526;
        static constexpr char const* codec_identity = "UWVMROS1_c78e78d5d88eb264ecc15c534da9e28e04bc6e3bb33685e24b9cf695aee73715";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRServiceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRServiceRequest& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRServiceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/AudioDeviceDescription; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioDeviceDescription>
    {
        static constexpr size_t max_wire_bytes = 141;
        static constexpr char const* codec_identity = "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAudioDeviceDescription const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAudioDeviceDescription& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_AudioDeviceDescription_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRStatus; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRStatus>
    {
        static constexpr size_t max_wire_bytes = 538;
        static constexpr char const* codec_identity = "UWVMROS1_0469173f91448cb5069e27cab54cfd117d9a22d757e8a8303ac5cb1c53e7e985";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRStatus& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRSrvResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRSrvResponse>
    {
        static constexpr size_t max_wire_bytes = 802;
        static constexpr char const* codec_identity = "UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRSrvResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRSrvResponse& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRSrvResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/ASRServiceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsASRServiceResponse>
    {
        static constexpr size_t max_wire_bytes = 802;
        static constexpr char const* codec_identity = "UWVMROS1_bfa0a5701b04c4f637febfb3c24d5f49ebd690b82089ec88e21d7dca40028680";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsASRServiceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsASRServiceResponse& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_ASRServiceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/AudioPlayGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioPlayGoal>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_1c2b6894e5b00f204c3d36af18802e5b54e2950b2ef22d3294460f3e7bd84e30";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAudioPlayGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAudioPlayGoal& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/AudioPlayResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioPlayResult>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_46d6efb4dbf5cca76894398daf8b70e0f6577f624e90dc088beeca147a4f91fe";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAudioPlayResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAudioPlayResult& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/AudioPlayFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioPlayFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_8715716200235ab9076d7f152ef277236349ffb02f01b16ba5f10ede343729bd";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAudioPlayFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAudioPlayFeedback& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/AudioPlayerState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAudioPlayerState>
    {
        static constexpr size_t max_wire_bytes = 277;
        static constexpr char const* codec_identity = "UWVMROS1_01549954e3ca3bfb4dd7e5c82e8697d0a480d16757826cc4708266794ec85675";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAudioPlayerState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAudioPlayerState& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_AudioPlayerState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/DirectionOfArrival; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsDirectionOfArrival>
    {
        static constexpr size_t max_wire_bytes = 144;
        static constexpr char const* codec_identity = "UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsDirectionOfArrival const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsDirectionOfArrival& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_DirectionOfArrival_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/EnablingSoundLocalisation; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsEnablingSoundLocalisation>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_8df033349e2f5d7072336e535fc87c1ff6148ed15bc36cc952a99d133a69d495";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsEnablingSoundLocalisation const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsEnablingSoundLocalisation& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_EnablingSoundLocalisation_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/I18nArgument; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsI18nArgument>
    {
        static constexpr size_t max_wire_bytes = 396;
        static constexpr char const* codec_identity = "UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsI18nArgument const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsI18nArgument& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_I18nArgument_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/I18nText; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsI18nText>
    {
        static constexpr size_t max_wire_bytes = 1984;
        static constexpr char const* codec_identity = "UWVMROS1_b3e1cb48129a6ed9cad7f0b543c770aa8b7b0362d00e71185bb6b5ad8c38816c";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsI18nText const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_I18nText_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_I18nText_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_I18nText_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsI18nText& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_I18nText_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/TtsText; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsText>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_0bf14fabb5b62c5341e606b8ac9f6abaf74a85033a10e9a8f1e5b8bdfe178a87";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsTtsText const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_TtsText_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_TtsText_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_TtsText_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsTtsText& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_TtsText_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/GetSpeechDurationRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationRequest>
    {
        static constexpr size_t max_wire_bytes = 2248;
        static constexpr char const* codec_identity = "UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationRequest& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/GetSpeechDurationResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationResponse>
    {
        static constexpr size_t max_wire_bytes = 2249;
        static constexpr char const* codec_identity = "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsGetSpeechDurationResponse& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_GetSpeechDurationResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/InputArgument; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsInputArgument>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_96c3c0967199a746bf47ffd146123f31ec2f1949b7f3a343cad3825b8b1e8dd0";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsInputArgument const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_InputArgument_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_InputArgument_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_InputArgument_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsInputArgument& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_InputArgument_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/Input; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsInput>
    {
        static constexpr size_t max_wire_bytes = 1192;
        static constexpr char const* codec_identity = "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsInput const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_Input_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_Input_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_Input_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsInput& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_Input_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/SoundGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundGoal>
    {
        static constexpr size_t max_wire_bytes = 272;
        static constexpr char const* codec_identity = "UWVMROS1_07b9c59deb5669b601a4e02708bd14d16a19263edde6f8fef3a4781724a4f3db";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsSoundGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsSoundGoal& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_SoundGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/SoundResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundResult>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_53c3ab50649a2ffe113e4ae246aa05736090d42f5a0158f2878292319ee89a86";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsSoundResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_SoundResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_SoundResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_SoundResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsSoundResult& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_SoundResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/SoundFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e9a77075706815852fbf5684df54d9d655925f7fecc7caa407d9076adc645d7d";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsSoundFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsSoundFeedback& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_SoundFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/SoundLocalisationServiceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceRequest>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_e7505ba44b9dc511311f5609c1618a1214362063600b32e2057dbe9cc2d32feb";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceRequest& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/SoundLocalisationServiceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_205fe5e2195345e29bac8477e95059862a44b476a359d808551427941c64ad6e";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsSoundLocalisationServiceResponse& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_SoundLocalisationServiceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/TTSstate; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsTTSstate>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_b9269838ab729ac39efc69c373314419ace1b43a2bf47176c822671aba9d9987";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsTTSstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_TTSstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_TTSstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_TTSstate_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsTTSstate& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_TTSstate_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/TtsGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsGoal>
    {
        static constexpr size_t max_wire_bytes = 2388;
        static constexpr char const* codec_identity = "UWVMROS1_d128a99394120e1688e4feb9906b033af53982dbf12040604502aeb8f59304c7";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsTtsGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsTtsGoal& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_TtsGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/TtsResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsResult>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_74f6eebecfd7e0e50e48ca3393fc0f9e9e24baec834bf39cb30455e9f0d9cf56";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsTtsResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_TtsResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_TtsResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_TtsResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsTtsResult& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_TtsResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/TtsMark; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsMark>
    {
        static constexpr size_t max_wire_bytes = 4364;
        static constexpr char const* codec_identity = "UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsTtsMark const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_TtsMark_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_TtsMark_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_TtsMark_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsTtsMark& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_TtsMark_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/TtsFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsTtsFeedback>
    {
        static constexpr size_t max_wire_bytes = 4770;
        static constexpr char const* codec_identity = "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsTtsFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsTtsFeedback& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_TtsFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/VoiceActivity; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsVoiceActivity>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_c33952dbed35f2e6e08dd4dd8b7adf5c71a52106e2b274b988ec3218648b42a7";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsVoiceActivity const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsVoiceActivity& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_VoiceActivity_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/WebGuiEvent; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsWebGuiEvent>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_fb8030a4cb371da5dae852d62b28d8e7b03c3d37f0f6390c904ef3dc84084e23";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsWebGuiEvent const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsWebGuiEvent& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_WebGuiEvent_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/asrupdate; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAsrupdate>
    {
        static constexpr size_t max_wire_bytes = 529;
        static constexpr char const* codec_identity = "UWVMROS1_34584358ab6faa36c96fbbe2de2bef7cba7ae6eb5879cd6b676a1826fb154fda";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAsrupdate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_asrupdate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_asrupdate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_asrupdate_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAsrupdate& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_asrupdate_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/audiosignal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsAudiosignal>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsAudiosignal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_audiosignal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_audiosignal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_audiosignal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsAudiosignal& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_audiosignal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/recognizerServiceRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceRequest>
    {
        static constexpr size_t max_wire_bytes = 529;
        static constexpr char const* codec_identity = "UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceRequest& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_interaction_msgs/recognizerServiceResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_3598ef995f13f4377e0e4eff270a9e277c3c94018f60aeb944119ce9f5b25813";

        static bool encode(uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_interaction_msgsRecognizerServiceResponse& out)
        {
            return !roswasmc_bounded_1_pal_interaction_msgs_recognizerServiceResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_motion_model_msgs/GetMotionMapRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_4bfce8e9cc79e30ec211aa18bafb432fa0d3ff4fa18569a1c0ef178fe2729e97";

        static bool encode(uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapRequest& out)
        {
            return !roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_motion_model_msgs/MotionModel; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_motion_model_msgsMotionModel>
    {
        static constexpr size_t max_wire_bytes = 24;
        static constexpr char const* codec_identity = "UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea";

        static bool encode(uwvm_custom::Ros1Pal_motion_model_msgsMotionModel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_motion_model_msgsMotionModel& out)
        {
            return !roswasmc_bounded_1_pal_motion_model_msgs_MotionModel_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_motion_model_msgs/MotionModelList; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_motion_model_msgsMotionModelList>
    {
        static constexpr size_t max_wire_bytes = 100;
        static constexpr char const* codec_identity = "UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294";

        static bool encode(uwvm_custom::Ros1Pal_motion_model_msgsMotionModelList const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_motion_model_msgsMotionModelList& out)
        {
            return !roswasmc_bounded_1_pal_motion_model_msgs_MotionModelList_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_motion_model_msgs/MotionModelMap; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_motion_model_msgsMotionModelMap>
    {
        static constexpr size_t max_wire_bytes = 624;
        static constexpr char const* codec_identity = "UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289";

        static bool encode(uwvm_custom::Ros1Pal_motion_model_msgsMotionModelMap const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_motion_model_msgsMotionModelMap& out)
        {
            return !roswasmc_bounded_1_pal_motion_model_msgs_MotionModelMap_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_motion_model_msgs/GetMotionMapResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapResponse>
    {
        static constexpr size_t max_wire_bytes = 624;
        static constexpr char const* codec_identity = "UWVMROS1_b031c17ef990e784eeeb7fbf270b482207c5de43323a9cbf37306ac07b159440";

        static bool encode(uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_motion_model_msgsGetMotionMapResponse& out)
        {
            return !roswasmc_bounded_1_pal_motion_model_msgs_GetMotionMapResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_multirobot_msgs/WifiServiceDetection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_multirobot_msgsWifiServiceDetection>
    {
        static constexpr size_t max_wire_bytes = 278;
        static constexpr char const* codec_identity = "UWVMROS1_1f9a244c4e98ec5f4eb60bd008a62b94a91a6982b56273510c3019b95f1b5741";

        static bool encode(uwvm_custom::Ros1Pal_multirobot_msgsWifiServiceDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_multirobot_msgsWifiServiceDetection& out)
        {
            return !roswasmc_bounded_1_pal_multirobot_msgs_WifiServiceDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_simulation_msgs/ExternalWrench; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_simulation_msgsExternalWrench>
    {
        static constexpr size_t max_wire_bytes = 356;
        static constexpr char const* codec_identity = "UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c";

        static bool encode(uwvm_custom::Ros1Pal_simulation_msgsExternalWrench const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_simulation_msgsExternalWrench& out)
        {
            return !roswasmc_bounded_1_pal_simulation_msgs_ExternalWrench_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for std_msgs/String; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsString>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_8a71a2d5957414e5a34318653c6314c005aab13980a35fa331401a4acd4442dc";

        static bool encode(uwvm_custom::Ros1Std_msgsString const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_String_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_String_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_String_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsString& out)
        {
            return !roswasmc_bounded_1_std_msgs_String_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for std_msgs/Bool; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsBool>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_cbbbbbf2df23f98389500cbf265f45ca9210c3495622a1fd122c1b8b76ce7d33";

        static bool encode(uwvm_custom::Ros1Std_msgsBool const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Bool_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Bool_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Bool_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsBool& out)
        {
            return !roswasmc_bounded_1_std_msgs_Bool_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_tablet_msgs/FunctionalityStatus; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_tablet_msgsFunctionalityStatus>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_ce7e4fc9d13688058739c422c63a6af44d883b54b3efde8aed4e3272f8b0de35";

        static bool encode(uwvm_custom::Ros1Pal_tablet_msgsFunctionalityStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_tablet_msgsFunctionalityStatus& out)
        {
            return !roswasmc_bounded_1_pal_tablet_msgs_FunctionalityStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_tablet_msgs/RobotStatus; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_tablet_msgsRobotStatus>
    {
        static constexpr size_t max_wire_bytes = 536;
        static constexpr char const* codec_identity = "UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d";

        static bool encode(uwvm_custom::Ros1Pal_tablet_msgsRobotStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_tablet_msgsRobotStatus& out)
        {
            return !roswasmc_bounded_1_pal_tablet_msgs_RobotStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_video_recording_msgs/StartRecordingRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_214a2bd3c382b4bd7dbb15d1b694e6d385bd9b2656944068177bd0408a16d914";

        static bool encode(uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingRequest& out)
        {
            return !roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_video_recording_msgs/StartRecordingResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_03b8bcd879b02864300b8a90d721958a4335f53bd17abbd29178471de736d9b6";

        static bool encode(uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_video_recording_msgsStartRecordingResponse& out)
        {
            return !roswasmc_bounded_1_pal_video_recording_msgs_StartRecordingResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_video_recording_msgs/StopRecordingRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_2fe53f84621ac67f592d86f028c2d5be67f4fee13663b82a9b128d50a8a1c4f5";

        static bool encode(uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingRequest& out)
        {
            return !roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_video_recording_msgs/StopRecordingResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_0e7555737246a82dcf9203313b8bfc43c808fa1d8a405c4159bf3b837545b7c2";

        static bool encode(uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_video_recording_msgsStopRecordingResponse& out)
        {
            return !roswasmc_bounded_1_pal_video_recording_msgs_StopRecordingResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/DetectedObject; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsDetectedObject>
    {
        static constexpr size_t max_wire_bytes = 168;
        static constexpr char const* codec_identity = "UWVMROS1_49ddd55b2f5fc8053980d77760c563c563113d1dafc899b0b5d619f98ab7ad25";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsDetectedObject const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_DetectedObject_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_DetectedObject_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_DetectedObject_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsDetectedObject& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_DetectedObject_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/Rectangle; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsRectangle>
    {
        static constexpr size_t max_wire_bytes = 32;
        static constexpr char const* codec_identity = "UWVMROS1_fa96c9ba0ef62b6f620e1200ffde47ce33ae8d41e444c39ae65e6aa3b27954c4";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsRectangle const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_Rectangle_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_Rectangle_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_Rectangle_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsRectangle& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_Rectangle_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/DetectedPerson; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsDetectedPerson>
    {
        static constexpr size_t max_wire_bytes = 264;
        static constexpr char const* codec_identity = "UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsDetectedPerson const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsDetectedPerson& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_DetectedPerson_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceDetection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceDetection>
    {
        static constexpr size_t max_wire_bytes = 124;
        static constexpr char const* codec_identity = "UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceDetection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceDetection& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceDetections; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceDetections>
    {
        static constexpr size_t max_wire_bytes = 648;
        static constexpr char const* codec_identity = "UWVMROS1_bc135c2c93419e99b87edabfe3a72e744e574ec703e77919736ae90f069417a0";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceDetections const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceDetections_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceDetections_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceDetections_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceDetections& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceDetections_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceRecognitionGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionGoal>
    {
        static constexpr size_t max_wire_bytes = 133;
        static constexpr char const* codec_identity = "UWVMROS1_bcf0281ebf646f90ea48d50971aedcd174eec9bdf8cb45ca66c6e4aa672cda4b";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionGoal& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceRecognitionResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionResult>
    {
        static constexpr size_t max_wire_bytes = 2185;
        static constexpr char const* codec_identity = "UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionResult& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceRecognitionFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionFeedback>
    {
        static constexpr size_t max_wire_bytes = 2185;
        static constexpr char const* codec_identity = "UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceRecognitionFeedback& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceRecognitionFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceTrackingStartRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_e41bf1927b5c764ff89ca9d9049719e35c96c1689ba4bb930d1e90480a13647c";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartRequest& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceTrackingStartResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_51e6335ecfe5827f0bae5e5610b5dec443373b1233942b40387958b1b47ba4bf";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStartResponse& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStartResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceTrackingStopRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_850dd9a2cdf7e12197ac7efad3facaf4609c7be7c63d8157a6b92bc1e56926e5";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopRequest& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FaceTrackingStopResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_158adae14ad8a978f5c934c5aee9489306e9ddd31d9afa15ff1a9f9af8872b5f";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFaceTrackingStopResponse& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FaceTrackingStopResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FollowMeResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeResponse>
    {
        static constexpr size_t max_wire_bytes = 145;
        static constexpr char const* codec_identity = "UWVMROS1_509edcb3854474332fd562cc897fff9266b789772700de1b4a447670fd0bb24f";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFollowMeResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFollowMeResponse& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FollowMeResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FollowMeStartRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStartRequest>
    {
        static constexpr size_t max_wire_bytes = 4;
        static constexpr char const* codec_identity = "UWVMROS1_9ad00d43667a3ac5324f5999d68f04b8c176c308d94c2ed4da9d357697b0faba";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFollowMeStartRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFollowMeStartRequest& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FollowMeStartRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FollowMeStartResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStartResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_2d61bb56a1595cfb26c8607e75c06b6ad712ee04f23f8bb3ec2055a311d3376a";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFollowMeStartResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFollowMeStartResponse& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FollowMeStartResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FollowMeStopRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStopRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_6027cba04b80218bf304f2a426f716bba87534e477b5dda411c921ac27e9a8b2";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFollowMeStopRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFollowMeStopRequest& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FollowMeStopRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/FollowMeStopResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsFollowMeStopResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_a2b3b521174fc092b8f04cdc09ff4a43113b71b9daa4977e7a233fc8a5c02cdb";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsFollowMeStopResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsFollowMeStopResponse& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_FollowMeStopResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/Gesture; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsGesture>
    {
        static constexpr size_t max_wire_bytes = 300;
        static constexpr char const* codec_identity = "UWVMROS1_e947cfbffe33a44d3590ff6513d4486c7411747df12fed9c178662e5beb2e4d1";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsGesture const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_Gesture_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_Gesture_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_Gesture_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsGesture& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_Gesture_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/HeadPanTilt; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsHeadPanTilt>
    {
        static constexpr size_t max_wire_bytes = 152;
        static constexpr char const* codec_identity = "UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsHeadPanTilt const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsHeadPanTilt& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_HeadPanTilt_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/HogDetection; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsHogDetection>
    {
        static constexpr size_t max_wire_bytes = 344;
        static constexpr char const* codec_identity = "UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsHogDetection const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_HogDetection_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_HogDetection_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_HogDetection_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsHogDetection& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_HogDetection_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/HogDetections; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsHogDetections>
    {
        static constexpr size_t max_wire_bytes = 1528;
        static constexpr char const* codec_identity = "UWVMROS1_8ea9e8cc6d81de0b518f3dd1fd3fedca765711f965644e2a0fa88b8d334cbace";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsHogDetections const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_HogDetections_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_HogDetections_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_HogDetections_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsHogDetections& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_HogDetections_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/LegDetections; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsLegDetections>
    {
        static constexpr size_t max_wire_bytes = 244;
        static constexpr char const* codec_identity = "UWVMROS1_e175101eca8d474e2569d4e4e125fd84e8c8a73c957472cf7e4b6aae9dfa0549";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsLegDetections const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_LegDetections_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_LegDetections_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_LegDetections_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsLegDetections& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_LegDetections_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/LookToPixelRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsLookToPixelRequest>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_ead4559133ef68c0248064d865cceaeb335f6104424a199ebc4452e6878383ff";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsLookToPixelRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsLookToPixelRequest& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_LookToPixelRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_vision_msgs/LookToPixelResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_vision_msgsLookToPixelResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_137d83d2b779310ee91811bd5a17c4d232fb2114246da1520656876385562ae1";

        static bool encode(uwvm_custom::Ros1Pal_vision_msgsLookToPixelResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_vision_msgsLookToPixelResponse& out)
        {
            return !roswasmc_bounded_1_pal_vision_msgs_LookToPixelResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_visual_localization_msgs/VisualLocAddPlaceGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_6d84634e1bebf082190a3992acd2379d94a375158775cf0a01c430779105049d";

        static bool encode(uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal& out)
        {
            return !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_visual_localization_msgs/VisualLocAddPlaceResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_604eadb052736d8c3999fff8ab635886d87f779943632ce01e89742d591c265a";

        static bool encode(uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult& out)
        {
            return !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_visual_localization_msgs/VisualLocAddPlaceFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_ceb1b2594d5bf763de97096f0bb683276be372393e779d3b3334b3adc7a6f3b6";

        static bool encode(uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback& out)
        {
            return !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocAddPlaceFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_visual_localization_msgs/VisualLocRecognizeGoal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_b1aa9fe3f12a81861385e9421e153869ee3f2ba0949fe55c0ed0fe7170ae4c4a";

        static bool encode(uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal& out)
        {
            return !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeGoal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_visual_localization_msgs/VisualLocRecognizeResult; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeResult>
    {
        static constexpr size_t max_wire_bytes = 497;
        static constexpr char const* codec_identity = "UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da";

        static bool encode(uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeResult const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeResult& out)
        {
            return !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeResult_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_visual_localization_msgs/VisualLocRecognizeFeedback; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_07206e6717d8ba2621e7a00f69d65a2e56102b64e84e0ef66e44e93a4468e65e";

        static bool encode(uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback& out)
        {
            return !roswasmc_bounded_1_pal_visual_localization_msgs_VisualLocRecognizeFeedback_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/ContactState; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsContactState>
    {
        static constexpr size_t max_wire_bytes = 1;
        static constexpr char const* codec_identity = "UWVMROS1_632dc784a31db78e0b56fe3c2f324e19dcdcac6d6bdc72e0f9fab21e2a8ea3a8";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsContactState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_ContactState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_ContactState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_ContactState_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsContactState& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_ContactState_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/MoveHipFeetRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetRequest>
    {
        static constexpr size_t max_wire_bytes = 1248;
        static constexpr char const* codec_identity = "UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetRequest& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/MoveHipFeetResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_d5adee26d6498a466a886f9869495d90adae91081287903faa9b90ac6ab2306e";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsMoveHipFeetResponse& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_MoveHipFeetResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/SMStatus; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsSMStatus>
    {
        static constexpr size_t max_wire_bytes = 170;
        static constexpr char const* codec_identity = "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsSMStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_SMStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_SMStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_SMStatus_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsSMStatus& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_SMStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/SitRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsSitRequest>
    {
        static constexpr size_t max_wire_bytes = 9;
        static constexpr char const* codec_identity = "UWVMROS1_8dc49a028691c5be0752fad0ad7cf1d2d4cc3e093ff8fe53b0f0f5dcf66241da";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsSitRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_SitRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_SitRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_SitRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsSitRequest& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_SitRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/SitResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsSitResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_6af9975562de7fe4864f8409ec5c1210f5d144c872e0ce9b553a391a1790df35";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsSitResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_SitResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_SitResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_SitResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsSitResponse& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_SitResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/StepOverRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsStepOverRequest>
    {
        static constexpr size_t max_wire_bytes = 32;
        static constexpr char const* codec_identity = "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsStepOverRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsStepOverRequest& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_StepOverRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/StepOverResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsStepOverResponse>
    {
        static constexpr size_t max_wire_bytes = 132;
        static constexpr char const* codec_identity = "UWVMROS1_e7803ee0f8ffd0f2c1eb698670454e2eaae232d60f629e5f0b3b57f876dce944";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsStepOverResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsStepOverResponse& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_StepOverResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/WalkStepsRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsWalkStepsRequest>
    {
        static constexpr size_t max_wire_bytes = 20;
        static constexpr char const* codec_identity = "UWVMROS1_eab28f422b38937bef44f8c9ef8c5f08283d3fefd0f16865a91e641b489e446a";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsWalkStepsRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsWalkStepsRequest& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_WalkStepsRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/WalkStepsResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsWalkStepsResponse>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_69cf3d1ffea1bbf362863bbaf88af9177ab0324312b2549fb248d3fa21a9522f";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsWalkStepsResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsWalkStepsResponse& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_WalkStepsResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/WalkingStatus; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsWalkingStatus>
    {
        static constexpr size_t max_wire_bytes = 336;
        static constexpr char const* codec_identity = "UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsWalkingStatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsWalkingStatus& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_WalkingStatus_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for std_msgs/Duration; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsDuration>
    {
        static constexpr size_t max_wire_bytes = 8;
        static constexpr char const* codec_identity = "UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175";

        static bool encode(uwvm_custom::Ros1Std_msgsDuration const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Duration_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Duration_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Duration_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Std_msgsDuration& out)
        {
            return !roswasmc_bounded_1_std_msgs_Duration_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_walking_msgs/WalkingStep; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_walking_msgsWalkingStep>
    {
        static constexpr size_t max_wire_bytes = 181;
        static constexpr char const* codec_identity = "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd";

        static bool encode(uwvm_custom::Ros1Pal_walking_msgsWalkingStep const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_walking_msgs_WalkingStep_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_walking_msgs_WalkingStep_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_walking_msgs_WalkingStep_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_walking_msgsWalkingStep& out)
        {
            return !roswasmc_bounded_1_pal_walking_msgs_WalkingStep_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_wifi_localization_msgs/GetWifiMapRequest; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapRequest>
    {
        static constexpr size_t max_wire_bytes = 0;
        static constexpr char const* codec_identity = "UWVMROS1_91f308677881cbf1a91911f58602b59adabc3935db966392d28ad81acd70d832";

        static bool encode(uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapRequest const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapRequest& out)
        {
            return !roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapRequest_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_wifi_localization_msgs/WifiSignal; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignal>
    {
        static constexpr size_t max_wire_bytes = 140;
        static constexpr char const* codec_identity = "UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71";

        static bool encode(uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignal const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignal& out)
        {
            return !roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignal_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_wifi_localization_msgs/WifiSignalList; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignalList>
    {
        static constexpr size_t max_wire_bytes = 580;
        static constexpr char const* codec_identity = "UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc";

        static bool encode(uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignalList const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignalList& out)
        {
            return !roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalList_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_wifi_localization_msgs/WifiSignalMap; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignalMap>
    {
        static constexpr size_t max_wire_bytes = 2548;
        static constexpr char const* codec_identity = "UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e";

        static bool encode(uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignalMap const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_wifi_localization_msgsWifiSignalMap& out)
        {
            return !roswasmc_bounded_1_pal_wifi_localization_msgs_WifiSignalMap_decode(bytes.data(), bytes.size(), &out);
        }
    };

    /** @brief Checked codec for pal_wifi_localization_msgs/GetWifiMapResponse; canonical maximum is not an actual message length. */
    template <>
    struct Codec<uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapResponse>
    {
        static constexpr size_t max_wire_bytes = 2548;
        static constexpr char const* codec_identity = "UWVMROS1_576278a043277d7621c6fc90fbbf583a0ad0ef9d7704fb8b5cca8b1b86c7bcb3";

        static bool encode(uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapResponse const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_encode(&value, next.data(), next.size(), &used) || used != n)
                return false;
            out = std::move(next);
            return true;
        }

        static bool decode(std::span<unsigned char const> bytes, uwvm_custom::Ros1Pal_wifi_localization_msgsGetWifiMapResponse& out)
        {
            return !roswasmc_bounded_1_pal_wifi_localization_msgs_GetWifiMapResponse_decode(bytes.data(), bytes.size(), &out);
        }
    };
}  // namespace roswasmcpp
