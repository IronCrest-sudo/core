# RTWrapper generated 2-parameter macro variant for /scoreboard.
# Parameters: category, action
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$scoreboard $(category) $(action)
