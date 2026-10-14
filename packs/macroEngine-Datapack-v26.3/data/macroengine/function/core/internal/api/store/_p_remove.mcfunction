# macroengine:core/internal/api/store/_p_remove [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data remove storage macroengine:store p."$(a)_$(b)_$(c)_$(d)".$(name)
return 1
