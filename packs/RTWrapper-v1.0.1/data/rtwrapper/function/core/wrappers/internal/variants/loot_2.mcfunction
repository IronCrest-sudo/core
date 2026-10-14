# RTWrapper generated 2-parameter macro variant for /loot.
# Parameters: action, target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$loot $(action) $(target)
