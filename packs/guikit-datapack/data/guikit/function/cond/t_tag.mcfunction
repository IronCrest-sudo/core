# macro: $(tag)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute if entity @s[tag=$(tag)] run scoreboard players set #cond guikit.tmp 1
