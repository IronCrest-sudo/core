# RTWrapper generated 1-parameter macro variant for /scoreboard.
# Parameters: category
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$scoreboard $(category)
