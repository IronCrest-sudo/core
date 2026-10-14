execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine _dispatch.func set value "$(func)"
execute as @a at @s run function #macroengine:internal/dispatch
