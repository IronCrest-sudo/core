# RTWrapper generated 3-parameter macro variant for /bossbar.
# Parameters: action, id, name
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$bossbar $(action) $(id) $(name)
