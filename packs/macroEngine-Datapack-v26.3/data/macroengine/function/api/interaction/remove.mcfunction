execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{interaction:0b} run return 0
$kill @e[type=minecraft:interaction,tag=$(tag)]