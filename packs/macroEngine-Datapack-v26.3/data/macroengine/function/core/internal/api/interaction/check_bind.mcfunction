execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine _dispatch.func set value "$(func)"
$execute if entity @e[type=minecraft:interaction,tag=macroengine.ia_active,tag=$(tag),limit=1] run function #macroengine:internal/dispatch
