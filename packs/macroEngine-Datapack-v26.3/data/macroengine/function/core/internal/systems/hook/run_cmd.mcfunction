# macroengine:systems/hook/internal/run_cmd [MACRO]
# INPUT: $(cmd)
# @s = the triggering player
# No permission gate — runs $(cmd) unconditionally, debug tag only logs it.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$$(cmd)