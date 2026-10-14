execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute store result score @s guikit.page run data get storage guikit:work w.to
scoreboard players set @s guikit.dirty 1
