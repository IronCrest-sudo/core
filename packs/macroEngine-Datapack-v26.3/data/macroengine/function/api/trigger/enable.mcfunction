execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{trigger:0b} run return 0
$scoreboard players enable $(player) macroengine_action