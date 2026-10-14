# RTWrapper generated 2-parameter macro variant for /tellraw.
# Parameters: targets, message
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tellraw $(targets) $(message)
