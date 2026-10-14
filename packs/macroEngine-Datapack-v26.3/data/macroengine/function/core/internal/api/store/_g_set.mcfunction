# macroengine:core/internal/api/store/_g_set [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:store g.$(name) set from storage macroengine:store in.value
return 1
