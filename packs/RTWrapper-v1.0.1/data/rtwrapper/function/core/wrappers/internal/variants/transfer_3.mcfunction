# RTWrapper generated 3-parameter macro variant for /transfer.
# Parameters: hostname, port, players
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$transfer $(hostname) $(port) $(players)
