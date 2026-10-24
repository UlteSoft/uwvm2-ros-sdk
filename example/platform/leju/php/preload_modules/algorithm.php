<?php
declare(strict_types=1);
/**
 * @brief Compute the supplied value inside genuine Zend, with independent probes.
 * @param int $value Exact i32; -100 observes ROS denial, -101 observes timer denial.
 * @return int Actual PHP result; the common embedding entry reports VM status.
 */
function uwvm_library_entry_i32(int $value): int
{
    if ($value === -100)
    {
        $frame = \Uwvm\Native\invoke('capability_open', str_repeat("\0", 8), 'sample', 0);
        if ($frame[1] !== '' || $frame[2] !== null || $frame[3] !== null)
        {
            throw new \RuntimeException('ungranted alias exposed storage');
        }
        return $frame[0];
    }
    if ($value === -101) { return \Uwvm\Native\pause_ms(1); }
    if ($value < -1000 || $value > 1000) { throw new \RangeException('bounded i32 calculation required'); }
    gc_collect_cycles();
    $fiber = new \Fiber(static function () use ($value): int { return $value * 6; });
    $fiber->start();
    return $fiber->getReturn();
}
