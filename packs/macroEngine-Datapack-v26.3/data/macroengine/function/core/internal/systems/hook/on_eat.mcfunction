# macroengine:systems/hook/internal/on_eat
# @s = the eating player
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
scoreboard players add @s macroengine.hook_eat 1
advancement revoke @s only macroengine:systems/hook/eat_food
