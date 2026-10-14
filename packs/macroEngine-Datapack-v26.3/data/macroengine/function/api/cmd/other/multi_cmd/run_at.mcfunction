# ─────────────────────────────────────────────────────────────────
# macroengine:api/cmd/other/multi_cmd/run_at
# Run queue at a specific location
#
# INPUT (storage macroengine:input):
# selector → entity selector
# ─────────────────────────────────────────────────────────────────

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{cmd:0b} run return 0
function macroengine:core/internal/api/cmd/other/multi_cmd/run_at_exec with storage macroengine:input
