# macroengine:systems/hook/internal/on_fish_caught
# @s = the fishing player
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
scoreboard players add @s macroengine.hook_fish 1
advancement revoke @s only macroengine:systems/hook/fish_caught
