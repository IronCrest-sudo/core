# RTWrapper generated 5-parameter macro variant for /scoreboard.
# Parameters: category, action, subject, objective, value
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$scoreboard $(category) $(action) $(subject) $(objective) $(value)
