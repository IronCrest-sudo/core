execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
data modify storage rtwrapper:runtime current set from storage rtwrapper:api request
data remove storage rtwrapper:api request
function rtwrapper:core/wrappers/handler/proc
