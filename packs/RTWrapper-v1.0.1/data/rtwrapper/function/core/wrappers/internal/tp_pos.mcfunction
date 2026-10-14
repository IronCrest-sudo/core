# Convenience macro wrapper for: /tp <target> <x> <y> <z>
# Required storage keys: target, x, y, z.
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$tp $(target) $(x) $(y) $(z)
