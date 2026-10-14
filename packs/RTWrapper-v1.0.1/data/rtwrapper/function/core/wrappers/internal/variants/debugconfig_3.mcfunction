# RTWrapper generated 3-parameter macro variant for /debugconfig.
# Parameters: action, option, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$debugconfig $(action) $(option) $(value)
