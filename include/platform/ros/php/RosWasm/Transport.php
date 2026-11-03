<?php
declare(strict_types=1);
namespace Uwvm\RosWasm;

/**
 * @file Transport.php
 * @brief Own full-width instance-local capabilities in genuine PHP.
 * @details No operation is replayed and no finalizer hides a cleanup attempt.
 */
final class Capability
{
    /**
     * @brief Retain one successful exact eight-byte owner until retirement.
     */
    private function __construct(private ?Word $owner)
    {
    }

    /**
     * @brief Open one validated alias using the original raw import family.
     * @param string $alias Nonempty strict UTF-8 without NUL, at most 255 bytes.
     * @return array Owner-or-null and original acquisition errno.
     */
    public static function open(string $alias): array
    {
        if ($alias === '' || strlen($alias) > 255 || str_contains($alias, "\0") || preg_match('//u', $alias) !== 1)
        {
            return [null, 22];
        }
        $zero = str_repeat("\0", 8);
        $version = \Uwvm\Native\invoke('abi_version', $zero, '', 0);
        if ($version[0] !== 0 || $version[3] !== "\1" . str_repeat("\0", 7))
        {
            return [null, $version[0] ?: 38];
        }
        $frame = \Uwvm\Native\invoke('capability_open', $zero, $alias, 0);
        if ($frame[0] !== 0)
        {
            return [null, $frame[0]];
        }
        if (!is_string($frame[3]) || strlen($frame[3]) !== 8 || $frame[3] === $zero)
        {
            throw new \UnexpectedValueException('successful raw acquisition omitted its owner');
        }
        return [new self(Word::fromBytes($frame[3], 8, false)), 0];
    }

    /**
     * @brief Issue exactly one original raw operation while this owner is live.
     * @param string $operation Original raw import name.
     * @param string $request Whole bytes.
     * @param int $capacity Finite original response bound.
     * @param ?Word $other Exact unsigned eight-byte source/observer word, or zero.
     * @param ?Word $correlation Exact unsigned eight-byte correlation, or zero.
     * @return array Original errno, owned bytes, required Word-or-null and value Word-or-null.
     * @details Invalid word widths/signedness return22 before the native call.
     * event_watch uses this owner as observer and other as source; service_submit
     * uses this owner as source and other as observer. The raw ABI validates
     * operation-specific unused arguments and actual caller-bound grants.
     * No handle word transfers authority or keeps another owner alive.
     */
    public function invoke(
        string $operation,
        string $request = '',
        int $capacity = 0,
        ?Word $other = null,
        ?Word $correlation = null,
    ): array
    {
        if ($this->owner === null)
        {
            return [9, '', null, null];
        }
        foreach ([$other, $correlation] as $word)
        {
            if ($word !== null && ($word->width !== 8 || $word->signed))
            {
                return [22, '', null, null];
            }
        }
        $zero = str_repeat("\0", 8);
        $frame = \Uwvm\Native\invoke(
            $operation, $this->owner->bytes, $request, $capacity,
            $other?->bytes ?? $zero, $correlation?->bytes ?? $zero,
        );
        if ($frame[2] !== null)
        {
            $frame[2] = Word::fromBytes($frame[2], 8, false);
        }
        if ($frame[3] !== null)
        {
            $frame[3] = Word::fromBytes($frame[3], 8, false);
        }
        return $frame;
    }

    /**
     * @brief Borrow the exact live owner word for explicit watch/submit calls.
     * @return Word Immutable full-width word; it creates no permission.
     * @throws \LogicException This owner has already been retired.
     * @details Keep this owner live through the synchronous call that uses its
     * word. A copied word does not extend its lifetime or cross-instance grants.
     */
    public function borrowHandle(): Word
    {
        if ($this->owner === null)
        {
            throw new \LogicException('retired capability');
        }
        return $this->owner;
    }

    /**
     * @brief Read four full-width readiness counters without consuming a record.
     * @return array [original errno, named immutable unsigned Words or null].
     * @details A snapshot reserves no capacity or permission. This owner needs
     * its own event.observe grant. No wait, callback or automatic poll occurs.
     */
    public function readiness(): array
    {
        $frame = $this->invoke('event_ready', '', 32);
        if ($frame[0] !== 0) { return [$frame[0], null]; }
        if (strlen($frame[1]) !== 32 || $frame[2] !== null || $frame[3] !== null)
        {
            throw new \UnexpectedValueException('successful readiness omitted its exact32-byte snapshot');
        }
        $result = [];
        foreach (['ready_events', 'next_event_bytes', 'admission_slots', 'admission_bytes'] as $i => $name)
        {
            $result[$name] = Word::fromBytes(substr($frame[1], $i * 8, 8), 8, false);
        }
        return [0, $result];
    }

