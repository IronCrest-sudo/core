# RTWrapper generated 3-parameter macro variant for /tag.
# Parameters: targets, action, name
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tag $(targets) $(action) $(name)
