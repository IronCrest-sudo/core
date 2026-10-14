# RTWrapper generated 7-parameter macro variant for /teleport.
# Parameters: target, x, y, z, rotation, facing_mode, facing_target
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$teleport $(target) $(x) $(y) $(z) $(rotation) $(facing_mode) $(facing_target)
