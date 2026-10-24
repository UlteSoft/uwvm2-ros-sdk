# @file main.rb
# @brief Execute complete publish_string in the genuine bundled Ruby engine.
# @details The public module owns original values, statuses and checked cleanup.
require "ros/ruby/roswasm/native_command"
exit Uwvm::RosWasm::NativeCommand.run(1)
