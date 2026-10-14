# macro: $(obj) $(amount)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
scoreboard players set #paid guikit.tmp 0
$execute if score @s $(obj) matches $(amount).. run scoreboard players set #paid guikit.tmp 1
$execute if score #paid guikit.tmp matches 1 run scoreboard players remove @s $(obj) $(amount)
