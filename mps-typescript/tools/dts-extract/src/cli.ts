import * as readline from "node:readline";
import { extract } from "./extract.js";
import { findGaps, formatGaps } from "./gaps.js";
import { planImport } from "./notation.js";
import { streamOf } from "./stream.js";

/**
 * One-shot:  node cli.js --cwd <dir> <specifier>...      (add --gaps for the work list)
 * Long-lived: node cli.js --stdio --cwd <dir>, then one JSON request per line:
 *             {"id":1,"method":"extract","params":{"specifiers":["path"]}}
 *
 * The long-lived form is what an interactive re-import wants; the JVM side should hold the
 * process open rather than paying project startup per module.
 */
function main(argv: string[]): void {
  const stdio = argv.includes("--stdio");
  const gaps = argv.includes("--gaps");
  const mps = argv.includes("--mps");
  const stream = argv.includes("--stream");
  const cwdIndex = argv.indexOf("--cwd");
  const cwd = cwdIndex >= 0 ? argv[cwdIndex + 1] : undefined;
  if (!cwd) {
    process.stderr.write("usage: cli.js [--stdio] [--gaps|--mps|--stream] --cwd <dir> [<specifier>...]\n");
    process.exitCode = 2;
    return;
  }
  const specifiers = argv.filter(
    (arg, i) => !arg.startsWith("--") && i !== cwdIndex + 1 && i >= 2,
  );

  if (!stdio) {
    const modules = extract({ cwd, specifiers });
    if (gaps) process.stdout.write(formatGaps(findGaps(modules)));
    else if (mps) process.stdout.write(modules.map(formatPlan).join(""));
    else if (stream) process.stdout.write(modules.map(streamOf).join(""));
    else process.stdout.write(JSON.stringify(modules, null, 2) + "\n");
    return;
  }

  readline.createInterface({ input: process.stdin }).on("line", (line) => {
    if (!line.trim()) return;
    let id: unknown = null;
    try {
      const request = JSON.parse(line) as { id?: unknown; params?: { specifiers?: string[] } };
      id = request.id ?? null;
      const result = extract({ cwd, specifiers: request.params?.specifiers ?? [] });
      process.stdout.write(JSON.stringify({ id, result }) + "\n");
    } catch (error) {
      process.stdout.write(
        JSON.stringify({ id, error: error instanceof Error ? error.message : String(error) }) + "\n",
      );
    }
  });
}

function formatPlan(module: Parameters<typeof planImport>[0]): string {
  const plan = planImport(module);
  const skipped = plan.skipped
    .map((s) => {
      const what = s.kind === "export=" ? "export=" : `${s.kind} ${s.name}`;
      return `// not imported: ${what} — needs ${s.blockedBy}\n`;
    })
    .join("");
  const header = `// ${plan.specifier}: ${plan.imported.length} imported, ${plan.skipped.length} skipped\n`;
  return `${header}${skipped}\n${plan.root ? `${plan.root}\n` : ""}`;
}

main(process.argv);
