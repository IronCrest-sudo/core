# macro: $(pid) $(key)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute unless score p$(pid)_$(key) guikit.var matches 1 run data modify storage guikit:work w.item set from storage guikit:work w.off
$execute unless data storage guikit:work w.off unless score p$(pid)_$(key) guikit.var matches 1 run data modify storage guikit:work w.item set value "minecraft:gray_dye"
