execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute as @a[name=$(player),limit=1] at @s run item replace entity @s weapon.mainhand from entity @e[type=minecraft:chest_minecart,distance=..2,limit=1,tag=$(tag)] container.$(slot)
