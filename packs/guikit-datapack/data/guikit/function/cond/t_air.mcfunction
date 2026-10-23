# Range in remaining air supply (0..300 ticks). The lower bound defaults to 0.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute unless data storage guikit:cond min run data modify storage guikit:cond min set value 0
execute unless data storage guikit:cond max run data modify storage guikit:cond max set value 2147483647
execute store result score #cval guikit.tmp run data get entity @s Air
function guikit:cond/t_range with storage guikit:cond
