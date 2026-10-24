module uwvm2.local/abb-observation

go 1.24

require (
    uwvm2.local/abb-records v0.0.0
    uwvm2.local/roswasm v0.0.0
)

// Resolve the complete vendor family and genuine TinyGo transport locally.
replace uwvm2.local/abb-records => ../ros2/abb-ros2-complete
replace uwvm2.local/roswasm => ../../../ros/tinygo
