<?php
declare(strict_types=1);
/**
 * @file main.php
 * @brief Exercise the genuine PHP six-argument capability composition path.
 * @details The deployment must independently grant aliases observe and source.
 * All assertions and raw operations run inside the genuine Zend Wasm command.
 * This is an ABI/permission slice, not an official ROS roundtrip or isolation pass.
 */
$uwvm_exit = 1;
$passed = 0;
$current = 'bootstrap';
$observer = null;
$source = null;
$observerRetired = false;
$sourceRetired = false;
$assert = static function (bool $valid): void {
    if (!$valid) { throw new \RuntimeException('required composition assertion failed'); }
};
$report = static function (string $name, bool $valid, int $code) use (&$passed, $assert): void {
    $assert($valid);
    $assert(\Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-api-composition-case-v1', 'language' => 'php',
        'case' => $name, 'passed' => true, 'observed_code' => $code,
    ], JSON_THROW_ON_ERROR)) === 0);
    ++$passed;
};
try {
    $args = \Uwvm\Native\argv();
    $assert(count($args) === 2 && preg_match('/\A[0-9a-f]{32}\z/', $args[1]) === 1);
    $current = 'genuine-zend-runtime';
    $report($current, PHP_VERSION_ID === 80413, PHP_VERSION_ID);
    [$observer, $error] = \Uwvm\RosWasm\Capability::open('observe');
    $assert($error === 0 && $observer !== null);
    [$source, $error] = \Uwvm\RosWasm\Capability::open('source');
    $assert($error === 0 && $source !== null);
    $sourceWord = $source->borrowHandle();
    $current = 'borrow-full-width-unsigned-owner';
    $report($current, $sourceWord->width === 8 && !$sourceWord->signed && strlen($sourceWord->bytes) === 8, 0);
    $current = 'metadata-watch-forwards-other-owner';
    $frame = $observer->invoke('event_watch', '', 0, $sourceWord);
    $report($current, $frame === [0, '', null, null], $frame[0]);
    $current = 'original-ready-snapshot';
    $frame = $observer->invoke('event_ready', '', 32);
    $report($current, $frame[0] === 0 && strlen($frame[1]) === 32 && $frame[2] === null && $frame[3] === null, $frame[0]);
    $word32 = \Uwvm\RosWasm\Word::fromBytes(str_repeat("\0", 4), 4, false);
    $signed64 = \Uwvm\RosWasm\Word::fromBytes(str_repeat("\xff", 8), 8, true);
    $zero = \Uwvm\RosWasm\Word::fromBytes(str_repeat("\0", 8), 8, false);
    $maximum = \Uwvm\RosWasm\Word::fromDecimal('18446744073709551615', 8, false);
    foreach ([
        ['reject-other-width-before-native-entry', $word32, null],
        ['reject-signed-other-before-native-entry', $signed64, null],
        ['reject-correlation-width-before-native-entry', $zero, $word32],
        ['reject-signed-correlation-before-native-entry', $zero, $signed64],
    ] as [$name, $other, $correlation]) {
        $current = $name;
        $frame = $observer->invoke('event_ready', '', 32, $other, $correlation);
        $report($current, $frame === [22, '', null, null], $frame[0]);
    }
    // The canonical raw dispatcher rejects unused nonzero words before any host effect.
    // These must be forwarded; silently discarding them would yield the valid ready snapshot.
    $current = 'raw-rejects-unused-high-other-word';
    $frame = $observer->invoke('event_ready', '', 32, $maximum);
    $report($current, $frame === [22, '', null, null], $frame[0]);
    $current = 'raw-rejects-unused-high-correlation-word';
    $frame = $observer->invoke('event_ready', '', 32, $zero, $maximum);
    $report($current, $frame === [22, '', null, null], $frame[0]);
    $current = 'explicit-source-close';
    $closed = $source->close();
    $sourceRetired = true;
    $report($current, $closed === 0, $closed);
    $current = 'borrow-after-close-refused';
    $refused = false;
    try { $source->borrowHandle(); } catch (\LogicException $closedOwner) { $refused = true; }
    $report($current, $refused, 9);
    $current = 'invoke-after-close-refused';
    $frame = $source->invoke('event_watch', '', 0, $observer->borrowHandle());
    $report($current, $frame === [9, '', null, null], $frame[0]);
    $current = 'second-close-is-not-replayed';
    $closed = $source->close();
    $report($current, $closed === 9, $closed);
    $closed = $observer->close();
    $observerRetired = true;
    $assert($closed === 0);
    $observer = null;
    $source = null;
    $assert($passed === 14);
    $uwvm_exit = \Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-api-composition-summary-v1', 'language' => 'php',
        'nonce' => $args[1], 'required' => 14, 'selected' => 14, 'executed' => 14,
        'passed' => 14, 'failed' => 0, 'blocked' => 0, 'not_run' => 0,
        'Stage_A_communication_pass' => false, 'component_isolation_pass' => false,
    ], JSON_THROW_ON_ERROR)) === 0 ? 0 : 1;
} catch (\Throwable $failure) {
    \Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-api-composition-failure-v1', 'language' => 'php',
        'case' => $current, 'executed_and_passed_before_failure' => $passed,
    ], JSON_THROW_ON_ERROR));
    $uwvm_exit = 1;
} finally {
    // Explicit cleanup attempts are separate from the operation's result; never replay it.
    if ($source !== null && !$sourceRetired && $source->close() !== 0) { $uwvm_exit = 1; }
    if ($observer !== null && !$observerRetired && $observer->close() !== 0) { $uwvm_exit = 1; }
}
