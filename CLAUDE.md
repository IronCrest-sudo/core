# CLAUDE.md

Guidance for Claude / Claude Code when working in `vortaforge/core`. Read it before changing anything.

## What this repo is

A monorepo of Minecraft Java Edition projects: Fabric mods (`mods/`), datapacks and resource packs
(`packs/`), tooling (`scripts/`), examples (`examples/`) and read-only reference material (`archived/`).
It is an independent project, not affiliated with Mojang or Microsoft. Everything is released under the
Unlicense (`LICENSE`); third-party code keeps its own license (`packs/macroEngine-Datapack-v26.3/THIRD_PARTY_LICENSES.md`).

Publishing history: `runtoolkit` -> `vortacraftmc` -> `vortaforge`. The older organizations are archived and stay
as they are.

## Hard rules

1. **Never delete or rewrite history, repositories or organizations.** No force-push, no `git filter-repo`, no
   repo or org deletion. Archive instead.
2. **Never put a token, password or key into any file** (code, workflows, docs, commit messages). Credentials
   come from the environment (`GH_TOKEN`, Actions secrets). If one shows up in a prompt, do not repeat it and tell
   the maintainer to revoke it.
3. **Mark AI involvement explicitly.** Commits and code written by Claude say so in the commit text, and every such
   change gets an entry in `CREDITS.md` (what changed, review status, what was not verified).
4. **Push fixes to a branch; do not hand out `.patch` files.**
5. **English only** in code, comments, commit messages, issue/PR text and docs. Translation files (`lang/tr_tr.json`)
   and the Turkish letter tables in the text engine are the only non-English content.
6. **Do not claim something works unless it was run.** Say what was linted, built or only read.
7. **Do not run tests on or against a Minecraft server.** No self-test functions, no test harnesses that need a game
   server. Static checks (Mecha, Gradle build, script `--check` modes) are fine.
8. Do not rename runtime identifiers (datapack namespaces such as `data/vortacraftmc/`, scoreboard fake players such
   as `#vortacraftmc.*`, the Java package `com.vortacraftmc`) without an explicit migration plan: that breaks existing
   worlds and dependents.

## Layout

| Path | Contents |
|---|---|
| `mods/` | Fabric mods (Gradle subprojects, each with its own `build.gradle` and Minecraft/Java version) |
| `packs/` | Datapacks and resource packs; `macroEngine-Datapack-v26.3` is the largest; `merge-manifest.json` drives the merged datapack |
| `scripts/` | `lint_datapacks.sh` (Mecha), `origin_watermarks.py`, `gui_generator`, `dpgen`, `dp-depman`, audit helpers |
| `examples/` | Example mods |
| `archived/` | Reference only. Do not deploy and do not fix |
| `index.html`, `robots.txt`, `sitemap.xml`, `banner.png` | The GitHub Pages download page and its SEO files |

## Commands

```bash
./gradlew buildAll                      # build every subproject
./gradlew lint                          # Gradle lint
scripts/lint_datapacks.sh               # Mecha validation of all datapacks (needs `pip install mecha==0.101.0`)
python3 scripts/origin_watermarks.py --check   # watermark headers up to date; use --write to regenerate
```

CI (`.github/workflows/build.yml`) runs these on Java 25 and Python 3.9 / 3.12. Actions are pinned by commit SHA;
keep it that way and keep `permissions` minimal.

Known: the pinned Mecha reports two errors on `time query minecraft:day` (26.3 World Clocks syntax it does not
know yet). They are not bugs in the pack.

## Datapack conventions (macroEngine)

- Public functions live under `api/`, internals under `core/internal/`, shared helpers under `systems/`.
- **Never substitute untrusted text into a macro line.** Validate names with `systems/validate/safe_name` while the
  value is still data in storage, then pass it as a macro argument. See `api/perm/require` and `api/store/*`.
- Prefer storage in, storage out. Plain strings over text components unless the caller needs a component.
- `api/store/*` is the single storage module (variables, `api/store/nbt/*`, templates); the old `api/placeholder/*` and `api/data/*` modules are gone (`docs/store.md`).
- Keep `pack.mcmeta` `min_format`/`max_format` in sync with the targeted Minecraft version; do not guess pack formats.

## Java / Gradle conventions

- Each mod pins its own Minecraft, Fabric Loader, Fabric API and Java version. Keep them consistent inside a mod and
  check current versions before bumping.
- No network calls or desktop APIs in mod code unless the mod's purpose requires it and it is documented.
- Permission checks go through the mod's permission layer; do not hard-code operator levels in new code.

## Web (`index.html`)

- Single static file, no build step. External scripts only from hosts the page already uses.
- Anything that comes from the GitHub API or from an error message must be escaped (`escapeHtml`) before it goes
  into `innerHTML`.
- Keep `canonical`, Open Graph, JSON-LD and `sitemap.xml` in step with the Pages URL (`https://vortaforge.github.io/core/`).

## Before you finish a task

- Run the relevant check from "Commands" and report the result honestly.
- Add or update the `CREDITS.md` entry for what you changed.
- Do not leave tokens, `.patch` files or generated junk in the tree.
