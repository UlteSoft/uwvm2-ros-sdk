# FANUC controller and upstream audit

[FANUC-CORPORATION/fanuc_driver](https://github.com/FANUC-CORPORATION/fanuc_driver/tree/da5db3f611cdc9dffe687e056c4e79bea584bf5c), `da5db3f611cdc9dffe687e056c4e79bea584bf5c`.

The pinned main revision targets Jazzy. Humble requires another branch and independent lock. Complete FANUC and RMI schemas preserve the original INITIAZLIE spelling and ON/ZERODN string defaults. The original 1001-point sine trajectory uses its separate capacity profile; it must not be truncated to the main catalog's eight points. Real joints, groups, prefixes and limits must match the controller. STOP/START denotes driver control state; FJT cancellation, terminal result and physical stopping remain independently observed.

See `share/platform/fanuc/driver-audit.json` for complete original resources, file hashes and selection conditions. This work executes no driver, firmware update or physical controller command.
