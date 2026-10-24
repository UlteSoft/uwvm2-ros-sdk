using System;
using System.Diagnostics;
using System.IO;
using System.Collections.Generic;
using Microsoft.Build.Framework;
using Microsoft.Build.Utilities;

namespace Uwvm.Ros.Build
{
    /**
     * @brief Compile genuine Mono LLVM bitcode or original runtime sources directly.
     * @details The fixed upstream EmccCompile task forms a shell command even
     * when compiling with native Clang. This task preserves its actual source,
     * ObjectFile metadata and response files as individual argv entries. It
     * serializes compiler processes and commits only complete object files.
     */
    public sealed class DirectCompile : Task
    {
        /** @brief Absolute genuine LLVM 23 driver executable from the native closure. */
        [Required]
        public string Program { get; set; } = "";

        /** @brief Borrowed original source items with exact ObjectFile metadata. */
        [Required]
        public ITaskItem[] SourceFiles {
            get; set;
        } = Array.Empty<ITaskItem>();

        /** @brief Borrowed upstream Clang response files; each becomes one argv entry. */
        public ITaskItem[] ResponseFiles { get; set; } = Array.Empty<ITaskItem>();

        /** @brief Explicit upstream environment additions, each encoded as name=value. */
        public ITaskItem[] EnvironmentVariables { get; set; } = Array.Empty<ITaskItem>();

        /** @brief Existing caller-owned application directory for relative compiler paths. */
        [Required]
        public string WorkingDirectory {
            get; set;
        } = "";

        /** @brief Newly owned complete object output items with SourceFile metadata. */
        [Output]
        public ITaskItem[] OutputFiles {
            get; private set;
        } = Array.Empty<ITaskItem>();

        /**
         * @brief Execute the real compiler once for every exact original source.
         * @return True only after all native compiler exits are zero and objects are committed.
         * @details Child streams and temporary outputs remain owned until retirement.
         * Invalid metadata or any process/I/O error fails the target without a shell.
         */
        public override bool Execute()
        {
            List<ITaskItem> outputs = new List<ITaskItem>();
            try
            {
                if (!Path.IsPathFullyQualified(Program))
                {
                    throw new ArgumentException("Use the absolute pinned native compiler path");
                }
                foreach (ITaskItem source in SourceFiles)
                {
                    string output = source.GetMetadata("ObjectFile");
                    if (string.IsNullOrEmpty(output))
                    {
                        throw new ArgumentException("ObjectFile metadata is required");
                    }
                    output = Path.GetFullPath(output, WorkingDirectory);
                    Directory.CreateDirectory(Path.GetDirectoryName(output)!);
                    string temporary = output + ".managed-partial";
                    try
                    {
                        ProcessStartInfo start = new ProcessStartInfo { FileName = Program,
                                                                        WorkingDirectory = WorkingDirectory,
                                                                        UseShellExecute = false,
                                                                        RedirectStandardOutput = true,
                                                                        RedirectStandardError = true };
                        foreach (ITaskItem response in ResponseFiles)
                        {
                            start.ArgumentList.Add("@" + response.ItemSpec);
                        }
                        foreach (ITaskItem environment in EnvironmentVariables)
                        {
                            int delimiter = environment.ItemSpec.IndexOf('=');
                            if (delimiter <= 0)
                            {
                                throw new ArgumentException("Invalid explicit compiler environment");
                            }
                            start.Environment[environment.ItemSpec.Substring(0, delimiter)] =
                                environment.ItemSpec.Substring(delimiter + 1);
                        }
                        start.ArgumentList.Add("-c");
                        start.ArgumentList.Add("-o");
                        start.ArgumentList.Add(temporary);
                        start.ArgumentList.Add(source.ItemSpec);
                        using Process child = new Process { StartInfo = start };
                        if (!child.Start())
                        {
                            throw new InvalidOperationException("Unable to start the pinned Clang driver");
                        }
                        var stdout = child.StandardOutput.ReadToEndAsync();
                        var stderr = child.StandardError.ReadToEndAsync();
                        child.WaitForExit();
                        string message = stdout.GetAwaiter().GetResult();
                        string diagnostic = stderr.GetAwaiter().GetResult();
                        if (message.Length != 0)
                        {
                            Log.LogMessage(MessageImportance.Normal, message);
                        }
                        if (diagnostic.Length != 0)
                        {
                            Log.LogMessage(MessageImportance.High, diagnostic);
                        }
                        if (child.ExitCode != 0)
                        {
                            Log.LogError("LLVM 23 failed for {0} with status {1}", source.ItemSpec, child.ExitCode);
                            return false;
                        }
                        File.Move(temporary, output, true);
                        TaskItem item = new TaskItem(output);
                        item.SetMetadata("SourceFile", source.ItemSpec);
                        outputs.Add(item);
                        Log.LogMessage(MessageImportance.High, "Direct LLVM 23 compile: {0}", source.ItemSpec);
                    }
                    finally
                    {
                        File.Delete(temporary);
                    }
                }
                OutputFiles = outputs.ToArray();
                return true;
            }
            catch (Exception error)
            {
                Log.LogErrorFromException(error, true);
                return false;
            }
        }
    }

