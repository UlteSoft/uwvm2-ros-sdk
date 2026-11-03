<?php
declare(strict_types=1);
/** @file main.php
 * @brief Exercise typed publish and fresh typed ROS echo inside genuine Zend.
 * @details The fixture uses the authored Fourier ROS bridge GroupValues type,
 * not a vendor-official API. Native type registration/official relay and grants
 * must be qualified separately. The program supplies no fallback peer.
 */
use Uwvm\Fourier\Ros2AuroraBridgeV1\Ros2Uwvm_fourier_bridgeMsgGroupValues as Message;
use Uwvm\Language\PhpObservation;
use Uwvm\RosWasm\Capability;

$uwvm_exit = 1;
$echo = null;
$echoRetired = false;
$passed = 0;
$current = 'bootstrap';
$check = static function (bool $valid): void {
    if (!$valid) { throw new \RuntimeException('required publisher API assertion failed'); }
};
$report = static function (string $name, bool $valid) use ($check, &$passed): void {
    $check($valid);
    $check(\Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-publisher-api-case-v1', 'language' => 'php',
        'case' => $name, 'passed' => true,
    ], JSON_THROW_ON_ERROR)) === 0);
    ++$passed;
};
try {
    $args = \Uwvm\Native\argv();
    $check(count($args) === 2 && preg_match('/\A[0-9a-f]{32}\z/', $args[1]) === 1);
    $nonce = $args[1];
    $current = 'genuine-pinned-engine';
    $report($current, PHP_VERSION_ID === 80413);
    $current = 'reject-oversized-field-before-acquisition';
    $bad = new Message(['group' => str_repeat('x', 129), 'values' => [1.25]]);
    $facts = PhpObservation::publish('publish', $bad);
    $report($current, $facts['primary'] === 22 && !$facts['publish_invoked'] && !$facts['cleanup_present']);
    $current = 'reject-nonfinite-field-before-acquisition';
    $bad = new Message(['group' => $nonce, 'values' => [NAN]]);
    $facts = PhpObservation::publish('publish', $bad);
    $report($current, $facts['primary'] === 22 && !$facts['publish_invoked'] && !$facts['cleanup_present']);
    $message = new Message(['group' => $nonce, 'values' => [1.25, -2.5]]);
    $current = 'default-denied-publisher-has-no-publish-call';
    $facts = PhpObservation::publish('publisher-denied', $message);
    $report($current, $facts['primary'] === 13 && !$facts['publish_invoked'] && !$facts['cleanup_present']);
    [$echo, $error] = Capability::open('echo');
    $check($error === 0 && $echo !== null && $echo->invoke('topic_subscribe')[0] === 0);
    $current = 'one-accepted-typed-publish-and-explicit-close';
    $facts = PhpObservation::publish('publish', $message);
    $report($current, $facts['primary'] === 0 && $facts['publish_invoked'] && $facts['publish_accepted']
        && $facts['cleanup_present'] && $facts['cleanup'] === 0 && !$facts['response_present']
        && $facts['wire_hex'] === bin2hex($message->encode()));
    $current = 'fresh-complete-typed-echo-inside-guest';
    for ($attempt = 0; $attempt < 250; ++$attempt) {
        $frame = $echo->invoke('event_poll', '', Message::SCHEMA['maximum']);
        if ($frame[0] !== 11 || $attempt === 249) { break; }
        $check(\Uwvm\Native\pause_ms(20) === 0);
    }
    $check($frame[0] === 0 && $frame[2] !== null
        && $frame[2]->decimal() === (string) strlen($frame[1]) && $frame[3] === null);
    $received = Message::decode($frame[1]);
    $report($current, $frame[1] === $message->encode() && $received->group === $nonce
        && $received->values === [1.25, -2.5]);
    $echoRetired = true;
    $check($echo->close() === 0 && $passed === 6);
    $uwvm_exit = \Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-publisher-api-summary-v1', 'language' => 'php', 'nonce' => $nonce,
        'required' => 6, 'selected' => 6, 'executed' => 6, 'passed' => 6,
        'failed' => 0, 'blocked' => 0, 'not_run' => 0,
        'vendor_official_API_compatibility' => false, 'component_isolation_pass' => false,
    ], JSON_THROW_ON_ERROR)) === 0 ? 0 : 1;
} catch (\Throwable $failure) {
    \Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-publisher-api-failure-v1', 'language' => 'php',
        'case' => $current, 'passed_before_failure' => $passed,
    ], JSON_THROW_ON_ERROR));
    $uwvm_exit = 1;
} finally {
    if ($echo !== null && !$echoRetired && $echo->close() !== 0) { $uwvm_exit = 1; }
}
