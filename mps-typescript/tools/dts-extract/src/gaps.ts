import type { Gap, StubModule, StubType } from "./schema.js";

/** Every `unsupported` type in the tree, with the path that reaches it. */
export function findGaps(modules: StubModule[]): Gap[] {
  const gaps: Gap[] = [];
  for (const module of modules) {
    for (const declaration of module.declarations) {
      walk(module.specifier, declaration.name, declaration.type, gaps);
    }
    if (module.exportEquals) walk(module.specifier, "export=", module.exportEquals, gaps);
  }
  return gaps;
}

function walk(module: string, path: string, type: StubType, gaps: Gap[]): void {
  switch (type.kind) {
    case "unsupported":
      gaps.push({ module, path, missing: type.missing, text: type.text });
      return;
    case "array":
      return walk(module, `${path}[]`, type.element, gaps);
    case "union":
      return type.members.forEach((m, i) => walk(module, `${path}|${i}`, m, gaps));
    case "object":
      return type.members.forEach((m) => walk(module, `${path}.${m.name}`, m.type, gaps));
    case "function":
      type.parameters.forEach((p) => walk(module, `${path}(${p.name})`, p.type, gaps));
      return walk(module, `${path}()`, type.returnType, gaps);
    default:
      return;
  }
}

/** The work list: which construct blocks how much, most-blocking first. */
export function formatGaps(gaps: Gap[]): string {
  if (gaps.length === 0) return "no gaps\n";
  const byConstruct = new Map<string, Gap[]>();
  for (const gap of gaps) {
    const bucket = byConstruct.get(gap.missing);
    if (bucket) bucket.push(gap);
    else byConstruct.set(gap.missing, [gap]);
  }
  const lines = [...byConstruct.entries()]
    .sort((a, b) => b[1].length - a[1].length || a[0].localeCompare(b[0]))
    .map(([missing, found]) => {
      const shown = found.slice(0, 3).map((g) => `${g.module}:${g.path} = ${g.text}`);
      const rest = found.length > shown.length ? `, +${found.length - shown.length} more` : "";
      return `  ${String(found.length).padStart(4)}  ${missing}\n        ${shown.join("\n        ")}${rest}`;
    });
  return `${gaps.length} gap(s):\n${lines.join("\n")}\n`;
}
