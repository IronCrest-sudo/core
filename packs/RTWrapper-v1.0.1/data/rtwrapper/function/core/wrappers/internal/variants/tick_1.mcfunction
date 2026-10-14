# RTWrapper generated 1-parameter macro variant for /tick.
# Parameters: action
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tick $(action)
