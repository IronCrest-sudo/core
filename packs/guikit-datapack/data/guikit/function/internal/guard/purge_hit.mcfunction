# macro: $(slot)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
scoreboard players set #purged guikit.tmp 1
$item replace entity @s $(slot) with minecraft:air
