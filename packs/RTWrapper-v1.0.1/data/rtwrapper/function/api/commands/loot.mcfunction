# Direct named-parameter API for /loot.
# Parameter order: action, target, target_slot, source_kind, source, tool
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/loot
data remove storage rtwrapper:runtime current.params
