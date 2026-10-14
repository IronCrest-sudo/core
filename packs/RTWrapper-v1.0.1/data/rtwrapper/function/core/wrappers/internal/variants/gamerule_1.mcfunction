# RTWrapper generated 1-parameter macro variant for /gamerule.
# Parameters: rule
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$gamerule $(rule)
