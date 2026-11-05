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
$publisher = null;
$publisherRetired = false;
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
    // Delivery is separate from one-shot acceptance. Keep this publisher alive
    // until the independent peer returns this distinct transient-local sample.
    $roundtripNonce = $nonce . '-roundtrip';
    $roundtrip = new Message(['group' => $roundtripNonce, 'values' => [1.25, -2.5]]);
    [$publisher, $error] = Capability::open('publish');
    $check($error === 0 && $publisher !== null);
    $check($publisher->invoke('topic_publish', $roundtrip->encode())[0] === 0);
    for ($attempt = 0; $attempt < 250; ++$attempt) {
        $frame = $echo->invoke('event_poll', '', Message::SCHEMA['maximum']);
        if ($frame[0] === 0) {
            $check($frame[2] !== null && $frame[2]->decimal() === (string) strlen($frame[1]) && $frame[3] === null);
            if ($frame[1] === $roundtrip->encode()) { break; }
            $check($frame[1] === $message->encode());
        } else { $check($frame[0] === 11); }
        $check(\Uwvm\Native\pause_ms(20) === 0);
    }
    $check($frame[0] === 0);
    $received = Message::decode($frame[1]);
    $report($current, $frame[1] === $roundtrip->encode() && $received->group === $roundtripNonce
        && $received->values === [1.25, -2.5]);
    $publisherRetired = true;
    $check($publisher->close() === 0);
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
    if ($publisher !== null && !$publisherRetired && $publisher->close() !== 0) { $uwvm_exit = 1; }
    if ($echo !== null && !$echoRetired && $echo->close() !== 0) { $uwvm_exit = 1; }
}
