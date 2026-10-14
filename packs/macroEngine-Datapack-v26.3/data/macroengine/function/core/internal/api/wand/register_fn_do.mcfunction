# macroengine:api/wand/internal/register_fn_do [MACRO] [INTERNAL]
# Called by wand/register_fn with storage macroengine:input {} to do the actual append.
# INPUT: $(tag), $(func)
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine wand_binds append value {tag:"$(tag)", func:"$(func)"}