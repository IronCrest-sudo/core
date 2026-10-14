# RTWrapper generated 4-parameter macro variant for /team.
# Parameters: action, team, display_name, option
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$team $(action) $(team) $(display_name) $(option)
