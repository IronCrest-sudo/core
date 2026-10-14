# macro: $(pid)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ed p$(pid) set from storage guikit:ed cur
