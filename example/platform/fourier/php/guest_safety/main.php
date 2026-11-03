<?php
declare(strict_types=1);
/** @file main.php
 * @brief Execute genuine Zend guest assertions and one raw ROS permission denial.
 * @details No native client, granted capability, source subprocess or scene is started.
 */
$uwvm_exit = 1;
$passed = 0;
$current = 'bootstrap';
$report = static function (string $name, bool $valid, int $observed) use (&$passed): void {
    if (!$valid) { throw new \RuntimeException('guest safety assertion failed'); }
    $line = json_encode(['format' => 'uwvm-sdk-guest-safety-case-v1', 'language' => 'php',
        'case' => $name, 'passed' => true, 'observed_code' => $observed], JSON_THROW_ON_ERROR);
    if (\Uwvm\Native\output($line) !== 0) { throw new \RuntimeException('guest output failed'); }
    ++$passed;
};
try {
    $current = 'genuine-runtime-version';
    $report($current, PHP_VERSION_ID === 80413, PHP_VERSION_ID);
    $zero = str_repeat("\0", 8);
    $current = 'raw-ros-abi-v1';
    $abi = \Uwvm\Native\invoke('abi_version', $zero, '', 0);
    $report($current, $abi[0] === 0 && $abi[3] === "\1" . str_repeat("\0", 7), $abi[0]);
    $current = 'guest-rejects-empty-alias';
    $invalid = \Uwvm\RosWasm\Capability::open('');
    $report($current, $invalid[0] === null && $invalid[1] === 22, $invalid[1]);
    $current = 'guest-rejects-invalid-utf8';
    $invalid = \Uwvm\RosWasm\Capability::open("\xff");
    $report($current, $invalid[0] === null && $invalid[1] === 22, $invalid[1]);
    $current = 'raw-ungranted-alias-denied';
    $denied = \Uwvm\Native\invoke('capability_open', $zero, 'sdk07-guest-ungranted', 0);
    $report($current, $denied[0] === 13 && ($denied[3] === null || $denied[3] === $zero), $denied[0]);
    if ($passed !== 5) { throw new \RuntimeException('required guest case missing'); }
    $error = \Uwvm\Native\output(json_encode(['format' => 'uwvm-sdk-guest-safety-summary-v1',
        'language' => 'php', 'selected' => 5, 'executed' => 5, 'passed' => 5,
        'failed' => 0, 'blocked' => 0, 'skipped' => 0], JSON_THROW_ON_ERROR));
    $uwvm_exit = $error === 0 ? 0 : 1;
} catch (\Throwable $failure) {
    \Uwvm\Native\output(json_encode(['format' => 'uwvm-sdk-guest-safety-failure-v1',
        'language' => 'php', 'case' => $current], JSON_THROW_ON_ERROR));
    $uwvm_exit = 1;
}
