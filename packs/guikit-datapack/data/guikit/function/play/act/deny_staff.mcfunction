execute unless score #guikit.open vortaforge.gate matches 1 run return 0
scoreboard players set #blocked guikit.tmp 1
tellraw @s [{"text":"[GUI] ","color":"gray"},{"text":"You need the staff tag for this button.","color":"red"}]
