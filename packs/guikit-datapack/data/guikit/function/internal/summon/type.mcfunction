# macro: $(entity)     (storage guikit:ctx cdef)
# Enabled:0b keeps a hopper_minecart from sucking in dropped items / moving items; other entity types ignore the key.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$summon minecraft:$(entity) ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Enabled:0b,Tags:["guikit.cart","guikit.new"]}
