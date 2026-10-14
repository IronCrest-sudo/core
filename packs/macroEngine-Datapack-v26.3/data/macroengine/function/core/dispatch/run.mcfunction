# ─────────────────────────────────────────────────────────────────
# macroengine:core/dispatch/run
# Central function dispatch gateway — called via #macroengine:internal/dispatch.
# Reads func from macroengine:engine._dispatch and calls exec via macroengine.
#
# Override #macroengine:internal/dispatch in your overlay/pack to inject
# validation or logging without touching call sites.
# ─────────────────────────────────────────────────────────────────
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/dispatch/exec with storage macroengine:engine _dispatch
