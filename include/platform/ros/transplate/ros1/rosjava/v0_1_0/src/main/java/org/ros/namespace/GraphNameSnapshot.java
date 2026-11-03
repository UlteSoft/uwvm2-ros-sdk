package org.ros.namespace;

import org.ros.exception.RosRuntimeException;
import org.uwvm.roswasm.Codecs;

/**
 * Maintained guest-owned snapshot adapter for the transplanted GraphName.
 * Wire values use the existing complete canonical Codecs.STRING. ScalarSource
 * is an application value interface; it installs no VM import, pointer, grant,
 * principal or ROS transport. Independent instance policy remains external.
 */
public final class GraphNameSnapshot
{
    public static final int MAXIMUM_WIRE_BYTES = 65536;

    /** Positive even revisions denote completed application snapshots. */
    public interface ScalarSource
    {
        long revision();
        int length();
        int readByte(int index);
    }

    private final byte[] wire;
    private final GraphName value;

    private GraphNameSnapshot(byte[] owned)
    {
        String text = Codecs.STRING.decode(owned);
        GraphName parsed;
        try
        {
            parsed = GraphName.of(text);
        }
        catch(RosRuntimeException invalid)
        {
            throw new IllegalArgumentException("invalid graph name snapshot", invalid);
        }
        if(!parsed.toString().equals(text))
            throw new IllegalArgumentException("graph name snapshot must already be canonical");
        wire = owned;
        value = parsed;
    }

    private static void bound(int maximum)
    {
        if(maximum < 4 || maximum > MAXIMUM_WIRE_BYTES)
            throw new IllegalArgumentException("snapshot allocation bound");
    }

    public static GraphNameSnapshot capture(GraphName value, int maximum)
    {
        bound(maximum);
        if(value == null || value.toString().length() > maximum - 4)
            throw new IllegalArgumentException("bounded graph name required");
        return fromWire(Codecs.STRING.encode(value.toString()), maximum);
    }

    public static GraphNameSnapshot fromWire(byte[] source, int maximum)
    {
        bound(maximum);
        if(source == null || source.length < 4 || source.length > maximum)
            throw new IllegalArgumentException("complete bounded String wire required");
        return new GraphNameSnapshot(source.clone());
    }

    public static GraphNameSnapshot read(ScalarSource source, int maximum)
    {
        bound(maximum);
        if(source == null)
            throw new IllegalArgumentException("explicit scalar source required");
        long revision = source.revision();
        if(revision <= 0 || (revision & 1) != 0)
            throw new IllegalArgumentException("completed snapshot revision required");
        int size = source.length();
        if(size < 4 || size > maximum)
            throw new IllegalArgumentException("snapshot extent");
        byte[] owned = new byte[size];
        for(int index = 0; index < size; ++index)
        {
            int next = source.readByte(index);
            if(next < 0 || next > 255)
                throw new IllegalArgumentException("scalar byte range");
            owned[index] = (byte)next;
        }
        if(source.revision() != revision || source.length() != size)
            throw new IllegalArgumentException("source changed while copying snapshot");
        return new GraphNameSnapshot(owned);
    }

    public GraphName value()
    {
        return value;
    }

    /** A receiver owns this new array; mutation cannot alter this snapshot. */
    public byte[] copyWire()
    {
        return wire.clone();
    }
}
