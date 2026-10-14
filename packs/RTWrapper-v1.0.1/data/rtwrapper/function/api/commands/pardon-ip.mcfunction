# Direct named-parameter API for /pardon-ip.
# Parameter order: target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/pardon-ip
data remove storage rtwrapper:runtime current.params
