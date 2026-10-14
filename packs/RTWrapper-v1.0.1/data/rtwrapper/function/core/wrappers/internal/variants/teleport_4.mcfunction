# RTWrapper generated 4-parameter macro variant for /teleport.
# Parameters: target, x, y, z
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$teleport $(target) $(x) $(y) $(z)
