# Ticks down each player's cooldown, floored at 0
execute unless score #quickshare.version vortaforge.gate matches 1 run return 0
execute as @a[scores={qs_cooldown=1..}] run scoreboard players remove @s qs_cooldown 1
