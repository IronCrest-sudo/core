# RTWrapper generated 6-parameter macro variant for /tp.
# Parameters: target, x, y, z, rotation, facing_mode
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tp $(target) $(x) $(y) $(z) $(rotation) $(facing_mode)