    /**
     * @brief Capture the genuine Mono runtime internal-call table without redirection syntax.
     * @details The immutable compiler prints its own table. This build task owns
     * both child streams and commits the complete file only after a successful
     * native process exit. It supplies no guest runtime or replacement metadata.
     */
    public sealed class DirectIcallTable : Task
    {
        /** @brief Absolute pinned Mono AOT compiler executable, borrowed for this invocation. */
        [Required]
        public string Program { get; set; } = "";

        /** @brief Caller-owned output path within the private intermediate directory. */
        [Required]
        public string OutputFile {
            get; set;
        } = "";

        /** @brief Existing application directory inherited by the compiler process. */
        [Required]
        public string WorkingDirectory {
            get; set;
        } = "";

        /**
         * @brief Execute Mono's exact table-printing operation and commit its complete output.
         * @return True only after real compiler exit zero and a nonempty table is stored.
         * @details Failures are logged as MSBuild errors; no shell or PATH lookup is used.
         */
        public override bool Execute()
        {
            try
            {
                if (!Path.IsPathFullyQualified(Program))
                {
                    throw new ArgumentException("Use the absolute pinned Mono compiler path");
                }
                ProcessStartInfo start = new ProcessStartInfo { FileName = Program,
                                                                WorkingDirectory = WorkingDirectory,
                                                                UseShellExecute = false,
                                                                RedirectStandardOutput = true,
                                                                RedirectStandardError = true };
                start.ArgumentList.Add("--print-icall-table");
                using Process child = new Process { StartInfo = start };
                if (!child.Start())
                {
                    throw new InvalidOperationException("Unable to start the pinned Mono compiler");
                }
                var stdout = child.StandardOutput.ReadToEndAsync();
                var stderr = child.StandardError.ReadToEndAsync();
                child.WaitForExit();
                string output = stdout.GetAwaiter().GetResult();
                string diagnostic = stderr.GetAwaiter().GetResult();
                if (diagnostic.Length != 0)
                {
                    Log.LogMessage(MessageImportance.High, diagnostic);
                }
                if (child.ExitCode != 0 || output.Length == 0)
                {
                    Log.LogError("Mono internal-call table generation failed with status {0}", child.ExitCode);
                    return false;
                }
                Directory.CreateDirectory(Path.GetDirectoryName(Path.GetFullPath(OutputFile))!);
                File.WriteAllText(OutputFile, output);
                return true;
            }
            catch (Exception error)
            {
                Log.LogErrorFromException(error, true);
                return false;
            }
        }
    }

    /**
     * @brief Execute one fixed native linker directly from MSBuild without a shell.
     * @details Mono's upstream Exec target assumes /bin/sh. This narrowly scoped
     * task supplies exactly one response-file argument with UseShellExecute=false.
     * It is a build tool only and is never part of a guest Wasm module.
     */
    public sealed class DirectLink : Task
    {
        /** @brief Exact provisioned native compiler executable, owned by the tool closure. */
        [Required]
        public string Program { get; set; } = "";

        /** @brief Exact MSBuild-produced response-file input, borrowed until child retirement. */
        [Required]
        public string ResponseFile {
            get; set;
        } = "";

        /** @brief Existing isolated application working directory. */
        [Required]
        public string WorkingDirectory {
            get; set;
        } = "";

        /**
         * @brief Run the genuine compiler and preserve its actual success/failure.
         * @return True only after normal compiler exit zero and complete stream retirement.
         * @details The process and both output streams remain owned until WaitForExit
         * completes. No command string is parsed and no shell or PATH fallback runs.
         */
        public override bool Execute()
        {
            try
            {
                ProcessStartInfo start = new ProcessStartInfo { FileName = Program,
                                                                WorkingDirectory = WorkingDirectory,
                                                                UseShellExecute = false,
                                                                RedirectStandardOutput = true,
                                                                RedirectStandardError = true };
                start.ArgumentList.Add("@" + ResponseFile);
                using Process child = new Process { StartInfo = start };
                child.OutputDataReceived += (_, line) =>
                {
                    if (line.Data != null)
                    {
                        Log.LogMessage(MessageImportance.Normal, line.Data);
                    }
                };
                child.ErrorDataReceived += (_, line) =>
                {
                    if (line.Data != null)
                    {
                        Log.LogMessage(MessageImportance.High, line.Data);
                    }
                };
                Log.LogMessage(MessageImportance.High, "Direct LLVM 23 link: {0} @{1}", Program, ResponseFile);
                if (!child.Start())
                {
                    throw new InvalidOperationException("Unable to start the provisioned compiler");
                }
                child.BeginOutputReadLine();
                child.BeginErrorReadLine();
                child.WaitForExit();
                if (child.ExitCode != 0)
                {
                    Log.LogError("The actual compiler exited with status {0}", child.ExitCode);
                }
                return child.ExitCode == 0;
            }
            catch (Exception error)
            {
                Log.LogErrorFromException(error, true);
                return false;
            }
        }
    }
}
