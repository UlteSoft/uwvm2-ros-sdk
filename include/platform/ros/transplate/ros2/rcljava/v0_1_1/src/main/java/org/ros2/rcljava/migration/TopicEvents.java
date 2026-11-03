package org.ros2.rcljava.migration;

import org.uwvm.roswasm.Codec;
import org.uwvm.roswasm.Codecs;
import org.uwvm.roswasm.Result;
import org.uwvm.roswasm.RosException;

/**
 * Decode the existing uwvm_ros2_v1 event envelope before a guest callback.
 * This owns no transport or grant and defines no new ABI. The separately
 * authorized observer supplies complete event_poll_v1 bytes. Source capability,
 * sequence and native instance/session continuity must all match. A malformed,
 * lost or retired stream is terminal; there is no reconnect or implicit retry.
 */
public final class TopicEvents
{
    private long sequence, instance, session, source;
    private boolean bound, retired;

    public boolean isRetired()
    {
        return retired;
    }

    /** Fully validate and decode one topic value; never dispatch a callback here. */
    public <T> T decode(byte[] wire, long expectedSource, Codec<T> codec)
    {
        if(retired)
            throw failure(125, new byte[0]);
        try
        {
            if(wire == null || wire.length < 64 || wire.length > 4194304 || expectedSource == 0 || codec == null)
                throw failure(22, new byte[0]);
            Codecs.Reader r = new Codecs.Reader(wire);
            if(r.unsigned(4) != 0x45525755L || r.unsigned(2) != 1)
                throw failure(22, new byte[0]);
            int kind = (int)r.unsigned(2);
            if(r.unsigned(1) != 2)
                throw failure(22, new byte[0]);
            int flags = (int)r.unsigned(1);
            if(r.unsigned(2) != 0)
                throw failure(22, new byte[0]);
            int error = (int)r.unsigned(4);
            long currentSource = r.unsigned(8), correlation = r.unsigned(8), next = r.unsigned(8);
            long currentInstance = r.unsigned(8), currentSession = r.unsigned(8), length = r.unsigned(8);
            if(currentSource != expectedSource || correlation != 0 || next == 0 || sequence == -1L || next != sequence + 1
                || currentInstance == 0 || currentSession == 0 || length < 0 || length != r.remaining()
                || bound && (currentSource != source || currentInstance != instance || currentSession != session))
                throw failure(22, new byte[0]);
            byte[] payload = r.take(r.remaining());
            r.end();
            if(kind == 6 || kind == 7)
            {
                if(payload.length != 0 || (flags & ~3) != 0 || kind == 6 && error == 0 || kind == 7 && (flags & 1) == 0)
                    throw failure(22, new byte[0]);
                // Preserve the actual complete control envelope, including
                // loss/retirement flags and source/native epoch identities.
                throw failure(error == 0 ? 125 : error, wire.clone());
            }
            if(kind != 1 || flags != 0 || error != 0)
                throw failure(22, new byte[0]);
            T value = codec.decode(payload);
            sequence = next;
            instance = currentInstance;
            session = currentSession;
            source = currentSource;
            bound = true;
            return value;
        }
        catch(RuntimeException | Error failure)
        {
            retired = true;
            throw failure;
        }
    }

    private static RosException failure(int code, byte[] wire)
    {
        return new RosException(new Result(code, wire, null, null));
    }
}
