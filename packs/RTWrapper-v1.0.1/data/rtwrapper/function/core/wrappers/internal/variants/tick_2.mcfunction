# RTWrapper generated 2-parameter macro variant for /tick.
# Parameters: action, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tick $(action) $(value)
