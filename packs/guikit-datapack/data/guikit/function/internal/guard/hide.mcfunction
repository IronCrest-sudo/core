# as cart. Remove this owner's guard so they can right-click the cart.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute as @e[type=minecraft:interaction,tag=guikit.guard] if score @s guikit.uid = #guid guikit.tmp run kill @s
