# RTWrapper generated 1-parameter macro variant for /me.
# Parameters: message
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$me $(message)
