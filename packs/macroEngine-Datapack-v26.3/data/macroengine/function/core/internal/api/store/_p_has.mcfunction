# macroengine:core/internal/api/store/_p_has [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$return run execute if data storage macroengine:store p."$(a)_$(b)_$(c)_$(d)".$(name)
