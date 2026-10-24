# Complete native franka state observation

Build with the public Xmake entry for `wasm32` or explicitly select `wasm64`.
The application owns one bounded `franka_msgs/FrankaState` value and receives every
original field from the selected native ROS topic. It validates the full value,
re-encodes it, checks byte equality, and closes the capability once.

The deployment template supplies one manually reviewed topic subscription with
the actual formally exported native identity and compiled adapter identity.
Select the matching native-bound runtime/gateway pair, source the exact native
ROS distribution, and start an offline typed publisher at the configured topic.
The public deployment launcher starts no peer or physical controller.

The explicit monotonic clock grant supports bounded idle waits. Every other
alias remains ungranted. A deployment with ROS disabled and no grants must
return original denial 13 with cleanup 0. Source preparation alone qualifies
neither this native communication nor the selected runtime/gateway pair.
