# macro: $(obj) $(amount)     as player
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute unless score @s $(obj) matches $(amount).. run scoreboard players set #cond guikit.tmp 0
