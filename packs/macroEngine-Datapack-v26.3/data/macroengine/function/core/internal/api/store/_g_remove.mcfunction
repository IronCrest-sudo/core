# macroengine:core/internal/api/store/_g_remove [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data remove storage macroengine:store g.$(name)
return 1
