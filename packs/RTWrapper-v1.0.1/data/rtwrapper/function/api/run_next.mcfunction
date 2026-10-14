# Consume one queued/direct action only.
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
execute if data storage rtwrapper:api request.cmd run function rtwrapper:api/enqueue
execute unless data storage rtwrapper:api request.cmd if data storage rtwrapper:api request.type run function rtwrapper:api/enqueue
function rtwrapper:core/run/run_next
