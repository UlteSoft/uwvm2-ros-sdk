module uwvm2.local/abb-observation

go 1.24

require (
    uwvm2.local/abb-records-go v0.0.0
    uwvm2.local/roswasmgo v0.0.0
)

// Resolve the complete vendor family and genuine official-Go transport locally.
replace uwvm2.local/abb-records-go => ../ros2/abb-ros2-complete
replace uwvm2.local/roswasmgo => ../../../ros/go