    /**
     * @brief Admit one copied canonical service request through two live owners.
     * @param Capability $observer Separately granted, explicitly paired observer.
     * @param string $request Complete canonical bytes, at most4193778.
     * @return array Original four-field frame; a successful value is a request ID.
     * @details An ID is not a capability or rcl's signed sequence number.
     * Zero means admission, not response completion. Error11 is no admission
     * credit;107/110 may follow an external effect. Nothing is retried. Owners
     * remain caller-owned and must stay live through subsequent observation.
     * @throws \UnexpectedValueException Successful admission omitted its ID;
     * the caller must not infer that the external request can be replayed.
     */
    public function submitService(Capability $observer, string $request): array
    {
        if ($this->owner === null) { return [9, '', null, null]; }
        if (strlen($request) > 4193778) { return [22, '', null, null]; }
        try { $other = $observer->borrowHandle(); }
        catch (\LogicException $retired) { return [9, '', null, null]; }
        $frame = $this->invoke('service_submit', $request, 0, $other);
        if ($frame[0] === 0 && ($frame[1] !== '' || $frame[2] !== null
            || !($frame[3] instanceof Word) || $frame[3]->bytes === str_repeat("\0", 8)))
        {
            throw new \UnexpectedValueException('successful admission omitted its exact nonzero request ID');
        }
        return $frame;
    }

    /**
     * @brief Retire the owner before one explicit cleanup attempt.
     * @return int Original cleanup errno, or 9 when already retired.
     */
    public function close(): int
    {
        if ($this->owner === null)
        {
            return 9;
        }
        $handle = $this->owner;
        $this->owner = null;
        return \Uwvm\Native\invoke('capability_close', $handle->bytes, '', 0)[0];
    }
}

/**
 * @brief One complete immutable copied unified-event record, never a native pointer.
 * @details The SDK's existing UWRE ABI-v1 framing is checked in full before an
 * object is returned. Local decoding creates no grant and cannot authenticate
 * a fabricated record; the actual runtime/observer remains the authority.
 */
final class EventRecord
{
    private function __construct(
        public readonly int $kind,
        public readonly int $backend,
        public readonly int $flags,
        public readonly Word $error,
        public readonly Word $source,
        public readonly Word $correlation,
        public readonly Word $sequence,
        public readonly Word $instance,
        public readonly Word $session,
        public readonly Word $payloadBytes,
        public readonly string $body,
        public readonly string $bytes,
    ) {
    }

    /**
     * @brief Validate one whole64-byte-header frame including ticket/body rules.
     * @param string $bytes Complete unchanged record within64..4194304 bytes.
     * @return self Owning immutable PHP values; all u64 identities remain Words.
     * @throws \InvalidArgumentException Invalid framing, extent, flags or ticket.
     */
    public static function decode(string $bytes): self
    {
        $length = strlen($bytes);
        if ($length < 64 || $length > 4194304 || substr($bytes, 0, 4) !== 'UWRE'
            || substr($bytes, 4, 2) !== "\1\0" || substr($bytes, 10, 2) !== "\0\0")
        {
            throw new \InvalidArgumentException('complete UWRE-v1 frame required');
        }
        $kind = unpack('v', substr($bytes, 6, 2))[1];
        $backend = ord($bytes[8]);
        $flags = ord($bytes[9]);
        $error = Word::fromBytes(substr($bytes, 12, 4), 4, false);
        $words = [];
        for ($offset = 16; $offset < 64; $offset += 8)
        {
            $words[] = Word::fromBytes(substr($bytes, $offset, 8), 8, false);
        }
        [$source, $correlation, $sequence, $instance, $session, $size] = $words;
        $zero = str_repeat("\0", 8);
        try { $bodySize = $size->small(4194304); }
        catch (\OutOfRangeException $invalid) { throw new \InvalidArgumentException('event body extent'); }
        if ($kind < 1 || $kind > 7 || $backend < 1 || $backend > 2 || $source->bytes === $zero
            || $sequence->bytes === $zero || $instance->bytes === $zero || $session->bytes === $zero
            || $bodySize !== $length - 64)
        {
            throw new \InvalidArgumentException('event identity or complete body extent');
        }
        $hasError = $error->bytes !== str_repeat("\0", 4);
        if ($kind >= 6)
        {
            if ($bodySize !== 0 || ($flags & ~3) !== 0 || ($kind === 6 && !$hasError)
                || ($kind === 7 && ($flags & 1) === 0))
            {
                throw new \InvalidArgumentException('error/closed metadata has invalid body or flags');
            }
        }
        else
        {
            if ($hasError || ($kind === 1 && ($correlation->bytes !== $zero || ($flags !== 0 && $flags !== 8)))
                || ($kind !== 1 && ($correlation->bytes === $zero
                    || ($kind === 2 ? ($flags !== 0 && $flags !== 4) : $flags !== 0))))
            {
                throw new \InvalidArgumentException('data event kind/error/correlation/flags disagree');
            }
            if (in_array($kind, [2, 4, 5], true)
                && ($bodySize < 8 || substr($bytes, 64, 8) !== $correlation->bytes))
            {
                throw new \InvalidArgumentException('complete embedded owned ticket required');
            }
        }
        return new self($kind, $backend, $flags, $error, $source, $correlation,
            $sequence, $instance, $session, $size, substr($bytes, 64), $bytes);
    }
}

