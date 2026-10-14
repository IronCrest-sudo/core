# RTWrapper generated 5-parameter macro variant for /teleport.
# Parameters: target, x, y, z, rotation
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$teleport $(target) $(x) $(y) $(z) $(rotation)
