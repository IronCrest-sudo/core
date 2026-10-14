# Direct named-parameter API for /xp.
# Parameter order: action, targets, amount, unit
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/xp
data remove storage rtwrapper:runtime current.params
