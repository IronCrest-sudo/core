execute unless score #guikit.open vortaforge.gate matches 1 run return 0
data modify storage guikit:work rev set value []
function guikit:browse/reverse_loop
data modify storage guikit:work src set from storage guikit:work rev
