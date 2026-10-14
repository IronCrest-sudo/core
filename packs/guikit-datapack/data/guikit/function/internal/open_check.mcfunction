# macro: $(menu)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute if data storage guikit:reg menus."$(menu)" run scoreboard players set #ok guikit.const 1
$execute unless data storage guikit:reg menus."$(menu)" run tellraw @s [{"text":"[guikit] ","color":"gray"},{"text":"unknown menu: $(menu)","color":"red"}]
