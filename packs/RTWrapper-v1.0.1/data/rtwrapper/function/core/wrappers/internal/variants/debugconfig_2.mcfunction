# RTWrapper generated 2-parameter macro variant for /debugconfig.
# Parameters: action, option
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$debugconfig $(action) $(option)
