# RTWrapper generated 2-parameter macro variant for /gamerule.
# Parameters: rule, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$gamerule $(rule) $(value)
