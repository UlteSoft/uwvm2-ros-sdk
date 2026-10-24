module uwvm2.local/isaac-sim-clock-program

go 1.23

require (
    uwvm2.local/roswasm v0.0.0
    uwvm2.local/nvidia-isaac-sim-clock v0.0.0
)

// Installed example/platform/nvidia-isaac-sim/tinygo/clock-program.
replace uwvm2.local/roswasm => ../../../../../include/platform/ros2/tinygo
replace uwvm2.local/nvidia-isaac-sim-clock => ../../../../../include/platform/nvidia-isaac-sim/tinygo/clock-control
