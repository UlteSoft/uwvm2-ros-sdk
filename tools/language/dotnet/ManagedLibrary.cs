/**
 * @file ManagedLibrary.cs
 * @brief Inspect actual CLR metadata for the shared Wasm library export contract.
 * @details This host build task never loads or executes a user assembly. It
 * reads the real trimmed assembly and admits only named static scalar native
 * entry points recognized by Mono's original UCO or MonoPInvokeCallback paths.
 */
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Reflection.Metadata;
using System.Reflection.PortableExecutable;
using System.Text.Json;
using System.Text.RegularExpressions;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Uwvm.Ros.Build
{
    /** @brief Validate exact native ABI declarations without invoking user code. */
    public sealed class ValidateManagedLibrary : Task
    {
        /** @brief Actual trimmed assembly selected for genuine Mono full AOT. */
        [Required]
        public string AssemblyFile { get; set; } = "";

        /** @brief Exact caller-selected assembly name, excluding its file suffix. */
        [Required]
        public string ExpectedAssemblyName {
            get; set;
        } = "";

        /** @brief Owned build-intermediate contract path, outside deployment output. */
        [Required]
        public string ContractFile {
            get; set;
        } = "";

        /** @brief Sorted actual native symbols for the real Wasm linker to export. */
        [Output]
        public ITaskItem[] ExportSymbols {
            get; private set;
        } = Array.Empty<ITaskItem>();

        /** @brief Distinguish the two original Mono callback metadata conventions. */
        private enum NativeAttribute
        {
            None,
            UnmanagedCallersOnly,
            MonoPInvokeCallback
        }

        /** @brief Identify an actual admitted attribute reference without loading its assembly. */
        private static NativeAttribute NativeExportKind(MetadataReader reader, CustomAttribute attribute)
        {
            if (attribute.Constructor.Kind != HandleKind.MemberReference)
            {
                return NativeAttribute.None;
            }
            MemberReference constructor = reader.GetMemberReference((MemberReferenceHandle)attribute.Constructor);
            if (constructor.Parent.Kind != HandleKind.TypeReference || reader.GetString(constructor.Name) != ".ctor")
            {
                return NativeAttribute.None;
            }
            TypeReference type = reader.GetTypeReference((TypeReferenceHandle)constructor.Parent);
            if (type.ResolutionScope.Kind != HandleKind.AssemblyReference)
            {
                return NativeAttribute.None;
            }
            string assembly =
                reader.GetString(reader.GetAssemblyReference((AssemblyReferenceHandle)type.ResolutionScope).Name);
            string name = reader.GetString(type.Name);
            string scope = reader.GetString(type.Namespace);
            if (scope == "System.Runtime.InteropServices" && name == "UnmanagedCallersOnlyAttribute" &&
                (assembly == "System.Runtime" || assembly == "System.Private.CoreLib"))
            {
                return NativeAttribute.UnmanagedCallersOnly;
            }
            if (scope == "Uwvm.RosWasm.Interop" && name == "MonoPInvokeCallbackAttribute" &&
                assembly == "Uwvm.RosWasm.Managed")
            {
                return NativeAttribute.MonoPInvokeCallback;
            }
            return NativeAttribute.None;
        }

        /**
         * @brief Read the real explicit EntryPoint name from a parameterless attribute.
         * @return Exact name, or null for a native callback without a named export.
         * @details Initial Core Wasm support rejects alternate native calling
         * conventions instead of silently assuming host-specific ABI behavior.
         */
        private static string? EntryPoint(MetadataReader reader, CustomAttribute attribute)
        {
            BlobReader value = reader.GetBlobReader(attribute.Value);
            if (value.ReadUInt16() != 1)
            {
                throw new BadImageFormatException("Invalid native-export attribute prolog");
            }
            int count = value.ReadUInt16();
            string ? export = null;
            for (int index = 0; index < count; index++)
            {
                byte kind = value.ReadByte();
                byte type = value.ReadByte();
                string? name = value.ReadSerializedString();
                if (kind != 0x53 || type != 0x0e || name != "EntryPoint" || export != null)
                {
                    throw new ArgumentException(
                        "Shared Core Wasm exports accept one explicit EntryPoint and the default scalar calling convention");
                }
                export = value.ReadSerializedString();
                if (string.IsNullOrEmpty(export))
                {
                    throw new ArgumentException("A named native export cannot be empty");
                }
            }
            if (value.RemainingBytes != 0)
            {
                throw new BadImageFormatException("Trailing native-export attribute bytes");
            }
            return export;
        }

        /**
         * @brief Read one genuine signature type into its exact Core scalar class.
         * @return i32/i64/f32/f64, or void only for a result.
         * @details References, pointers, generic values, narrow marshalling types,
         * arrays and aggregate ABI conventions need their own implementation.
         */
        internal static string Scalar(ref BlobReader signature, bool result)
        {
            SignatureTypeCode type = signature.ReadSignatureTypeCode();
            switch (type)
            {
                case SignatureTypeCode.Int32:
                case SignatureTypeCode.UInt32:
                    return "i32";
                case SignatureTypeCode.Int64:
                case SignatureTypeCode.UInt64:
                    return "i64";
                case SignatureTypeCode.Single:
                    return "f32";
                case SignatureTypeCode.Double:
                    return "f64";
                case SignatureTypeCode.Void when result:
                    return "void";
                default:
                    throw new ArgumentException(
                        "The initial managed shared ABI accepts only i32/i64/f32/f64 parameters and scalar/void results");
            }
        }

        /**
         * @brief Validate the actual local delegate used by original Mono callbacks.
         * @return Original delegate metadata name; no delegate instance is created.
         * @details The initial profile uses simple nongeneric local delegates and
         * exact scalar signature bytes. Original WasmAppBuilder owns wrapper code.
         */
        private string CallbackDelegate(MetadataReader reader, CustomAttribute attribute, MethodDefinition method)
        {
            BlobReader value = reader.GetBlobReader(attribute.Value);
            if (value.ReadUInt16() != 1)
            {
                throw new BadImageFormatException("Invalid Mono callback attribute prolog");
            }
            string[] identity =
                (value.ReadSerializedString() ?? throw new ArgumentException("A real callback delegate is required"))
                    .Split(',');
            string name = identity[0].Trim();
            if ((identity.Length > 1 && identity[1].Trim() != ExpectedAssemblyName) ||
                !Regex.IsMatch(name, "^[A-Za-z_][A-Za-z0-9_.]*$", RegexOptions.CultureInvariant) ||
                value.ReadUInt16() != 0 || value.RemainingBytes != 0)
            {
                throw new ArgumentException(
                    "Mono callbacks require one actual local nongeneric delegate and no alternate export-name metadata");
            }
            foreach (TypeDefinitionHandle handle in reader.TypeDefinitions)
            {
                TypeDefinition type = reader.GetTypeDefinition(handle);
                string space = reader.GetString(type.Namespace);
                string fullName = (space.Length == 0 ? "" : space + ".") + reader.GetString(type.Name);
                if (fullName != name)
                {
                    continue;
                }
                if (type.GetGenericParameters().Count != 0 || type.BaseType.Kind != HandleKind.TypeReference)
                {
                    throw new ArgumentException("The actual native callback type must be a nongeneric delegate");
                }
                TypeReference parent = reader.GetTypeReference((TypeReferenceHandle)type.BaseType);
                if (reader.GetString(parent.Namespace) != "System" ||
                    reader.GetString(parent.Name) != "MulticastDelegate" ||
                    parent.ResolutionScope.Kind != HandleKind.AssemblyReference)
                {
                    throw new ArgumentException(
                        "The actual callback type must inherit the framework MulticastDelegate");
                }
                string assembly =
                    reader.GetString(reader.GetAssemblyReference((AssemblyReferenceHandle)parent.ResolutionScope).Name);
                if (assembly != "System.Runtime" && assembly != "System.Private.CoreLib")
                {
                    throw new ArgumentException("A callback delegate must inherit the real framework delegate type");
                }
                foreach (MethodDefinitionHandle entry in type.GetMethods())
                {
                    MethodDefinition invoke = reader.GetMethodDefinition(entry);
                    if (reader.GetString(invoke.Name) != "Invoke")
                    {
                        continue;
                    }
                    BlobReader signature = reader.GetBlobReader(invoke.Signature);
                    SignatureHeader header = signature.ReadSignatureHeader();
                    byte[] actual = reader.GetBlobBytes(invoke.Signature);
                    byte[] expected = reader.GetBlobBytes(method.Signature);
                    if (header.Kind != SignatureKind.Method || header.IsGeneric || !header.IsInstance ||
                        header.CallingConvention != SignatureCallingConvention.Default ||
                        actual.Length != expected.Length)
                    {
                        throw new ArgumentException(
                            "The real callback delegate Invoke signature must agree with its static method");
                    }
                    for (int index = 1; index < actual.Length; index++)
                    {
                        if (actual[index] != expected[index])
                        {
                            throw new ArgumentException(
                                "The callback delegate and method have different actual scalar signatures");
                        }
                    }
                    return name;
                }
                throw new ArgumentException("The actual callback delegate Invoke method is missing");
            }
            throw new ArgumentException("The callback delegate must be defined in this genuine source assembly");
        }

        /** @brief Use the exact original generated name within an unambiguous initial name profile. */
        private string CallbackEntryPoint(MetadataReader reader, MethodDefinition method)
        {
            TypeDefinition owner = reader.GetTypeDefinition(method.GetDeclaringType());
            string type = reader.GetString(owner.Name);
            string name = reader.GetString(method.Name);
            foreach (string part in new[] { ExpectedAssemblyName, type, name })
            {
                if (!Regex.IsMatch(part, "^[A-Za-z_][A-Za-z0-9_]*$", RegexOptions.CultureInvariant))
                {
                    throw new ArgumentException(
                        "Original Mono callback export names currently require simple assembly, declaring-type and method identifiers");
                }
            }
            return "wasm_native_to_interp_" + ExpectedAssemblyName + "_" + type + "_" + name;
        }

        /** @brief Admit one explicit nonreserved portable export name. @return True for a valid actual name. */
        private static bool PortableName(string name)
        {
            return Regex.IsMatch(name, "^[A-Za-z_][A-Za-z0-9_.-]*$", RegexOptions.CultureInvariant) &&
                   !name.StartsWith("__", StringComparison.Ordinal) && name != "_start" && name != "_initialize" &&
                   name != "initialize_runtime" && name != "memory" && name != "malloc" && name != "free";
        }

        /**
         * @brief Inspect the real trimmed IL and commit a complete export contract.
         * @return True only after genuine named methods and scalar signatures validate.
         * @details No assembly load context, runtime invocation, generated user
         * method, source rewriting or success result is supplied by this task.
         */
        public override bool Execute()
        {
            try
            {
                using FileStream stream = File.OpenRead(AssemblyFile);
                using PEReader pe = new PEReader(stream);
                if (!pe.HasMetadata)
                {
                    throw new BadImageFormatException("Expected a genuine managed assembly");
                }
                MetadataReader reader = pe.GetMetadataReader();
                if (!reader.IsAssembly || reader.GetString(reader.GetAssemblyDefinition().Name) != ExpectedAssemblyName)
                {
                    throw new ArgumentException(
                        "The actual trimmed library assembly identity disagrees with its target");
                }
                SortedDictionary<string, Dictionary<string, object>> exports =
                    new SortedDictionary<string, Dictionary<string, object>>(StringComparer.Ordinal);
                bool explicitInitialization = false;
                foreach (MethodDefinitionHandle handle in reader.MethodDefinitions)
                {
                    MethodDefinition method = reader.GetMethodDefinition(handle);
                    foreach (CustomAttributeHandle attributeHandle in method.GetCustomAttributes())
                    {
                        CustomAttribute attribute = reader.GetCustomAttribute(attributeHandle);
                        NativeAttribute kind = NativeExportKind(reader, attribute);
                        if (kind == NativeAttribute.None)
                        {
                            continue;
                        }
                        string? name = kind == NativeAttribute.UnmanagedCallersOnly
                                           ? EntryPoint(reader, attribute)
                                           : CallbackEntryPoint(reader, method);
                        if (name == null)
                        {
                            continue;
                        }
                        if (!PortableName(name) || exports.ContainsKey(name))
                        {
                            throw new ArgumentException("Invalid, duplicate or reserved native export: " + name);
                        }
                        if ((method.Attributes & MethodAttributes.Static) == 0 ||
                            (method.Attributes & (MethodAttributes.Abstract | MethodAttributes.PinvokeImpl)) != 0 ||
                            method.GetGenericParameters().Count != 0 || method.RelativeVirtualAddress == 0)
                        {
                            throw new ArgumentException(
                                "Named managed exports require real nongeneric static method bodies");
                        }
                        TypeDefinition owner = reader.GetTypeDefinition(method.GetDeclaringType());
                        if (owner.GetGenericParameters().Count != 0)
                        {
                            throw new ArgumentException("A native export cannot belong to a generic managed type");
                        }
                        BlobReader signature = reader.GetBlobReader(method.Signature);
                        SignatureHeader header = signature.ReadSignatureHeader();
                        if (header.Kind != SignatureKind.Method || header.IsGeneric || header.IsInstance ||
                            header.CallingConvention != SignatureCallingConvention.Default)
                        {
                            throw new ArgumentException("Unsupported managed native-export signature header");
                        }
                        int count = signature.ReadCompressedInteger();
                        if (count < 0 || count > 64)
                        {
                            throw new ArgumentException("Native exports require at most 64 explicit scalar parameters");
                        }
                        string result = Scalar(ref signature, true);
                        List<string> parameters = new List<string>();
                        for (int index = 0; index < count; index++)
                        {
                            parameters.Add(Scalar(ref signature, false));
                        }
                        if (signature.RemainingBytes != 0)
                        {
                            throw new BadImageFormatException("Trailing native-export signature bytes");
                        }
                        string callback = kind == NativeAttribute.MonoPInvokeCallback
                                              ? CallbackDelegate(reader, attribute, method)
                                              : "";
                        explicitInitialization |= kind == NativeAttribute.MonoPInvokeCallback;
                        exports.Add(
                            name,
                            new Dictionary<string, object> { ["name"] = name,
                                                             ["managed_type"] = reader.GetString(owner.Namespace) +
                                                                                "." + reader.GetString(owner.Name),
                                                             ["managed_method"] = reader.GetString(method.Name),
                                                             ["attribute_kind"] = kind.ToString(),
                                                             ["callback_delegate"] = callback,
                                                             ["parameters"] = parameters,
                                                             ["result"] = result });
                    }
                }
                if (exports.Count == 0)
                {
                    throw new ArgumentException(
                        "A shared managed module requires actual UCO or original Mono callback exports");
                }
                List<ITaskItem> symbols = new List<ITaskItem>();
                foreach (string name in exports.Keys)
                {
                    symbols.Add(new TaskItem(name));
                }
                if (explicitInitialization)
                {
                    symbols.Add(new TaskItem("initialize_runtime"));
                }
                ExportSymbols = symbols.ToArray();
                string path = Path.GetFullPath(ContractFile);
                Directory.CreateDirectory(Path.GetDirectoryName(path)!);
                string temporary = path + ".partial";
                try
                {
                    File.WriteAllText(
                        temporary,
                        JsonSerializer.Serialize(
                            new { schema = "uwvm-managed-shared-exports-v1",
                                  assembly = ExpectedAssemblyName,
                                  target = "wasm32-wasip1",
                                  exception_profile = "eh",
                                  exports = exports.Values,
                                  requires_explicit_runtime_initialization = explicitInitialization,
                                  runtime_initializer =
                                      explicitInitialization ? "initialize_runtime" : "original UCO library wrapper",
                                  actual_wasm_preload_executed = false,
                                  source_metadata_only = true },
                            new JsonSerializerOptions { WriteIndented = true }) +
                            "\n");
                    File.Move(temporary, path, true);
                }
                finally
                {
                    File.Delete(temporary);
                }
                Log.LogMessage(
                    MessageImportance.High, "Validated {0} genuine managed native export declarations", exports.Count);
                return true;
            }
            catch (Exception error)
            {
                Log.LogErrorFromException(error, true);
                return false;
            }
        }
    }

    /** @brief Validate real scalar WasmImportLinkage P/Invoke metadata without invoking user code. */
    public sealed class ValidateManagedImports : Task
    {
        /** @brief Actual trimmed application assembly selected by the original SDK. */
        [Required]
        public string AssemblyFile { get; set; } = "";

        /** @brief Exact actual primary assembly identity. */
        [Required]
        public string ExpectedAssemblyName {
            get; set;
        } = "";
        /** @brief Owned intermediate receipt, outside the deployable output folder. */
        [Required]
        public string ContractFile {
            get; set;
        } = "";

        /** @brief Admit the actual framework marker recognized by original WasmAppBuilder. */
        private static bool IsImport(MetadataReader reader, CustomAttribute attribute)
        {
            if (attribute.Constructor.Kind == HandleKind.MethodDefinition)
            {
                MethodDefinition constructor =
                    reader.GetMethodDefinition((MethodDefinitionHandle)attribute.Constructor);
                TypeDefinition type = reader.GetTypeDefinition(constructor.GetDeclaringType());
                if (reader.GetString(type.Name) == "WasmImportLinkageAttribute")
                {
                    throw new ArgumentException(
                        "Use the framework WasmImportLinkage attribute instead of a local marker with the same compiler-recognized name");
                }
                return false;
            }
            if (attribute.Constructor.Kind != HandleKind.MemberReference)
            {
                return false;
            }
            MemberReference member = reader.GetMemberReference((MemberReferenceHandle)attribute.Constructor);
            if (member.Parent.Kind != HandleKind.TypeReference)
            {
                return false;
            }
            TypeReference reference = reader.GetTypeReference((TypeReferenceHandle)member.Parent);
            if (reader.GetString(reference.Name) != "WasmImportLinkageAttribute")
            {
                return false;
            }
            if (reader.GetString(reference.Namespace) != "System.Runtime.InteropServices" ||
                reference.ResolutionScope.Kind != HandleKind.AssemblyReference)
            {
                throw new ArgumentException(
                    "The scalar Core-module consumer requires the actual framework import marker");
            }
            string assembly =
                reader.GetString(reader.GetAssemblyReference((AssemblyReferenceHandle)reference.ResolutionScope).Name);
            if (assembly != "System.Runtime" && assembly != "System.Runtime.InteropServices" &&
                assembly != "System.Private.CoreLib")
            {
                throw new ArgumentException("Use the real fixed framework WasmImportLinkage attribute");
            }
            return true;
        }

        /** @return True after actual native import signatures and source identities validate. */
        public override bool Execute()
        {
            try
            {
                using FileStream stream = File.OpenRead(AssemblyFile);
                using PEReader pe = new PEReader(stream);
                MetadataReader reader = pe.GetMetadataReader();
                if (reader.GetString(reader.GetAssemblyDefinition().Name) != ExpectedAssemblyName)
                {
                    throw new ArgumentException("The actual scalar-import assembly identity disagrees with its target");
                }
                List<object> imports = new List<object>();
                foreach (MethodDefinitionHandle handle in reader.MethodDefinitions)
                {
                    MethodDefinition method = reader.GetMethodDefinition(handle);
                    bool selected = false;
                    foreach (CustomAttributeHandle marker in method.GetCustomAttributes())
                    {
                        selected |= IsImport(reader, reader.GetCustomAttribute(marker));
                    }
                    if (!selected)
                    {
                        continue;
                    }
                    if ((method.Attributes & MethodAttributes.Static) == 0 ||
                        (method.Attributes & MethodAttributes.PinvokeImpl) == 0 ||
                        method.GetGenericParameters().Count != 0)
                    {
                        throw new ArgumentException(
                            "Wasm scalar imports require real nongeneric static DllImport methods");
                    }
                    MethodImport imported = method.GetImport();
                    string module = reader.GetString(reader.GetModuleReference(imported.Module).Name);
                    string name = reader.GetString(imported.Name);
                    if (string.IsNullOrEmpty(module) || string.IsNullOrEmpty(name))
                    {
                        throw new ArgumentException(
                            "A real Wasm import requires its explicit original module and entry-point names");
                    }
                    BlobReader signature = reader.GetBlobReader(method.Signature);
                    SignatureHeader header = signature.ReadSignatureHeader();
                    if (header.Kind != SignatureKind.Method || header.IsGeneric || header.IsInstance ||
                        header.CallingConvention != SignatureCallingConvention.Default)
                    {
                        throw new ArgumentException("Unsupported native scalar import signature header");
                    }
                    int count = signature.ReadCompressedInteger();
                    if (count < 0 || count > 64)
                    {
                        throw new ArgumentException("A native scalar import accepts at most 64 explicit arguments");
                    }
                    string result = ValidateManagedLibrary.Scalar(ref signature, true);
                    List<string> parameters = new List<string>();
                    for (int index = 0; index < count; index++)
                    {
                        parameters.Add(ValidateManagedLibrary.Scalar(ref signature, false));
                    }
                    if (signature.RemainingBytes != 0)
                    {
                        throw new BadImageFormatException("Trailing native import signature bytes");
                    }
                    imports.Add(
                        new { module, name, parameters, result, managed_method = reader.GetString(method.Name) });
                }
                string path = Path.GetFullPath(ContractFile);
                Directory.CreateDirectory(Path.GetDirectoryName(path)!);
                File.WriteAllText(path,
                                  JsonSerializer.Serialize(new { schema = "uwvm-managed-scalar-imports-v1",
                                                                 assembly = ExpectedAssemblyName,
                                                                 imports,
                                                                 original_wasm_import_linkage_generator = true,
                                                                 user_assembly_loaded_or_executed = false },
                                                           new JsonSerializerOptions { WriteIndented = true }) +
                                      "\n");
                Log.LogMessage(
                    MessageImportance.High, "Validated {0} actual scalar Core-module imports", imports.Count);
                return true;
            }
            catch (Exception error)
            {
                Log.LogErrorFromException(error, true);
                return false;
            }
        }
    }
}
