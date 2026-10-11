# macroengine:config
# Single source of runtime configuration (replaces _rt_origin + scattered defaults).
# Other packs may read macroengine:engine config / macroengine.meta scores; do not hardcode.

# ── Version (263 = 26.3) ──────────────────────────────────────────
scoreboard objectives add macroengine.meta dummy
scoreboard players set #vortacraftmc.packs.macroengine.version macroengine.meta 263

# Archived flag: set to 1 to show archive warning on every /reload
# scoreboard players set #vortacraftmc.archivedpacks.macroengine macroengine.meta 1
execute unless score #vortacraftmc.archivedpacks.macroengine macroengine.meta matches -2147483648..2147483647 run scoreboard players set #vortacraftmc.archivedpacks.macroengine macroengine.meta 1

# ── Engine defaults (only fill missing keys — preserves live data) ─
execute unless data storage macroengine:engine global run data modify storage macroengine:engine global set value {}
data modify storage macroengine:engine global.version set value "v26.3"

execute unless data storage macroengine:engine config run data modify storage macroengine:engine config set value {}

# Runtime config. Every key changes behaviour; nothing here is informational.
# Change values with core/config/set (it applies them at once) and read them with
# core/config/get. core/config/apply copies them to the scores the engine reads. See docs/config.md.
#   reload_warn  byte  1b = warn online players on /reload when data would be lost
#   tick_rate    int   >= 1; the engine tick runs once every N game ticks
#   hud_rate     int   >= 1; hud systems run once every N engine ticks
#   admin_rate   int   >= 1; admin systems run once every N engine ticks
#   log_level    int   0 off, 1 error, 2 warn, 3 info, 4 debug
execute unless data storage macroengine:engine config.reload_warn run data modify storage macroengine:engine config.reload_warn set value 1b
execute unless data storage macroengine:engine config.tick_rate run data modify storage macroengine:engine config.tick_rate set value 1
execute unless data storage macroengine:engine config.hud_rate run data modify storage macroengine:engine config.hud_rate set value 2
execute unless data storage macroengine:engine config.admin_rate run data modify storage macroengine:engine config.admin_rate set value 4
execute unless data storage macroengine:engine config.log_level run data modify storage macroengine:engine config.log_level set value 3

# No permission gate exists in this pack (see core/internal/load/loader/storages
# for the remaining, non-gate security. fields: sandbox_allowlist,
# multi_type_allowlist).
execute unless data storage macroengine:engine security run data modify storage macroengine:engine security set value {}

# Generic flag storage used by systems/flag/*.
execute unless data storage macroengine:engine flags run data modify storage macroengine:engine flags set value {}
