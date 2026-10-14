# macroengine:core/internal/api/store/_g_has [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$return run execute if data storage macroengine:store g.$(name)
