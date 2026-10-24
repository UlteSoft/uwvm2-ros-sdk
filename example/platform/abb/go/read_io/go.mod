module uwvm2.local/abb-go-read_io

go 1.24

require (
    uwvm2.local/abb-observation v0.0.0
    uwvm2.local/abb-records-go v0.0.0
    uwvm2.local/roswasmgo v0.0.0
)

// The Xmake provider maps all public modules through an absolute go.work.
// This source manifest remains independent from the installed SDK location.
