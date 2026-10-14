# RTWrapper generated 5-parameter macro variant for /tp.
# Parameters: target, x, y, z, rotation
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tp $(target) $(x) $(y) $(z) $(rotation)
