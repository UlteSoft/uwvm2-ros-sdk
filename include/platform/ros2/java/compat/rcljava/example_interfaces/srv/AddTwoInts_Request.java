// @file AddTwoInts_Request.java
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package example_interfaces.srv;
import org.ros2.rcljava.interfaces.MessageDefinition;

/**
 * Complete original example_interfaces/srv/AddTwoInts Request fields, owning Java values.
 * Getters/setters preserve the official generated naming and native signedness.
 * No native converter address, guessed identity or projected field is supplied.
 */
public final class AddTwoInts_Request implements MessageDefinition
{
    private long a = 0;

    public long getA()
    {
        return a;
    }

    public AddTwoInts_Request setA(long value)
    {
        a = value;
        return this;
    }

    private long b = 0;

    public long getB()
    {
        return b;
    }

    public AddTwoInts_Request setB(long value)
    {
        b = value;
        return this;
    }

    private UnsupportedOperationException nativePointer()
    {
        return new UnsupportedOperationException("native converters/type support do not exist in this Guest profile");
    }

    public static long getDestructor()
    {
        throw new UnsupportedOperationException("native destructor unavailable");
    }

    public static long getFromJavaConverter()
    {
        throw new UnsupportedOperationException("native converter unavailable");
    }

    public static long getToJavaConverter()
    {
        throw new UnsupportedOperationException("native converter unavailable");
    }

    public static long getTypeSupport()
    {
        throw new UnsupportedOperationException("native type support unavailable");
    }

    public long getFromJavaConverterInstance()
    {
        throw nativePointer();
    }

    public long getToJavaConverterInstance()
    {
        throw nativePointer();
    }

    public long getTypeSupportInstance()
    {
        throw nativePointer();
    }

    public long getDestructorInstance()
    {
        throw nativePointer();
    }
}
