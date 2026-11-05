<?php
/** @file main.php
 * @brief Execute complete publish_string in the genuine bundled PHP engine.
 * @details Public source modules are embedded by the common adapter, with no sidecars.
 */
declare(strict_types=1);
exit(\Uwvm\RosWasm\NativeCommand::run(1));
