module uwvm2.local/nvidia-isaac-sim-clock

go 1.23

require uwvm2.local/roswasm v0.0.0

// Installed include/platform/nvidia-isaac-sim/tinygo/clock-control.
replace uwvm2.local/roswasm => ../../../ros2/tinygo
