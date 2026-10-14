# Direct named-parameter API for /stopwatch.
# Parameter order: action, id
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/stopwatch
data remove storage rtwrapper:runtime current.params
