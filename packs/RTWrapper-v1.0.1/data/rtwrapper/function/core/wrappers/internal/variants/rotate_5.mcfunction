# RTWrapper generated 5-parameter macro variant for /rotate.
# Parameters: target, rotation_or_facing, facing_position, facing_entity, facing_anchor
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$rotate $(target) $(rotation_or_facing) $(facing_position) $(facing_entity) $(facing_anchor)
