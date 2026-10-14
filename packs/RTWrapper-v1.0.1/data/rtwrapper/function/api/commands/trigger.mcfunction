# Direct named-parameter API for /trigger.
# Parameter order: objective, action, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/trigger
data remove storage rtwrapper:runtime current.params
