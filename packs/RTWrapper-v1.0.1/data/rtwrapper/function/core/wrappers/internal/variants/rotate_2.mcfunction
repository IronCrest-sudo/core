# RTWrapper generated 2-parameter macro variant for /rotate.
# Parameters: target, rotation_or_facing
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$rotate $(target) $(rotation_or_facing)
