execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
scoreboard players add $epoch macroengine.time 1
scoreboard players add $tick macroengine.tmp 1

scoreboard players set $pq_depth macroengine.tmp 0
