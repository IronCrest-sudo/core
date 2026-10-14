# Pre-hook runner
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
function macroengine:core/internal/api/cmd/other/multi_cmd/hook_pre_exec with storage macroengine:engine _mcmd_current
