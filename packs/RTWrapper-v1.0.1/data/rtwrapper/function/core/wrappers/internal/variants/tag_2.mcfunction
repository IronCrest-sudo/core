# RTWrapper generated 2-parameter macro variant for /tag.
# Parameters: targets, action
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tag $(targets) $(action)
