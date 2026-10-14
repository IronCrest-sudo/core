# RTWrapper generated 2-parameter macro variant for /bossbar.
# Parameters: action, id
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$bossbar $(action) $(id)
