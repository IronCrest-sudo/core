execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute as @a[scores={$(name)=1..}] run function macroengine:core/internal/api/perm/trigger/player_dispatch with storage macroengine:engine _pt_tick_ctx

$execute as @a run scoreboard players enable @s $(name)
