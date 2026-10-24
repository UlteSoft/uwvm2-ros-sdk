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
/** @brief Compute exact FNV-1a with 16-bit limbs, including a 32-bit PHP build. */
function main(): int {
    $high = 0x811c;
    $low = 0x9dc5;
    while (!feof(STDIN)) {
        $chunk = fread(STDIN, 256);
        if ($chunk === false || ($chunk === '' && !feof(STDIN))) return 5;
        for ($index = 0; $index < strlen($chunk); ++$index) {
            $low ^= ord($chunk[$index]);
            $product = $low * 403;
            $high = ($high * 403 + $low * 256 + ($product >> 16)) & 65535;
            $low = $product & 65535;
        }
    }
    return write_all(sprintf("%04x%04x\n", $high, $low)) && fflush(STDOUT) ? 0 : 5;
}
exit(main());