/**
 * @brief Caller-driven source/session/sequence binding for one explicit observer.
 * @details This is a typed-copy migration helper, not a pointer-compatible rcl
 * wait set or a native callback thread. Owners remain with the caller. Only
 * actual runtime grants authorize polling; header words create no authority.
 */
final class EventBinding
{
    private string $sequence;
    private ?string $instance = null;
    private ?string $session = null;
    private ?string $observer = null;
    private readonly Word $correlation;
    private bool $spinning = false;
    private bool $retired = false;
    private bool $didDeliver = false;

    /** @brief Bind one exact backend/source and optional outgoing correlation. */
    public function __construct(private readonly int $backend, private readonly Word $source, ?Word $correlation = null)
    {
        if (($backend !== 1 && $backend !== 2) || $source->width !== 8 || $source->signed
            || $source->bytes === str_repeat("\0", 8)
            || ($correlation !== null && ($correlation->width !== 8 || $correlation->signed)))
        {
            throw new \InvalidArgumentException('explicit backend and unsigned source/correlation words required');
        }
        $this->correlation = $correlation ?? Word::fromBytes(str_repeat("\0", 8), 8, false);
        $this->sequence = str_repeat("\0", 8);
    }

    private function commit(string $bytes): EventRecord
    {
        $record = EventRecord::decode($bytes);
        $next = $this->sequence;
        $carry = 1;
        for ($i = 0; $i < 8; ++$i)
        {
            $value = ord($next[$i]) + $carry;
            $next[$i] = chr($value & 255);
            $carry = $value >> 8;
        }
        $zero = str_repeat("\0", 8);
        if ($carry !== 0 || $record->backend !== $this->backend || $record->source->bytes !== $this->source->bytes
            || $record->sequence->bytes !== $next
            || ($this->instance !== null && ($record->instance->bytes !== $this->instance || $record->session->bytes !== $this->session))
            || ($this->correlation->bytes !== $zero && $record->correlation->bytes !== $zero
                && $record->correlation->bytes !== $this->correlation->bytes))
        {
            throw new \InvalidArgumentException('event source/backend/session/sequence/correlation binding mismatch');
        }
        $this->sequence = $next;
        $this->instance = $record->instance->bytes;
        $this->session = $record->session->bytes;
        return $record;
    }

    /**
     * @brief Transactionally check a supplied record without any runtime call.
     * @throws \LogicException Retired binding or active callback dispatch.
     * @throws \InvalidArgumentException Record rejected without binding mutation.
     */
    public function accept(string $bytes): EventRecord
    {
        if ($this->retired || $this->spinning) { throw new \LogicException('binding unavailable'); }
        return $this->commit($bytes);
    }

    /** @brief Report whether the latest non-reentrant dispatch committed a callback. */
    public function delivered(): bool { return $this->didDeliver; }

    /** @brief Retire only this local binding:17 during dispatch,9 after retirement. */
    public function retire(): int
    {
        if ($this->spinning) { return 17; }
        if ($this->retired) { return 9; }
        $this->retired = true;
        return 0;
    }

    /**
     * @brief Poll, validate and call application code once on the current thread.
     * @return array [errno, EventRecord-or-null, required Word-or-null, callback value].
     * @details Capacity0 is an explicit size probe; all capacities0..4194304
     * preserve the raw poll contract. Error11 is idle;90 retains the native record and exposes only an
     * actually written required word. There is no resize/retry. An invalid
     * successful frame returns local22 after consumption. A valid binding is
     * committed before the callback; callback exceptions propagate and never
     * replay it. Reentrant dispatch/retirement returns17 before another poll.
     */
    public function dispatchOne(Capability $observer, int $capacity, callable $callback): array
    {
        if ($this->spinning) { return [17, null, null, null]; }
        if ($this->retired) { return [9, null, null, null]; }
        $this->didDeliver = false;
        if ($capacity < 0 || $capacity > 4194304) { return [22, null, null, null]; }
        try { $observerWord = $observer->borrowHandle(); }
        catch (\LogicException $retired) { return [9, null, null, null]; }
        if ($this->observer !== null && $observerWord->bytes !== $this->observer)
        {
            return [22, null, null, null];
        }
        $this->observer = $observerWord->bytes;
        $this->spinning = true;
        try
        {
            $frame = $observer->invoke('event_poll_v1', '', $capacity);
            if ($frame[0] !== 0) { return [$frame[0], null, $frame[2], null]; }
            if (!($frame[2] instanceof Word) || $frame[2]->decimal() !== (string) strlen($frame[1]) || $frame[3] !== null)
            {
                return [22, null, $frame[2], null];
            }
            try { $record = $this->commit($frame[1]); }
            catch (\InvalidArgumentException $invalid) { return [22, null, $frame[2], null]; }
            $this->didDeliver = true;
            return [0, $record, $frame[2], $callback($record)];
        }
        finally { $this->spinning = false; }
    }
}
