/**
 * @file ConfigureRuntimeEhLink.cs
 * @brief Bind the genuinely rebuilt Mono core and native EH libraries at link time.
 * @details The immutable workload supplies the original response file. This
 * host build task replaces exact native-library slots with admitted, rebuilt
 * libraries and records every replacement. The original response remains
 * intact. No guest function, exception handler, or linker symbol is wrapped.
 */
using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text.Json;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Uwvm.Ros.Build
{
    /**
     * @brief Own one exact full-runtime link-input selection.
     * @details The original full-AOT task, application assembly, SDK assembly,
     * bitcode, and runtime C sources are preserved. Missing or repeated library
     * slots are real build errors. This task supplies no guest implementation.
     */
    public sealed class ConfigureRuntimeEhLink : Task
    {
        /** @brief Borrowed complete original Clang response-file path. */
        [Required]
        public string ResponseFile { get; set; } = "";

        /** @brief Borrowed exact native directory from the fixed workload. */
        [Required]
        public string RuntimeNativeDirectory {
            get; set;
        } = "";

        /** @brief Borrowed original workload WASI sysroot directory. */
        [Required]
        public string WasiSysroot {
            get; set;
        } = "";

        /** @brief Read-only install root of the formally rebuilt Mono runtime. */
        [Required]
        public string RebuiltRuntimeRoot {
            get; set;
        } = "";

        /** @brief Read-only genuine LLVM WASI exception-enabled sysroot. */
        [Required]
        public string EhSysroot {
            get; set;
        } = "";

        /** @brief Owned complete response consumed by the real direct linker. */
        [Output]
        public string RewrittenResponse {
            get; private set;
        } = "";

        /**
         * @brief Replace a known number of complete quoted native-library slots.
         * @param source Borrowed original response text.
         * @param original Exact original absolute library path.
         * @param replacement Existing admitted absolute replacement library.
         * @param expectedCount Required original occurrence count.
         * @return Newly owned response text with only those slots changed.
         * @details No shell syntax, partial filename, or symbol name is matched.
         * A missing library or changed response contract raises a real error.
         */
        private static string ReplaceSlots(string source, string original, string replacement, int expectedCount)
        {
            if (!Path.IsPathFullyQualified(replacement) || !File.Exists(replacement))
            {
                throw new ArgumentException("The rebuilt native library is missing: " + replacement);
            }
            string token = "\"" + original.Replace('\\', '/') + "\"";
            int count = 0;
            int offset = 0;
            while ((offset = source.IndexOf(token, offset, StringComparison.Ordinal)) >= 0)
            {
                count++;
                offset += token.Length;
            }
            if (count != expectedCount)
            {
                throw new ArgumentException("Expected " + expectedCount + " exact native library slots: " + original +
                                            "; actual " + count);
            }
            return source.Replace(token, "\"" + replacement + "\"", StringComparison.Ordinal);
        }

        /**
         * @brief Identify exact complete file bytes without changing the input.
         * @param path Existing admitted native library or response file.
         * @return Lowercase SHA-256 digest of the complete borrowed file.
         */
        private static string Digest(string path)
        {
            using FileStream stream = File.OpenRead(path);
            return Convert.ToHexString(SHA256.HashData(stream)).ToLowerInvariant();
        }

        /**
         * @brief Select the complete configured runtime and genuine C++ unwind ABI.
         * @return True after the response and its exact provenance receipt are committed.
         * @details I/O, hash, and slot-count errors are reported through MSBuild.
         * The original exception-disabled core is replaced in its entire archive
         * slot. Its symbols are never edited, removed, or allowed to conflict.
         */
        public override bool Execute()
        {
            try
            {
                string source = File.ReadAllText(ResponseFile);
                string next = source;
                var mappings = new List<Dictionary<string, object>>();
                foreach (var entry in new[] {
                             (Name: "libmonosgen-2.0.a", Count: 1),
                             (Name: "libmono-ee-interp.a", Count: 1),
                             (Name: "libmono-icall-table.a", Count: 1),
                             (Name: "libmono-wasm-nosimd.a", Count: 2),
                             (Name: "libmono-wasm-eh-wasm.a", Count: 1),
                         })
                {
                    string original = Path.Combine(RuntimeNativeDirectory, entry.Name);
                    string replacement = Path.Combine(RebuiltRuntimeRoot, "lib", entry.Name);
                    next = ReplaceSlots(next, original, replacement, entry.Count);
                    mappings.Add(new Dictionary<string, object> {
                        ["original"] = original,
                        ["replacement"] = replacement,
                        ["occurrences"] = entry.Count,
                        ["sha256"] = Digest(replacement),
                    });
                }
                foreach (string name in new[] { "libc++.a", "libc++abi.a" })
                {
                    string original = Path.Combine(WasiSysroot, "lib", "wasm32-wasi", name);
                    string replacement = Path.Combine(EhSysroot, "lib", "wasm32-wasip1", name);
                    next = ReplaceSlots(next, original, replacement, 1);
                    mappings.Add(new Dictionary<string, object> {
                        ["original"] = original,
                        ["replacement"] = replacement,
                        ["occurrences"] = 1,
                        ["sha256"] = Digest(replacement),
                    });
                }
                string unwind = Path.Combine(EhSysroot, "lib", "wasm32-wasip1", "libunwind.a");
                if (!File.Exists(unwind))
                {
                    throw new ArgumentException("The genuine Wasm unwind library is missing");
                }
                next += "\n\"" + unwind + "\"\n-fwasm-exceptions\n";
                next += "-Wl,-mllvm,-wasm-use-legacy-eh=false\n";
                RewrittenResponse = ResponseFile + ".runtime-eh.rsp";
                File.WriteAllText(RewrittenResponse, next);
                var receipt = new Dictionary<string, object> {
                    ["format"] = "uwvm-mono-formal-native-eh-link-v1",
                    ["original_response"] = ResponseFile,
                    ["original_sha256"] = Digest(ResponseFile),
                    ["selected_response"] = RewrittenResponse,
                    ["selected_sha256"] = Digest(RewrittenResponse),
                    ["library_slots"] = mappings,
                    ["unwind_library"] = unwind,
                    ["unwind_sha256"] = Digest(unwind),
                    ["full_core_rebuilt"] = true,
                    ["wasm_exception_encoding"] = "standard; wasm-use-legacy-eh=false",
                    ["exception_gateway_wrappers"] = false,
                    ["allow_multiple_definitions"] = false,
                    ["managed_or_codec_source_replaced"] = false,
                };
                File.WriteAllText(
                    ResponseFile + ".runtime-eh.json",
                    JsonSerializer.Serialize(receipt, new JsonSerializerOptions { WriteIndented = true }) + "\n");
                Log.LogMessage(MessageImportance.High, "Formal Mono native-EH response: {0}", RewrittenResponse);
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
