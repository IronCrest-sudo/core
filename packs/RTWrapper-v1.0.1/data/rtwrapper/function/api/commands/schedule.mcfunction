# Direct named-parameter API for /schedule.
# Parameter order: action, function_id, time, mode
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/schedule
data remove storage rtwrapper:runtime current.params
