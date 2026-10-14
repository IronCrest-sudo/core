# Direct named-parameter API for /transfer.
# Parameter order: hostname, port, players
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current.params set from storage rtwrapper:api params
function rtwrapper:core/wrappers/internal/transfer
data remove storage rtwrapper:runtime current.params
