# RTWrapper generated 2-parameter macro variant for /spawnpoint.
# Parameters: targets, pos
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$spawnpoint $(targets) $(pos)
