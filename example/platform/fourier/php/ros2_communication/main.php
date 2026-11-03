<?php
declare(strict_types=1);
/** @file main.php
 * @brief Assert genuine Zend -> restricted host -> official ROS relay replies.
 * @details One interpreter is one trust domain. Every owner and timestamp stays
 * an exact eight-byte word; wasm32 PHP integers never narrow these values.
 */
$uwvm_exit = 1;
$current = 'bootstrap';
$passed = 0;
$owners = [];
$zero = str_repeat("\0", 8);
$check = static function (bool $ok): void {
    if (!$ok) { throw new \RuntimeException('required Stage A assertion failed'); }
};
$report = static function (string $name, int $code) use (&$passed, $check): void {
    $check(\Uwvm\Native\output(json_encode(['format' => 'uwvm-sdk-stage-a-case-v1',
        'language' => 'php', 'case' => $name, 'passed' => true, 'observed_code' => $code],
        JSON_THROW_ON_ERROR)) === 0);
    ++$passed;
};
$open = static function (string $alias) use (&$owners, $zero, $check): string {
    $frame = \Uwvm\Native\invoke('capability_open', $zero, $alias, 0);
    $check($frame[0] === 0 && is_string($frame[3]) && strlen($frame[3]) === 8 && $frame[3] !== $zero);
    $owners[] = $frame[3];
    return $frame[3];
};
$close = static function (string $handle) use (&$owners, $check): int {
    $index = array_search($handle, $owners, true);
    $check($index !== false);
    unset($owners[$index]);
    return \Uwvm\Native\invoke('capability_close', $handle, '', 0)[0];
};
$compare = static function (string $left, string $right) use ($check): int {
    $check(strlen($left) === 8 && strlen($right) === 8);
    for ($i = 7; $i >= 0; --$i) {
        $a = ord($left[$i]);
        $b = ord($right[$i]);
        if ($a !== $b) { return $a < $b ? -1 : 1; }
    }
    return 0;
};
$subtract = static function (string $after, string $before) use ($check): string {
    $check(strlen($after) === 8 && strlen($before) === 8);
    $borrow = 0;
    $result = '';
    for ($i = 0; $i < 8; ++$i) {
        $byte = ord($after[$i]) - ord($before[$i]) - $borrow;
        $borrow = $byte < 0 ? 1 : 0;
        $result .= chr($byte & 255);
    }
    $check($borrow === 0);
    return $result;
};
$encode = static function (string $text) use ($check): string {
    $check(strlen($text) <= 128);
    return pack('V', strlen($text)) . $text;
};
$decode = static function (array $frame) use ($check): string {
    $check($frame[0] === 0 && is_string($frame[1]) && strlen($frame[1]) >= 4 && strlen($frame[1]) <= 256);
    $check($frame[2] === pack('V2', strlen($frame[1]), 0));
    $length = unpack('Vlength', substr($frame[1], 0, 4))['length'];
    $check($length === strlen($frame[1]) - 4);
    $text = substr($frame[1], 4);
    $check(preg_match('//u', $text) === 1 && !str_contains($text, "\0"));
    return $text;
};
try {
    $args = \Uwvm\Native\argv();
    $check(count($args) === 2 && is_string($args[1]) && preg_match('/\A[0-9a-f]{32}\z/', $args[1]) === 1);
    $challenge = $args[1];
    $current = 'genuine-runtime-and-raw-abi';
    $abi = \Uwvm\Native\invoke('abi_version', $zero, '', 0);
    $check(PHP_VERSION_ID === 80413 && $abi[0] === 0 && $abi[3] === "\1" . str_repeat("\0", 7));
    $report($current, 80413);

    $outgoing = $open('send');
    $incoming = $open('receive');
    $idle = $open('idle');
    $steady = $open('steady');
    $now = static function () use ($steady, $check): string {
        $clock = \Uwvm\Native\invoke('time_read_steady', $steady, '', 8);
        $check($clock[0] === 0 && is_string($clock[1]) && strlen($clock[1]) === 8 &&
               $clock[2] === "\x08" . str_repeat("\0", 7) && $clock[3] === null);
        return $clock[1];
    };
    $check(\Uwvm\Native\invoke('topic_subscribe', $incoming, '', 0)[0] === 0);
    $check(\Uwvm\Native\invoke('topic_subscribe', $idle, '', 0)[0] === 0);
    $previous = null;
    for ($index = 0; $index < 2; ++$index) {
        $current = $index === 0 ? 'official-ros-correlated-first-reply' : 'official-ros-fresh-second-reply';
        $expected = 'sdk07-php-stage-a:' . $challenge . ':' . ($index + 1);
        $started = $now();
        // One original publication per request; transient-local QoS is explicit.
        $check(\Uwvm\Native\invoke('topic_publish', $outgoing, $encode($expected), 0)[0] === 0);
        $matched = false;
        $last = $started;
        for ($attempt = 0; $attempt < 200; ++$attempt) {
            $stamp = $now();
            $check($compare($stamp, $last) >= 0 &&
                   $compare($subtract($stamp, $started), "\0\xbc\xa0\x65\1\0\0\0") <= 0);
            $last = $stamp;
            $frame = \Uwvm\Native\invoke('event_poll', $incoming, '', 256);
            if ($frame[0] === 0) {
                $observed = $decode($frame);
                if ($observed === $expected) {
                    $check($previous === null || $observed !== $previous);
                    $matched = true;
                    break;
                }
                $check($previous !== null && $observed === $previous);
            } else {
                $check($frame[0] === 11);
            }
            $check(\Uwvm\Native\pause_ms(20) === 0);
        }
        $check($matched);
        $previous = $expected;
        $report($current, 0);
    }

    $current = 'ungranted-topic-alias-denied';
    $denied = \Uwvm\Native\invoke('capability_open', $zero, 'denied-send', 0);
    $check($denied[0] === 13 && ($denied[3] === null || $denied[3] === $zero));
    $report($current, 13);

    $current = 'retired-publisher-handle-refused';
    $stale = $outgoing;
    $check($close($outgoing) === 0);
    $refused = \Uwvm\Native\invoke('topic_publish', $stale, $encode('sdk07-php-stage-a:retired'), 0);
    $check($refused[0] === 9);
    $report($current, 9);

    $current = 'bounded-idle-feedback-timeout';
    $started = $now();
    for ($attempt = 0; $attempt < 20; ++$attempt) {
        $check(\Uwvm\Native\invoke('event_poll', $idle, '', 256)[0] === 11);
        $check(\Uwvm\Native\invoke('event_poll', $incoming, '', 256)[0] === 11);
        $check(\Uwvm\Native\pause_ms(10) === 0);
    }
    $elapsed = $subtract($now(), $started);
    $check($compare($elapsed, "\0\xe1\xf5\x05\0\0\0\0") >= 0 &&
           $compare($elapsed, "\0\x5e\xd0\xb2\0\0\0\0") <= 0);
    $report($current, 11);
    foreach (array_reverse($owners) as $handle) {
        $check($close($handle) === 0);
    }
    $owners = [];
    $check($passed === 6);
    $check(\Uwvm\Native\output(json_encode(['format' => 'uwvm-sdk-stage-a-summary-v1', 'language' => 'php',
        'required' => 6, 'selected' => 6, 'executed' => 6, 'passed' => 6, 'failed' => 0, 'blocked' => 0,
        'not_run' => 0, 'stage_b_pass' => false, 'component_isolation_pass' => false], JSON_THROW_ON_ERROR)) === 0);
    $uwvm_exit = 0;
} catch (\Throwable $failure) {
    \Uwvm\Native\output(json_encode(['format' => 'uwvm-sdk-stage-a-failure-v1',
        'language' => 'php', 'case' => $current], JSON_THROW_ON_ERROR));
    $uwvm_exit = 1;
} finally {
    foreach (array_reverse($owners) as $handle) {
        try {
            if ($close($handle) !== 0) { $uwvm_exit = 1; }
        } catch (\Throwable $failure) { $uwvm_exit = 1; }
    }
}
