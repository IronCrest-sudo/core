# macroengine:core/internal/api/store/_g_get [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute unless data storage macroengine:store g.$(name) run return 0
$data modify storage macroengine:store out.value set from storage macroengine:store g.$(name)
return 1
