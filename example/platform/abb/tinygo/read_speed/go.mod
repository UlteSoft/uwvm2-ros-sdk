module uwvm2.local/abb-tinygo-read_speed

go 1.24

require (
    uwvm2.local/abb-observation v0.0.0
    uwvm2.local/abb-records v0.0.0
    uwvm2.local/roswasm v0.0.0
)

// The Xmake provider maps all public modules through an absolute go.work.
// This source manifest remains independent from the installed SDK location.
