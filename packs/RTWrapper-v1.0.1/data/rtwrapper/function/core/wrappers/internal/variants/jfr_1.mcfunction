# RTWrapper generated 1-parameter macro variant for /jfr.
# Parameters: action
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$jfr $(action)
