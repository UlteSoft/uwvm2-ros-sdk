# Authored complete Clock callback value; not an official NVIDIA message name.
# @brief Select the automatic playback callback kind.
# @details Kind1 is observed from the actual sim_time-equivalent native reader.
# @see kind
uint8 AUTOMATIC=1
# @brief Select the actual impulse-driven callback kind.
# @details Kind2 is observed from the actual manual_time-equivalent native reader.
# @see kind
uint8 MANUAL=2
# @brief Actual callback kind,1 automatic or2 manual when has_event is true.
# @details Zero is used only for an absent event's complete default value.
# @see ClockControl
uint8 kind
# @brief Original source dispatch phase,0 or1.
# @details This is the phase at the actual observer poll, not a publication ID.
# @see frame
uint8 phase
# @brief Original phase-local dispatch frame,0 through19.
# @details The actual Clock value is retained separately without deriving time.
# @see sec
uint32 frame
# @brief Complete signed native builtin Time seconds.
# @details Copied from the real Clock callback; never synthesized from frame count.
# @see nanosec
int32 sec
# @brief Complete normalized native Time nanoseconds,0 through999999999.
# @details Retained with sec; no conversion through float or host wall time.
# @see sec
uint32 nanosec
