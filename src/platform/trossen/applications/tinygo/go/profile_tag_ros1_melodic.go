//go:build tinygo && (wasm || tinygo.wasm) && trossen_ros1_melodic

// @file profile_tag_ros1_melodic.go
// @brief Require exactly one explicit original Trossen source profile.
// @details Go includes this marker for the selected profile independently of ROS
// family. Selecting two profiles redeclares the same constant and fails compilation;
// backend files separately require one matching ROS family. No runtime state exists.
package main

const exactlyOneSourceProfile = 1
