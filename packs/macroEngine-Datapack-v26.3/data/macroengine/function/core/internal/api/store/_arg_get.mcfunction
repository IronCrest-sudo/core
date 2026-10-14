# macroengine:core/internal/api/store/_arg_get [MACRO] [INTERNAL]
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:store tmp.raw set from storage macroengine:store in.args.$(name)
