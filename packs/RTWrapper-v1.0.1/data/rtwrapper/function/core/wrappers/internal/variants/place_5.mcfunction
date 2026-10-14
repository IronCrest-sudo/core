# RTWrapper generated 5-parameter macro variant for /place.
# Parameters: type, id, pos, rotation, mirror
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$place $(type) $(id) $(pos) $(rotation) $(mirror)
