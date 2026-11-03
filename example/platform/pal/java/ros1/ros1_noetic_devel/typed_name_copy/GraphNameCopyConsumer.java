package uwvm.pal.copy;

import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;
import org.ros.namespace.GraphNameSnapshot;

/** Uses public guest snapshot semantics; application imports carry only values. */
public final class GraphNameCopyConsumer
{
    @Import(module = "heap_a", name = "name_configure") @Unmanaged private static native int configure(int mode, int value);
    @Import(module = "heap_a", name = "name_revision") @Unmanaged private static native long revision();
    @Import(module = "heap_a", name = "name_length") @Unmanaged private static native int length();
    @Import(module = "heap_a", name = "name_byte") @Unmanaged private static native int readByte(int index);
    private static int checks;

    private static void expect(boolean value)
    {
        if(!value) throw new IllegalStateException("typed name copy check " + checks);
        ++checks;
    }

    private static GraphNameSnapshot copy()
    {
        return GraphNameSnapshot.read(new GraphNameSnapshot.ScalarSource() {
            public long revision() { return GraphNameCopyConsumer.revision(); }
            public int length() { return GraphNameCopyConsumer.length(); }
            public int readByte(int index) { return GraphNameCopyConsumer.readByte(index); }
        }, 64);
    }

    public static void main(String[] args)
    {
        expect(args.length == 0);
        expect(configure(0, 11) == 0);
        GraphNameSnapshot first = copy();
        expect(first.value().toString().equals("/source/value11"));
        expect(configure(0, 29) == 0);
        expect(first.value().toString().equals("/source/value11"));
        expect(copy().value().toString().equals("/source/value29"));
        for(int mode = 1; mode <= 7; ++mode)
        {
            expect(configure(mode, 7) == 0);
            boolean rejected = false;
            try { copy(); }
            catch(IllegalArgumentException expected) { rejected = true; }
            expect(rejected);
            expect(first.value().toString().equals("/source/value11"));
        }
        System.out.println("{\"sdk09_typed_name_copy_checks\":" + checks
            + ",\"scope\":\"application-value-copy-only-private-backing-and-grants-require-runtime-evidence\"}");
    }
}
