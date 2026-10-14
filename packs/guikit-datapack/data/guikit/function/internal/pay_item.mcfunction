# macro: $(item) $(count)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
scoreboard players set #paid guikit.tmp 0
$execute store result score #have guikit.tmp run clear @s $(item) 0
$execute if score #have guikit.tmp matches $(count).. run scoreboard players set #paid guikit.tmp 1
$execute if score #paid guikit.tmp matches 1 run clear @s $(item) $(count)
