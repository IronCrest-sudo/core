# RTWrapper generated 3-parameter macro variant for /clear.
# Parameters: targets, item, max_count
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$clear $(targets) $(item) $(max_count)
