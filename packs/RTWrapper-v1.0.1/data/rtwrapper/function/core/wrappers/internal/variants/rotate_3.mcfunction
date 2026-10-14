# RTWrapper generated 3-parameter macro variant for /rotate.
# Parameters: target, rotation_or_facing, facing_position
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$rotate $(target) $(rotation_or_facing) $(facing_position)
