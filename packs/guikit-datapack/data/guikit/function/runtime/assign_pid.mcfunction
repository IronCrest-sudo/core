execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute unless score #next_pid guikit.const matches 1.. run scoreboard players set #next_pid guikit.const 1
scoreboard players operation @s guikit.pid = #next_pid guikit.const
scoreboard players add #next_pid guikit.const 1
