execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute as @a[name=$(player),limit=1] run clear @s $(item)[minecraft:custom_data=$(customData)] $(count)
