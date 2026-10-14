# macro: $(uid)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ctx pad set from storage guikit:cont bound.u$(uid).pad
