# Direct named-parameter API for /give.
# Parameter order: target, item, count
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/give
data remove storage rtwrapper:runtime current.params
