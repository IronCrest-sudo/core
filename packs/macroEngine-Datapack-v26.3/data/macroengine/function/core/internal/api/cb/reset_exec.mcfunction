# Macro: receives {x, y, z}
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify block $(x) $(y) $(z) auto set value 0b
$setblock $(x) $(y) $(z) minecraft:air replace
$forceload remove $(x) $(z)
