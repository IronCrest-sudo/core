# RTWrapper generated 1-parameter macro variant for /spawn_armor_trims.
# Parameters: target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$spawn_armor_trims $(target)
