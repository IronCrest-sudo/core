execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute as @a[name=$(player),limit=1] at @s if items entity @s $(slot) $(item)[minecraft:custom_data=$(customData)] run $(invoke)
