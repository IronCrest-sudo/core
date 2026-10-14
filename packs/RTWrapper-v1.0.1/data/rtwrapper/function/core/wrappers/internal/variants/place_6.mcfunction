# RTWrapper generated 6-parameter macro variant for /place.
# Parameters: type, id, pos, rotation, mirror, integrity
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$place $(type) $(id) $(pos) $(rotation) $(mirror) $(integrity)
