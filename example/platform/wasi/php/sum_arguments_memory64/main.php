<?php
/** @file main.php
 * @brief Run genuine PHP standard-I/O semantics without a ROS facade. */
/** @brief Complete one binary stdout write, preserving errors and short writes.
 * @param bytes Original byte string, retained for each synchronous write.
 * @return True only after all bytes were accepted; false on failed or empty progress.
 */
function write_all(string $bytes): bool {
    $offset = 0;
    while ($offset < strlen($bytes)) {
        $count = fwrite(STDOUT, substr($bytes, $offset));
        if ($count === false || $count <= 0 || $count > strlen($bytes) - $offset) return false;
        $offset += $count;
    }
    return true;
}
/** @brief Sum signed 32-bit input with explicit bounds on both PHP integer ABIs. */
function main(array $arguments): int {
    if (count($arguments) > 1024) return 22;
    $total = 0;
    foreach ($arguments as $text) {
        if (strlen($text) > 11 || preg_match('/\A[+-]?[0-9]+\z/D', $text) !== 1) return 22;
        // Decimal conversion via double is exact within this admitted i32 range.
        $value = (float)$text;
        if ($value < -2147483648 || $value > 2147483647) return 22;
        $sum = (float)$total + $value;
        if ($sum < -2147483648 || $sum > 2147483647) return 22;
        $total = (int)$sum;
    }
    return write_all((string)$total . "\n") && fflush(STDOUT) ? 0 : 5;
}
exit(main(array_slice($argv, 1)));
