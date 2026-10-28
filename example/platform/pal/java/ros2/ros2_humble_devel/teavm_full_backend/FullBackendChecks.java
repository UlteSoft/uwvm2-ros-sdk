package uwvm.compiler.tests;

import org.uwvm.roswasm.Codecs;

/** Compiler correctness vectors; all assertions execute in the emitted Wasm. */
public final class FullBackendChecks
{
    private static int checks, effects;
    private static final class First extends RuntimeException {}
    private static final class Second extends RuntimeException {}

    private static void expect(boolean value)
    {
        if(!value) throw new IllegalStateException("FULL backend check " + checks);
        ++checks;
    }

    private static int terminal32(int value)
    {
        try
        {
            if(value % 3 == 0) throw new First();
            if(value % 3 == 1) throw new Second();
            return value + 5;
        }
        catch(First expected) { return value + 7; }
        catch(Second expected) { return value + 11; }
        finally { ++effects; }
    }

    private static long terminal64(long value)
    {
        try
        {
            try
            {
                if((value & 1) == 0) throw new First();
                return value ^ 0x123456789abcdef0L;
            }
            finally { ++effects; }
        }
        catch(First expected) { return value + 37; }
        finally { ++effects; }
    }

    private static void exactRethrow(Error primary)
    {
        try { throw primary; }
        finally { ++effects; }
    }

    public static void main(String[] args)
    {
        expect(args.length == 0);
        for(int value = 0; value < 256; ++value)
        {
            int before = effects;
            expect(terminal32(value) == value + (value % 3 == 0 ? 7 : value % 3 == 1 ? 11 : 5));
            expect(effects == before + 1);
            long wide = (1L << 40) + value;
            expect(terminal64(wide) == ((wide & 1) == 0 ? wide + 37 : wide ^ 0x123456789abcdef0L));
            expect(effects == before + 3);
            String text = "source:" + value;
            expect(Codecs.STRING.decode(Codecs.STRING.encode(text)).equals(text));
        }
        Error primary = new Error("retained original guest identity");
        int before = effects;
        boolean identical = false;
        try { exactRethrow(primary); }
        catch(Error actual) { identical = actual == primary; }
        expect(identical);
        expect(effects == before + 1);
        boolean malformed = false;
        try { Codecs.STRING.decode(new byte[] {1, 0, 0, 0, (byte)0xc0}); }
        catch(IllegalArgumentException expected) { malformed = true; }
        expect(malformed);
        System.out.println("{\"sdk09_HEAD_compiler_checks\":" + checks
            + ",\"scope\":\"HEAD-plus-limited-compiler-fix-genuine-Wasm-only-no-ROS\"}");
    }
}
