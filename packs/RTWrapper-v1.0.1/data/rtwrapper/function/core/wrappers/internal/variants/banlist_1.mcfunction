# RTWrapper generated 1-parameter macro variant for /banlist.
# Parameters: filter
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$banlist $(filter)
