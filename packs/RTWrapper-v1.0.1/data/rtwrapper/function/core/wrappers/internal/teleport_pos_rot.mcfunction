# Convenience macro wrapper for: /teleport <targets> <x> <y> <z> <rotation>
# Required storage keys: targets, x, y, z, rotation.
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$teleport $(targets) $(x) $(y) $(z) $(rotation)
