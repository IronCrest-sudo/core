# RTWrapper generated 6-parameter macro variant for /scoreboard.
# Parameters: category, action, subject, objective, value, operation
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$scoreboard $(category) $(action) $(subject) $(objective) $(value) $(operation)
