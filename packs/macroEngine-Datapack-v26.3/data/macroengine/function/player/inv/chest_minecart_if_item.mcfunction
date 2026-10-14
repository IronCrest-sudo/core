execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute as @a[name=$(player),limit=1] at @s if items entity @e[type=minecraft:chest_minecart,distance=..2,limit=1,tag=$(tag)] container.$(slot) $(item)[minecraft:custom_data=$(customData)] run $(invoke)
