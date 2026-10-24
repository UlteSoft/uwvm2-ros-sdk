/**
 * @file main.mts
 * @brief Receive and explicitly close using the original shared ROS binding.
 * @details The caller supplies exact aliases and a manually reviewed main-module policy.
 */
import {runOriginalArray} from "nvidia-isaac-ros/typescript/ros2/complete/original_array";

runOriginalArray("receive");
