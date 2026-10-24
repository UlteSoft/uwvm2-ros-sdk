/**
 * @file WasiCallbackLookup.cs
 * @brief Bind genuine native AOT callbacks through the original WASI export table.
 * @details The Preview 6 emitter supplies a full CLR type name while its native
 * glue asks mono_class_from_name for an empty namespace. Use Mono's real full
 * type-name parser and install a scalar adapter to the actual AOT wrapper.
 * The original emitter uses an interpreter-shaped callback table even when
 * every user method is native AOT. Only a private copy of the exact admitted
 * original runtime.c changes; user IL, compiled methods, generated pinvoke
 * tables and the immutable workload remain untouched.
 */
using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Uwvm.Ros.Build
{
    /** @brief Preserve original native items and tables while binding real AOT entry points. */
    public sealed class ConfigureWasiCallbackLookup : Task
    {
        /** @brief Complete original source items and their upstream compile metadata. */
        [Required]
        public ITaskItem[] Sources { get; set; } = Array.Empty<ITaskItem>();

        /** @brief Owned replacement source path outside the immutable tool closure. */
        [Required]
        public string SelectedSource {
            get; set;
        } = "";
        /** @brief Owned exact source provenance receipt. */
        [Required]
        public string ReceiptFile {
            get; set;
        } = "";
        /** @brief Actual validated scalar exports read from the original trimmed assembly. */
        [Required]
        public string ContractFile {
            get; set;
        } = "";
        /** @brief Original item list with only runtime.c replaced and its metadata preserved. */
        [Output]
        public ITaskItem[] SelectedSources {
            get; private set;
        } = Array.Empty<ITaskItem>();

        /** @brief Hash complete actual source bytes. */
        private static string Digest(byte[] bytes)
        {
            return Convert.ToHexString(SHA256.HashData(bytes)).ToLowerInvariant();
        }

        /** @brief Require one exact original source anchor instead of adapting unknown SDK code. */
        private static string ReplaceOne(string source, string oldText, string newText)
        {
            int first = source.IndexOf(oldText, StringComparison.Ordinal);
            if (first < 0 || source.IndexOf(oldText, first + oldText.Length, StringComparison.Ordinal) >= 0)
            {
                throw new ArgumentException("The original fixed callback lookup source anchor changed");
            }
            return source.Replace(oldText, newText, StringComparison.Ordinal);
        }

        /** @brief Map the already validated Core scalar ABI to its exact native C type. */
        private static string CType(string type)
        {
            return type switch { "i32" => "int32_t",
                                 "i64" => "int64_t",
                                 "f32" => "float",
                                 "f64" => "double",
                                 "void" => "void",
                                 _ => throw new ArgumentException(
                                     "Only the validated scalar native callback ABI is supported") };
        }

        /**
         * @brief Emit scalar ABI adapters from real assembly metadata, never method bodies.
         * @details The original generated pinvoke table keeps its exact pointer-argument
         * ABI. Each adapter calls Mono's actual native-to-managed wrapper with
         * its plain native scalar signature. This wrapper has no hidden rgctx
         * or dummy argument, as the retained genuine AOT bitcode demonstrates.
         * memcpy preserves scalar bits and avoids alignment/aliasing assumptions.
         */
        private string NativeAdapters(JsonElement contract)
        {
            string assembly = contract.GetProperty("assembly").GetString()!;
            StringBuilder code = new StringBuilder();
            code.Append("/* SDK native AOT callback binding; original generated export tables are unchanged. */\n");
            code.Append("static MonoClass *uwvm_ros_callback_type (MonoAssembly *assembly, const char *name)\n{\n");
            code.Append("  MonoClass *klass;\n  MONO_ENTER_GC_UNSAFE;\n  char *mutable_name = strdup (name);\n");
            code.Append(
                "  assert (mutable_name);\n  MonoType *type = mono_reflection_type_from_name (mutable_name, mono_assembly_get_image (assembly));\n");
            code.Append(
                "  free (mutable_name);\n  klass = type ? mono_class_from_mono_type (type) : NULL;\n  MONO_EXIT_GC_UNSAFE;\n  return klass;\n}\n");
            List<string> matches = new List<string>();
            List<string> delegates = new List<string>();
            HashSet<string> keys = new HashSet<string>(StringComparer.Ordinal);
            int index = 0;
            foreach (JsonElement entry in contract.GetProperty("exports").EnumerateArray())
            {
                List<string> parameters = new List<string>();
                foreach (JsonElement parameter in entry.GetProperty("parameters").EnumerateArray())
                {
                    string type = CType(parameter.GetString()!);
                    if (type == "void")
                    {
                        throw new ArgumentException("A callback parameter cannot be void");
                    }
                    parameters.Add(type);
                }
                string result = CType(entry.GetProperty("result").GetString()!);
                string owner = entry.GetProperty("managed_type").GetString()!;
                string method = entry.GetProperty("managed_method").GetString()!;
                string key = assembly + "_" + owner.Substring(owner.LastIndexOf('.') + 1) + "_" + method;
                if (Encoding.UTF8.GetByteCount(assembly) >= 100 || Encoding.UTF8.GetByteCount(key) >= 128 ||
                    !keys.Add(key))
                {
                    throw new ArgumentException("The original callback key is too long or ambiguous");
                }
                string match = "!strcmp (assemblyName, " + JsonSerializer.Serialize(assembly) +
                               ") && !strcmp (typeName, " + JsonSerializer.Serialize(owner) +
                               ") && !strcmp (methodName, " + JsonSerializer.Serialize(method) +
                               ") && num_params == " + parameters.Count;
                string adapter = "uwvm_ros_native_callback_" + index++;
                List<string> pointerParameters = new List<string>();
                if (result != "void")
                {
                    pointerParameters.Add("int *result");
                }
                for (int i = 0; i < parameters.Count; i++)
                {
                    pointerParameters.Add("int *arg" + i);
                }
                pointerParameters.Add("int *native_entry");
                code.Append("static void ")
                    .Append(adapter)
                    .Append(" (")
                    .Append(string.Join(", ", pointerParameters))
                    .Append(")\n{\n");
                List<string> arguments = new List<string>();
                for (int i = 0; i < parameters.Count; i++)
                {
                    code.Append("  ").Append(parameters[i]).Append(" value").Append(i).Append(";\n");
                    code.Append("  memcpy (&value")
                        .Append(i)
                        .Append(", arg")
                        .Append(i)
                        .Append(", sizeof (value")
                        .Append(i)
                        .Append("));\n");
                    arguments.Add("value" + i);
                }
                List<string> nativeParameters = new List<string>(parameters);
                if (nativeParameters.Count == 0)
                {
                    nativeParameters.Add("void");
                }
                code.Append("  typedef ")
                    .Append(result)
                    .Append(" (*NativeEntry) (")
                    .Append(string.Join(", ", nativeParameters))
                    .Append(");\n");
                code.Append("  ");
                if (result != "void")
                {
                    code.Append(result).Append(" value = ");
                }
                code.Append("((NativeEntry)(void *)native_entry) (")
                    .Append(string.Join(", ", arguments))
                    .Append(");\n");
                if (result != "void")
                {
                    code.Append("  memcpy (result, &value, sizeof (value));\n");
                }
                code.Append("}\n");
                matches.Add("  if (" + match + ") { dispatch->func = (void *)" + adapter +
                            "; dispatch->arg = native_entry; return 1; }\n");
                string callback = entry.GetProperty("callback_delegate").GetString()!;
                if (callback.Length != 0)
                {
                    delegates.Add("  if (" + match + ") { MonoClass *klass = uwvm_ros_callback_type (assembly, " +
                                  JsonSerializer.Serialize(callback) + "); assert (klass); return klass; }\n");
                }
            }
            code.Append(
                "static MonoClass *uwvm_ros_callback_delegate (MonoAssembly *assembly, const char *assemblyName, const char *typeName, const char *methodName, int num_params)\n{\n");
            foreach (string statement in delegates)
            {
                code.Append(statement);
            }
            code.Append("  return NULL;\n}\n");
            code.Append(
                "static int uwvm_ros_bind_native_callback (const char *assemblyName, const char *typeName, const char *methodName, int num_params, void *native_entry, InterpFtnDesc *dispatch)\n{\n");
            foreach (string statement in matches)
            {
                code.Append(statement);
            }
            code.Append("  return 0;\n}\n\n");
            return code.ToString();
        }

        /** @return True after selecting one genuine corrected native-glue input. */
        public override bool Execute()
        {
            try
            {
                List<ITaskItem> selected = new List<ITaskItem>();
                int count = 0;
                byte[] contractBytes = File.ReadAllBytes(ContractFile);
                using JsonDocument contract = JsonDocument.Parse(contractBytes);
                foreach (ITaskItem item in Sources)
                {
                    TaskItem copy = new TaskItem(item);
                    if (Path.GetFileName(item.ItemSpec) == "runtime.c")
                    {
                        count++;
                        byte[] original = File.ReadAllBytes(item.ItemSpec);
                        string originalSha = Digest(original);
                        if (originalSha != "3d6d98fa1c5819b4ab89920be85fa3429b3f0bc32e035cc4f100791dbef3d00b")
                        {
                            throw new ArgumentException("Use the admitted original Preview 6 native runtime.c");
                        }
                        string source = File.ReadAllText(item.ItemSpec);
                        string next =
                            ReplaceOne(source,
                                       "#include <mono/metadata/loader.h>",
                                       "#include <mono/metadata/loader.h>\n#include <mono/metadata/reflection.h>");
                        next = ReplaceOne(next,
                                          "/*\n * mono_wasm_marshal_get_managed_wrapper:",
                                          NativeAdapters(contract.RootElement) +
                                              "/*\n * mono_wasm_marshal_get_managed_wrapper:");
                        next =
                            ReplaceOne(next,
                                       "\tMonoClass* class = mono_wasm_assembly_find_class (assembly, \"\", typeName);",
                                       "\tMonoClass* class = uwvm_ros_callback_type (assembly, typeName);");
                        next = ReplaceOne(
                            next,
                            "\tMonoMethod *managedWrapper = mono_marshal_get_managed_wrapper (method, NULL, 0, &error);",
                            "\tMonoClass *delegate_class = uwvm_ros_callback_delegate (assembly, assemblyName, typeName, methodName, num_params);\n" +
                                "\tMonoMethod *managedWrapper = mono_marshal_get_managed_wrapper (method, delegate_class, 0, &error);");
                        next = ReplaceOne(
                            next,
                            "\tmono_compile_method (managedWrapper);",
                            "\tvoid *native_entry = mono_compile_method (managedWrapper);\n" +
                                "\tif (!native_entry) { abort (); }\n" + "\tInterpFtnDesc dispatch;\n" +
                                "\tif (!uwvm_ros_bind_native_callback (assemblyName, typeName, methodName, num_params, native_entry, &dispatch)) { abort (); }\n" +
                                "\tif (!get_native_to_interp (method, &dispatch)) { abort (); }");
                        string target = Path.GetFullPath(SelectedSource);
                        Directory.CreateDirectory(Path.GetDirectoryName(target)!);
                        File.WriteAllText(target, next);
                        copy.ItemSpec = target;
                        string receipt = Path.GetFullPath(ReceiptFile);
                        Directory.CreateDirectory(Path.GetDirectoryName(receipt)!);
                        File.WriteAllText(
                            receipt,
                            JsonSerializer.Serialize(
                                new {
                                    schema = "uwvm-fixed-wasi-native-aot-callback-binding-v2",
                                    original_source = item.ItemSpec,
                                    original_sha256 = originalSha,
                                    selected_source = target,
                                    selected_sha256 = Digest(File.ReadAllBytes(target)),
                                    original_object_file = item.GetMetadata("ObjectFile"),
                                    original_type_name_parser = "mono_reflection_type_from_name",
                                    actual_scalar_contract_sha256 = Digest(contractBytes),
                                    native_entry_lookup =
                                        "mono_compile_method of the original native-to-managed wrapper in LLVMOnly mode",
                                    callback_table_binding =
                                        "original get_native_to_interp/wasm_dl_get_native_to_interp",
                                    native_abi =
                                        "original native-to-managed scalar wrapper; no hidden rgctx or dummy argument",
                                    original_generated_pinvoke_tables_unchanged = true,
                                    original_managed_wrapper_body_unchanged = true,
                                    user_source_il_ir_or_generated_user_functions_modified = false,
                                    original_workload_modified = false,
                                    related_upstream_issue = "https://github.com/dotnet/runtime/issues/106310"
                                },
                                new JsonSerializerOptions { WriteIndented = true }) +
                                "\n");
                    }
                    selected.Add(copy);
                }
                if (count != 1)
                {
                    throw new ArgumentException("Select exactly one actual original native runtime.c source item");
                }
                SelectedSources = selected.ToArray();
                Log.LogMessage(MessageImportance.High,
                               "Selected genuine scalar native AOT callback binding in owned native source copy");
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
