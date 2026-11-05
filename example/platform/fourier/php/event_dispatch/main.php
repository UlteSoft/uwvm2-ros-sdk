<?php
declare(strict_types=1);
/** @file main.php
 * @brief Test real observer metadata and PHP callback/lifetime contracts in Wasm.
 * @details Local malformed-frame checks are not runtime permission/isolation
 * proofs. No ROS business peer is supplied and no Stage A/B pass is claimed.
 */
use Uwvm\RosWasm\Capability;
use Uwvm\RosWasm\EventBinding;
use Uwvm\RosWasm\EventRecord;
use Uwvm\RosWasm\Word;

$uwvm_exit = 1;
$source = null;
$observer = null;
$sourceRetired = true;
$observerRetired = true;
$passed = 0;
$current = 'bootstrap';
$check = static function (bool $valid): void {
    if (!$valid) { throw new \RuntimeException('required event-dispatch assertion failed'); }
};
$report = static function (string $name, bool $valid) use ($check, &$passed): void {
    $check($valid);
    $check(\Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-event-dispatch-case-v1', 'language' => 'php',
        'case' => $name, 'passed' => true,
    ], JSON_THROW_ON_ERROR)) === 0);
    ++$passed;
};
$invalid = static function (callable $operation): bool {
    try { $operation(); }
    catch (\InvalidArgumentException $rejected) { return true; }
    return false;
};
$noop = static function (EventRecord $event): null { return null; };
try {
    $args = \Uwvm\Native\argv();
    $check(count($args) === 2 && preg_match('/\A[0-9a-f]{32}\z/', $args[1]) === 1);
    $current = 'genuine-engine-and-ABI';
    $abi = \Uwvm\Native\invoke('abi_version', str_repeat("\0", 8), '', 0);
    $report($current, PHP_VERSION_ID === 80413 && $abi[0] === 0 && $abi[3] === "\1" . str_repeat("\0", 7));
    [$source, $code] = Capability::open('source');
    $check($code === 0 && $source !== null);
    $sourceRetired = false;
    [$observer, $code] = Capability::open('observe');
    $check($code === 0 && $observer !== null);
    $observerRetired = false;
    $sourceWord = $source->borrowHandle();
    $binding = new EventBinding(2, $sourceWord);
    $current = 'unwatched-readiness-refused';
    $report($current, $observer->readiness() === [9, null]);
    $current = 'explicit-metadata-watch';
    $report($current, $observer->invoke('event_watch', '', 0, $sourceWord) === [0, '', null, null]);
    $current = 'full-width-ready-snapshot';
    [$code, $ready] = $observer->readiness();
    $valid = $code === 0 && is_array($ready) && count($ready) === 4;
    if (is_array($ready)) {
        foreach ($ready as $word) { $valid = $valid && $word instanceof Word && $word->width === 8 && !$word->signed; }
    }
    $report($current, $valid);
    $current = 'invalid-capacity-does-not-poll';
    $report($current, $binding->dispatchOne($observer, -1, $noop) === [22, null, null, null] && !$binding->delivered());
    $current = 'invalid-signed-source-binding';
    $report($current, $invalid(static fn() => new EventBinding(2, Word::fromBytes($sourceWord->bytes, 8, true))));
    $current = 'oversized-service-request-before-admission';
    $report($current, $source->submitService($observer, str_repeat('x', 4193779)) === [22, '', null, null]);
    $current = 'explicit-source-close';
    $sourceRetired = true;
    $report($current, $source->close() === 0);
    $current = 'source-after-close-service-refused';
    $report($current, $source->submitService($observer, '') === [9, '', null, null]);
    $current = 'explicit-small-capacity-keeps-pinned-event';
    for ($attempt = 0; $attempt < 250; ++$attempt) {
        $probe = $binding->dispatchOne($observer, 0, $noop);
        if ($probe[0] !== 11 || $attempt === 249) { break; }
        $check(\Uwvm\Native\pause_ms(20) === 0);
    }
    $report($current, $probe[0] === 90 && $probe[1] === null && $probe[2] instanceof Word
        && $probe[2]->decimal() === '64' && $probe[3] === null && !$binding->delivered());
    $calls = 0;
    $nested = null;
    $nestedRetire = null;
    $callback = static function (EventRecord $event) use (&$calls, &$nested, &$nestedRetire, $binding, $observer, $noop): string {
        ++$calls;
        $nested = $binding->dispatchOne($observer, 64, $noop);
        $nestedRetire = $binding->retire();
        return 'callback-owned-value';
    };
    $current = 'closed-event-dispatched';
    $delivery = $binding->dispatchOne($observer, 64, $callback);
    $event = $delivery[1];
    $report($current, $delivery[0] === 0 && $event instanceof EventRecord && $event->kind === 7
        && ($event->flags & 1) === 1 && $event->source->bytes === $sourceWord->bytes
        && $event->body === '' && $delivery[2]->decimal() === '64' && $delivery[3] === 'callback-owned-value');
    $current = 'callback-committed-once';
    $report($current, $calls === 1 && $binding->delivered());
    $current = 'nested-dispatch-refused';
    $report($current, $nested === [17, null, null, null]);
    $current = 'nested-retirement-refused';
    $report($current, $nestedRetire === 17);
    $current = 'local-event-replay-refused';
    $report($current, $invalid(static fn() => $binding->accept($event->bytes)));
    $current = 'local-source-binding-refused';
    $different = $sourceWord->bytes;
    $different[0] = chr(ord($different[0]) ^ 1);
    if ($different === str_repeat("\0", 8)) { $different[1] = "\1"; }
    $altered = substr_replace($event->bytes, $different, 16, 8);
    $checkSource = new EventBinding(2, $sourceWord);
    $structural = EventRecord::decode($altered);
    $rejected = $invalid(static fn() => $checkSource->accept($altered));
    $accepted = $checkSource->accept($event->bytes);
    $report($current, $structural->source->bytes === $different && $rejected
        && $accepted->sequence->decimal() === '1');
    $current = 'local-reserved-header-refused';
    $altered = $event->bytes;
    $altered[10] = "\1";
    $report($current, $invalid(static fn() => EventRecord::decode($altered)));
    $current = 'local-payload-extent-refused';
    $altered = $event->bytes;
    $altered[56] = "\1";
    $report($current, $invalid(static fn() => EventRecord::decode($altered)));
    $current = 'explicit-binding-retirement-no-poll';
    $report($current, $binding->retire() === 0 && $binding->retire() === 9
        && $binding->dispatchOne($observer, 64, $noop) === [9, null, null, null]);
    $observerRetired = true;
    $check($observer->close() === 0);

    [$source, $code] = Capability::open('source');
    $check($code === 0 && $source !== null);
    $sourceRetired = false;
    [$observer, $code] = Capability::open('observe');
    $check($code === 0 && $observer !== null);
    $observerRetired = false;
    $nextWord = $source->borrowHandle();
    $current = 'new-generation-and-stale-raw-owner-refused';
    $stale = \Uwvm\Native\invoke('event_ready', $sourceWord->bytes, '', 32);
    $report($current, $nextWord->bytes !== $sourceWord->bytes && $stale[0] === 9);
    $check($observer->invoke('event_watch', '', 0, $nextWord)[0] === 0);
    $nextBinding = new EventBinding(2, $nextWord);
    $sourceRetired = true;
    $check($source->close() === 0);
    $throws = 0;
    $thrown = false;
    $current = 'callback-exception-after-commit';
    try {
        for ($attempt = 0; $attempt < 250; ++$attempt) {
            $result = $nextBinding->dispatchOne($observer, 64, static function (EventRecord $event) use (&$throws): null {
                ++$throws;
                throw new \RuntimeException('expected-application-callback-condition');
            });
            if ($result[0] !== 11 || $attempt === 249) { break; }
            $check(\Uwvm\Native\pause_ms(20) === 0);
        }
    } catch (\RuntimeException $failure) {
        $thrown = $failure->getMessage() === 'expected-application-callback-condition';
    }
    $report($current, $thrown && $throws === 1 && $nextBinding->delivered());
    $current = 'explicit-idle-after-exception-no-callback-replay';
    $result = $nextBinding->dispatchOne($observer, 64, $noop);
    $report($current, $result === [11, null, null, null] && $throws === 1 && !$nextBinding->delivered());
    $check($nextBinding->retire() === 0);
    $observerRetired = true;
    $check($observer->close() === 0 && $passed === 22);
    $uwvm_exit = \Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-event-dispatch-summary-v1', 'language' => 'php', 'nonce' => $args[1],
        'required' => 22, 'selected' => 22, 'executed' => 22, 'passed' => 22,
        'failed' => 0, 'blocked' => 0, 'not_run' => 0, 'Stage_A_communication_pass' => false,
        'component_isolation_pass' => false, 'full_rcl_API_compatibility' => false,
    ], JSON_THROW_ON_ERROR)) === 0 ? 0 : 1;
} catch (\Throwable $failure) {
    \Uwvm\Native\output(json_encode([
        'format' => 'uwvm-sdk-event-dispatch-failure-v1', 'language' => 'php',
        'case' => $current, 'passed_before_failure' => $passed,
    ], JSON_THROW_ON_ERROR));
    $uwvm_exit = 1;
} finally {
    if ($source !== null && !$sourceRetired && $source->close() !== 0) { $uwvm_exit = 1; }
    if ($observer !== null && !$observerRetired && $observer->close() !== 0) { $uwvm_exit = 1; }
}
