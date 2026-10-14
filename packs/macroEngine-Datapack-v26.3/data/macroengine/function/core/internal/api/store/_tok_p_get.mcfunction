# macroengine:core/internal/api/store/_tok_p_get [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:store tmp.raw set from storage macroengine:store p."$(a)_$(b)_$(c)_$(d)".$(name)
