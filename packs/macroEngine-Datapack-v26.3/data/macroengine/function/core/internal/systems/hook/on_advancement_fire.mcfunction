# macroengine:systems/hook/internal/on_advancement_fire [MACRO]
# INPUT: $(advancement)
# @s = player who earned the advancement

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine _hook_fire_tmp set value {event:"advancement:$(advancement)"}
function macroengine:core/internal/systems/hook/fire with storage macroengine:engine _hook_fire_tmp
data remove storage macroengine:engine _hook_fire_tmp