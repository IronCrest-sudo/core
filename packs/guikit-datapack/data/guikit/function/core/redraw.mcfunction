# guikit :: redraw      as player
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
scoreboard players set @s guikit.dirty 0
function #guikit:fill
