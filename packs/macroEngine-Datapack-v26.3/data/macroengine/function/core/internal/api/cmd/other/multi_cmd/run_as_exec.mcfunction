# [MACRO] INPUT: $(selector)
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute as $(selector) run function macroengine:api/cmd/other/multi_cmd/run
