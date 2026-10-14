# macroengine:core/internal/api/store/_t_try [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:store tpl.$(name).$(lang) run data modify storage macroengine:store tmp.tpl set from storage macroengine:store tpl.$(name).$(lang)
