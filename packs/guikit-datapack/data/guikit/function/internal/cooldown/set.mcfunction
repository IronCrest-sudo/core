# macro: $(ticks)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$scoreboard players set @s guikit.cd $(ticks)
