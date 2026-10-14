# Direct named-parameter API for /attribute.
# Parameter order: target, attribute, action, value, modifier_id, modifier_value, modifier_operation
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/attribute
data remove storage rtwrapper:runtime current.params
