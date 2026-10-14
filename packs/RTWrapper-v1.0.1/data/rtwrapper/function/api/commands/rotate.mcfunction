# Direct named-parameter API for /rotate.
# Parameter order: target, rotation_or_facing, facing_position, facing_entity, facing_anchor
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/rotate
data remove storage rtwrapper:runtime current.params
