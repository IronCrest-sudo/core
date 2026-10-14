# Convenience macro wrapper for: /teleport <targets> <x> <y> <z>
# Required storage keys: targets, x, y, z.
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$teleport $(targets) $(x) $(y) $(z)
