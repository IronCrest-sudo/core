# macro: $(i)     as cart
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$item replace entity @s container.$(i) with minecraft:air
