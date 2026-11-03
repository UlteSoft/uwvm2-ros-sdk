package uwvm.pal.copy;

import org.teavm.interop.Export;
import org.ros.namespace.GraphName;
import org.ros.namespace.GraphNameSnapshot;
import org.uwvm.roswasm.Codecs;

/** Application scalar exports. Authority and private instance binding are external. */
public final class GraphNameEndpoint
{
    private static byte[] payload = GraphNameSnapshot.capture(GraphName.of("/source/value0"), 64).copyWire();
    private static byte[] retained = new byte[0];
    private static long revision = 2;
    private static int mode;

    @Export(name = "name_configure")
    public static int configure(int selectedMode, int value)
    {
        if(selectedMode < 0 || selectedMode > 7 || value < 0 || value > 1000000 || revision > Long.MAX_VALUE - 4)
            return 22;
        byte[] next = selectedMode == 4 ? new byte[] {1, 0, 0, 0, (byte)0xc0}
            : selectedMode == 5 ? Codecs.STRING.encode("/source/value" + value + "/")
            : GraphNameSnapshot.capture(GraphName.of("/source/value" + value), 64).copyWire();
        ++revision;
        mode = selectedMode;
        payload = next;
        ++revision;
        return 0;
    }

    @Export(name = "name_revision")
    public static long revision() { return mode == 7 ? revision | 1 : revision; }

    @Export(name = "name_length")
    public static int length() { return mode == 1 ? -1 : mode == 2 ? 65 : payload.length; }

    @Export(name = "name_byte")
    public static int readByte(int index)
    {
        if(index < 0 || index >= payload.length) return 256;
        if(mode == 3 && index == 4) return 256;
        if(mode == 6 && index == payload.length - 1) revision += 2;
        return payload[index] & 255;
    }

    @Export(name = "allocation_step")
    public static int allocate(int bytes)
    {
        if(bytes < 0 || bytes > 8 * 1024 * 1024) return 22;
        retained = new byte[bytes];
        if(bytes != 0) { retained[0] = 17; retained[bytes - 1] = 23; }
        return 0;
    }
}
