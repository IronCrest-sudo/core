# macro: $(uid)     as player
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data remove storage guikit:cont bound.u$(uid)
