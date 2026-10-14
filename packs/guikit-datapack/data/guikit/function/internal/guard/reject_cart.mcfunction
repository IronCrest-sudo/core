# Non-owner right-clicked the cart itself (guard was not covering it yet).
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:internal/guard/reject
execute as @e[type=#guikit:container,tag=guikit.cart,distance=..8,sort=nearest,limit=1] at @s run function guikit:internal/guard/force_show
