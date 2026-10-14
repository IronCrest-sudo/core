# RTWrapper generated 8-parameter macro variant for /tp.
# Parameters: target, x, y, z, rotation, facing_mode, facing_target, facing_anchor
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tp $(target) $(x) $(y) $(z) $(rotation) $(facing_mode) $(facing_target) $(facing_anchor)
