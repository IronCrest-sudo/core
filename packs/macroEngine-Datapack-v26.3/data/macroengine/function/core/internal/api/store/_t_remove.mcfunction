# macroengine:core/internal/api/store/_t_remove [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data remove storage macroengine:store tpl.$(name).$(lang)
return 1
