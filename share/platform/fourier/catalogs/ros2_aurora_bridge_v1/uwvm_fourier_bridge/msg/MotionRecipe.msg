# Portable recipe; the native MoveCommand object never crosses into Wasm.
# move_type: 0 absolute joint, 1 joint-space Cartesian target, 2 linear Cartesian target.
uint8 move_type
string group
float64[] position
bool has_velocity
float64[] velocity
int32 expected_velocity
