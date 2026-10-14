# Direct named-parameter API for /debugconfig.
# Parameter order: action, option, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/debugconfig
data remove storage rtwrapper:runtime current.params
