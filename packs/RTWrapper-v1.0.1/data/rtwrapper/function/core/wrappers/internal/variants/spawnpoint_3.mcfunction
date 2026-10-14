# RTWrapper generated 3-parameter macro variant for /spawnpoint.
# Parameters: targets, pos, angle
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$spawnpoint $(targets) $(pos) $(angle)
