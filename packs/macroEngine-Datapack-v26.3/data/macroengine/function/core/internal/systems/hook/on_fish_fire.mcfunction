# macroengine:systems/hook/internal/on_fish_fire
# @s = the fishing player
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
data modify storage macroengine:engine _hook_fire_tmp set value {event:"fish_caught"}
function macroengine:core/internal/systems/hook/fire with storage macroengine:engine _hook_fire_tmp
data remove storage macroengine:engine _hook_fire_tmp
