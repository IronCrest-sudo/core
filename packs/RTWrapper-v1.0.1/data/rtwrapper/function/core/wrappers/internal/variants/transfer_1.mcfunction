# RTWrapper generated 1-parameter macro variant for /transfer.
# Parameters: hostname
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$transfer $(hostname)
