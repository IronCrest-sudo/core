# macro: $(obj)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute unless score @s $(obj) matches 0.. run scoreboard players set @s $(obj) 0
$execute store success score #flip guikit.tmp if score @s $(obj) matches 0
$scoreboard players operation @s $(obj) = #flip guikit.tmp
