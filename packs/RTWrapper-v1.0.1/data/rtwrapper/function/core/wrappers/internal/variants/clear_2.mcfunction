# RTWrapper generated 2-parameter macro variant for /clear.
# Parameters: targets, item
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$clear $(targets) $(item)
