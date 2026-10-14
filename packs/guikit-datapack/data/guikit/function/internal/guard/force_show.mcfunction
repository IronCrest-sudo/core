# as cart, at cart. Used when a non-owner managed to click the cart itself.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
scoreboard players operation #guid guikit.tmp = @s guikit.uid
function guikit:internal/guard/show
