# RTWrapper generated 7-parameter macro variant for /place.
# Parameters: type, id, pos, rotation, mirror, integrity, seed
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$place $(type) $(id) $(pos) $(rotation) $(mirror) $(integrity) $(seed)
