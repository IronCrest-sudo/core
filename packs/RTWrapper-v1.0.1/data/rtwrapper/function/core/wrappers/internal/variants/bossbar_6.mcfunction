# RTWrapper generated 6-parameter macro variant for /bossbar.
# Parameters: action, id, name, property, value, players
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$bossbar $(action) $(id) $(name) $(property) $(value) $(players)
