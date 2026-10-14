# macroengine:systems/hook/on_hero_of_the_village
# Reward: hero_of_the_village advancement (raid victory)
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{hook:0b} run return 0
advancement revoke @s only macroengine:systems/hook/hero_of_the_village
scoreboard players add @s macroengine.hook_hero_of_the_village 1
