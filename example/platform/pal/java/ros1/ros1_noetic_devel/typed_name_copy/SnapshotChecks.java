package uwvm.pal.copy;

import org.ros.namespace.GraphName;
import org.ros.namespace.GraphNameSnapshot;
import org.uwvm.roswasm.Codecs;

/** Pure guest checks of the maintained adapter and existing public String codec. */
public final class SnapshotChecks
{
    private static int checks;
    private static void expect(boolean value)
    {
        if(!value) throw new IllegalStateException("graph snapshot check " + checks);
        ++checks;
    }

    private static final class Source implements GraphNameSnapshot.ScalarSource
    {
        final int mode;
        int revisions, lengths, reads;
        byte[] wire = Codecs.STRING.encode("/source/value11");
        Source(int mode)
        {
            this.mode = mode;
            if(mode == 4) wire = new byte[] {1, 0, 0, 0, (byte)0xc0};
            if(mode == 5) wire = Codecs.STRING.encode("/source/value11/");
            if(mode == 12) wire = Codecs.STRING.encode("/bad\0name");
            if(mode == 13) wire = new byte[] {0, 0, 0, 0, 0};
            if(mode == 14) wire = new byte[] {0, 0, 0};
            if(mode == 15) wire = new byte[] {2, 0, 0, 0, (byte)0xc0, (byte)0x80};
            if(mode == 16) wire = new byte[] {4, 0, 0, 0, 1, 2, 3};
        }
        public long revision()
        {
            ++revisions;
            return mode == 7 ? 3 : mode == 8 ? 0 : mode == 9 ? -2
                : mode == 6 && revisions > 1 ? 4 : 2;
        }
        public int length()
        {
            ++lengths;
            return mode == 1 ? -1 : mode == 2 ? 65
                : mode == 10 && lengths > 1 ? wire.length + 1 : wire.length;
        }
        public int readByte(int index)
        {
            ++reads;
            return mode == 3 && index == 4 ? 256 : mode == 11 && index == 4 ? -1 : wire[index] & 255;
        }
    }

    public static void main(String[] args)
    {
        expect(args.length == 0);
        GraphNameSnapshot first = GraphNameSnapshot.capture(GraphName.of("/robot/head///"), 64);
        expect(first.value().toString().equals("/robot/head"));
        byte[] exported = first.copyWire();
        exported[4] = 'X';
        expect(first.value().toString().equals("/robot/head"));
        byte[] candidate = first.copyWire();
        GraphNameSnapshot second = GraphNameSnapshot.fromWire(candidate, 64);
        candidate[4] = 'Z';
        expect(second.value().toString().equals("/robot/head"));
        expect(first.copyWire() != first.copyWire());
        expect(GraphNameSnapshot.capture(GraphName.root(), 64).value().isRoot());
        expect(GraphNameSnapshot.capture(GraphName.empty(), 64).value().isEmpty());
        Source good = new Source(0);
        GraphNameSnapshot copied = GraphNameSnapshot.read(good, 64);
        expect(copied.value().toString().equals("/source/value11"));
        good.wire[4] = 'X';
        expect(copied.value().toString().equals("/source/value11"));
        for(int mode = 1; mode <= 16; ++mode)
        {
            Source source = new Source(mode);
            boolean refused = false;
            try { GraphNameSnapshot.read(source, 64); }
            catch(IllegalArgumentException expected) { refused = true; }
            expect(refused);
            expect(first.value().toString().equals("/robot/head"));
            if(mode == 1 || mode == 2 || mode == 7 || mode == 8 || mode == 9 || mode == 14)
                expect(source.reads == 0);
        }
        for(int maximum : new int[] {3, GraphNameSnapshot.MAXIMUM_WIRE_BYTES + 1})
        {
            Source source = new Source(0);
            boolean refused = false;
            try { GraphNameSnapshot.read(source, maximum); }
            catch(IllegalArgumentException expected) { refused = true; }
            expect(refused);
            expect(source.revisions == 0 && source.lengths == 0 && source.reads == 0);
        }
        boolean nullRefused = false;
        try { GraphNameSnapshot.fromWire(null, 64); }
        catch(IllegalArgumentException expected) { nullRefused = true; }
        expect(nullRefused);
        boolean shortRefused = false;
        try { GraphNameSnapshot.fromWire(new byte[3], 64); }
        catch(IllegalArgumentException expected) { shortRefused = true; }
        expect(shortRefused);
        boolean nameRefused = false;
        try { GraphNameSnapshot.fromWire(Codecs.STRING.encode("bad name"), 64); }
        catch(IllegalArgumentException expected) { nameRefused = true; }
        expect(nameRefused);
        System.out.println("{\"sdk09_graph_name_snapshot_checks\":" + checks
            + ",\"scope\":\"guest-owned-value-copy-only-no-private-instance-or-ROS-acceptance\"}");
    }
}
