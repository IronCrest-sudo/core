# macroengine:core/config/_get_exec [MACRO, INTERNAL]
# Only keys present in the schema are readable; a dotted path into a schema entry has no type and is refused.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
data remove storage macroengine:engine config_sc
$data modify storage macroengine:engine config_sc set from storage macroengine:engine config_schema.$(key)
execute unless data storage macroengine:engine config_sc.t run return 0
$data modify storage macroengine:output result set from storage macroengine:engine config.$(key)
