package uwvm.pal.copy;

import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;
import org.ros.namespace.GraphNameSnapshot;

/** Two aliases of the same endpoint bytes; actual binding policy remains required. */
public final class AliasNameConsumer
{
    @Import(module = "heap_a", name = "name_configure") @Unmanaged private static native int setA(int mode, int value);
    @Import(module = "heap_a", name = "name_revision") @Unmanaged private static native long revA();
    @Import(module = "heap_a", name = "name_length") @Unmanaged private static native int lenA();
    @Import(module = "heap_a", name = "name_byte") @Unmanaged private static native int byteA(int index);
    @Import(module = "heap_b", name = "name_configure") @Unmanaged private static native int setB(int mode, int value);
    @Import(module = "heap_b", name = "name_revision") @Unmanaged private static native long revB();
    @Import(module = "heap_b", name = "name_length") @Unmanaged private static native int lenB();
    @Import(module = "heap_b", name = "name_byte") @Unmanaged private static native int byteB(int index);
    @Import(module = "heap_a", name = "allocation_step") @Unmanaged private static native int allocateA(int bytes);

    public static void main(String[] args)
    {
        if(args.length != 0 || setA(0, 11) != 0 || setB(0, 29) != 0)
            throw new IllegalStateException("explicit two-alias setup failed");
        GraphNameSnapshot.ScalarSource a = new GraphNameSnapshot.ScalarSource() {
            public long revision() { return revA(); }
            public int length() { return lenA(); }
            public int readByte(int i) { return byteA(i); }
        };
        GraphNameSnapshot.ScalarSource b = new GraphNameSnapshot.ScalarSource() {
            public long revision() { return revB(); }
            public int length() { return lenB(); }
            public int readByte(int i) { return byteB(i); }
        };
        GraphNameSnapshot first = GraphNameSnapshot.read(a, 64);
        if(!first.value().toString().equals("/source/value11")
            || !GraphNameSnapshot.read(b, 64).value().toString().equals("/source/value29")
            || allocateA(256 * 1024) != 0 || setA(0, 37) != 0
            || !first.value().toString().equals("/source/value11")
            || !GraphNameSnapshot.read(a, 64).value().toString().equals("/source/value37")
            || !GraphNameSnapshot.read(b, 64).value().toString().equals("/source/value29"))
            throw new IllegalStateException("alias value state or owned snapshot changed");
        System.out.println("{\"sdk09_alias_name_values\":true,\"scope\":\"logical-values-only-no-private-backing-principal-grant-acceptance\"}");
    }
}
