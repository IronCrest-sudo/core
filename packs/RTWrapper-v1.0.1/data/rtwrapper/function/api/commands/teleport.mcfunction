# Direct named-parameter API for /teleport.
# Parameter order: target, x, y, z, rotation, facing_mode, facing_target, facing_anchor
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/teleport
data remove storage rtwrapper:runtime current.params
