# macro: $(obj) $(value)      as player      (called by widget/radio)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$scoreboard players set @s $(obj) $(value)
