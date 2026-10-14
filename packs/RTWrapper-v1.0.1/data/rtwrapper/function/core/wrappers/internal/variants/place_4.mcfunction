# RTWrapper generated 4-parameter macro variant for /place.
# Parameters: type, id, pos, rotation
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$place $(type) $(id) $(pos) $(rotation)
