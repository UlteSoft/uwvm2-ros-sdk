package uwvm.ros.build;

import java.io.File;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.security.MessageDigest;
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

    /** Retain the exact native backend class bytes actually selected before AOT. */
    private static void backendIdentity() throws Exception
    {
        String selected = System.getProperty("uwvm.ros.backendReceipt");
        if(selected == null)
            throw new IllegalArgumentException("Retain the native compiler backend identity");
        URL origin = Compile.class.getProtectionDomain().getCodeSource().getLocation();
        URL coreOrigin = org.teavm.backend.wasm.model.WasmModule.class.getProtectionDomain().getCodeSource().getLocation();
        String coreSha = java.util.HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256")
            .digest(Files.readAllBytes(new File(coreOrigin.toURI()).toPath())));
        if(!coreSha.equals("b9fe1b008512c8f11ff3efbd9cf2f0565b4bfa76943a9f23910befc0812f7ebf"))
            throw new IllegalStateException("The native backend patch requires the exact pinned TeaVM 0.13.1 core");
        String[] names = {
            "org.teavm.backend.wasm.generate.WasmGenerationVisitor",
            "org.teavm.backend.wasm.render.WasmBinaryRenderer"
        };
        List<String> rows = new ArrayList<>();
        for(String name: names)
        {
            Class<?> type = Class.forName(name, false, Compile.class.getClassLoader());
            if(!origin.equals(type.getProtectionDomain().getCodeSource().getLocation()))
                throw new IllegalStateException("Pinned native backend override was not selected: " + name);
            byte[] bytes;
            try(var input = type.getResourceAsStream(type.getSimpleName() + ".class"))
            {
                if(input == null)
                    throw new IllegalStateException("Missing native backend class bytes: " + name);
                bytes = input.readAllBytes();
            }
            String sha = java.util.HexFormat.of().formatHex(MessageDigest.getInstance("SHA-256").digest(bytes));
            rows.add("{\"class\":\"" + name + "\",\"sha256\":\"" + sha + "\"}");
        }
        Files.writeString(new File(selected).toPath(),
            "{\"format\":\"uwvm-java-native-backend-identity-v1\",\"optimization\":\"FULL\","
            + "\"post_generation_Wasm_rewrite\":false,\"core_jar_sha256\":\"" + coreSha
            + "\",\"classes\":[" + String.join(",", rows) + "]}\n",
            StandardCharsets.UTF_8);
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
        backendIdentity();
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
