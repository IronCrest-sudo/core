# RTWrapper generated 1-parameter macro variant for /tm.
# Parameters: message
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tm $(message)
