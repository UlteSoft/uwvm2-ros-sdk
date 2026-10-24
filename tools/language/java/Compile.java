package uwvm.ros.build;

import java.io.File;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import org.teavm.interop.Export;
import org.teavm.tooling.ConsoleTeaVMToolLog;
import org.teavm.tooling.TeaVMTargetType;
import org.teavm.tooling.TeaVMTool;
import org.teavm.vm.TeaVMOptimizationLevel;

/**
 * @brief Translate genuine Java or Kotlin class files to a standalone WASI command.
 * @details This build-time entry point selects TeaVM's linear-memory WASI backend.
 * It does not start the resulting command or provide any ROS implementation.
 * The process owns its class loader until translation completes.
 */
public final class Compile
{
    /** @brief Prevent creation of this stateless build entry. */
    private Compile()
    {
    }

    /**
     * @brief Admit explicit scalar library exports without executing a user class.
     * @param loader Compiler-owned class loader; class initialization stays disabled.
     * @param root Exact user-selected class containing real Export-annotated methods.
     * @return Sorted actual annotation names; collisions and reference ABI values fail.
     * @throws Exception Missing root, malformed declaration, or unsupported module ABI.
     * @details Managed objects stay in their defining module heap. Cross-module
     * references require an explicit ownership/marshalling implementation and are
     * refused by this initial scalar contract. No method body is invoked here.
     */
    private static Set<String> libraryExports(ClassLoader loader, String root) throws Exception
    {
        Class<?> type = Class.forName(root, false, loader);
        Set<String> names = new TreeSet<>();
        for(Method method: type.getDeclaredMethods())
        {
            Export export = method.getAnnotation(Export.class);
            if(export == null)
            {
                continue;
            }
            if(!Modifier.isStatic(method.getModifiers()) || !method.getReturnType().isPrimitive())
            {
                throw new IllegalArgumentException("Shared exports require static scalar/void method results: " + method);
            }
            for(Class<?> parameter: method.getParameterTypes())
            {
                if(!parameter.isPrimitive())
                {
                    throw new IllegalArgumentException("Shared exports cannot transfer managed references: " + method);
                }
            }
            String name = export.name();
            if(!name.matches("[A-Za-z_][A-Za-z0-9_.-]*") || name.equals("_start") || name.equals("start") || name.equals("memory") || !names.add(name))
            {
                throw new IllegalArgumentException("Invalid, reserved, or duplicate library export: " + name);
            }
        }
        if(names.isEmpty())
        {
            throw new IllegalArgumentException("A shared module needs real Export-annotated methods");
        }
        return names;
    }

    /**
     * @brief Compile the requested main class with the exact supplied classpath.
     * @param args Main class, output Wasm path, then complete classpath entries.
     * @return No value; compiler errors produce a nonzero build-tool exit.
     * @details All input files are borrowed. Only the selected output directory
     * is written. A diagnostic error rejects an otherwise emitted module.
     * @throws Exception Missing inputs, invalid paths, or TeaVM compilation errors.
     */
    public static void main(String[] args) throws Exception
    {
        if(args.length < 3)
        {
            throw new IllegalArgumentException("main-class output.wasm classpath...");
        }
        File output = new File(args[1]).getAbsoluteFile();
        List<File> entries = new ArrayList<>();
        List<URL> urls = new ArrayList<>();
        for(int index = 2; index < args.length; index++)
        {
            File entry = new File(args[index]).getAbsoluteFile();
            if(!entry.exists())
            {
                throw new IllegalArgumentException("Missing classpath input: " + entry);
            }
            entries.add(entry);
            urls.add(entry.toURI().toURL());
        }
        try(URLClassLoader loader = new URLClassLoader(urls.toArray(URL[] ::new), Compile.class.getClassLoader()))
        {
            String kind = System.getProperty("uwvm.ros.targetKind", "binary");
            if(!kind.equals("binary") && !kind.equals("shared"))
            {
                throw new IllegalArgumentException("TeaVM linear Wasm target has no relocatable static archive producer");
            }
            Set<String> exports = null;
            String libraryRoot = null;
            if(kind.equals("shared"))
            {
                libraryRoot = System.getProperty("uwvm.ros.libraryRoot");
                if(libraryRoot == null)
                {
                    throw new IllegalArgumentException("Select the shared module's managed root class");
                }
                exports = libraryExports(loader, libraryRoot);
            }
            TeaVMTool compiler = new TeaVMTool();
            compiler.setClassLoader(loader);
            compiler.setClassPath(entries);
            compiler.setMainClass(args[0]);
            if(libraryRoot != null)
            {
                compiler.getClassesToPreserve().add(libraryRoot);
            }
            compiler.setTargetType(TeaVMTargetType.WEBASSEMBLY_WASI);
            compiler.setTargetDirectory(output.getParentFile());
            compiler.setTargetFileName(output.getName());
            compiler.setOptimizationLevel(TeaVMOptimizationLevel.FULL);
            compiler.setStrict(true);
            compiler.setObfuscated(false);
            compiler.setMinHeapSize(4 * 1024 * 1024);
            compiler.setMaxHeapSize(32 * 1024 * 1024);
            compiler.setLog(new ConsoleTeaVMToolLog(false));
            compiler.generate();
            if(!compiler.getProblemProvider().getSevereProblems().isEmpty() || !output.isFile())
            {
                throw new IllegalStateException("TeaVM rejected the requested WASI command");
            }
            if(exports != null)
            {
                String contract = System.getProperty("uwvm.ros.exportContract");
                if(contract == null)
                {
                    throw new IllegalArgumentException("Retain the shared export contract in build intermediates");
                }
                Files.writeString(new File(contract).toPath(), String.join("\n", exports) + "\n", StandardCharsets.UTF_8);
            }
        }
    }
}
