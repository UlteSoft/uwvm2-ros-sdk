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
/** @brief Copy only the actual bytes read; distinguish EOF from a failed read. */
function main(): int {
    while (!feof(STDIN)) {
        $chunk = fread(STDIN, 256);
        if ($chunk === false || ($chunk === '' && !feof(STDIN))) return 5;
        if (!write_all($chunk)) return 5;
    }
    return fflush(STDOUT) ? 0 : 5;
}
exit(main());
