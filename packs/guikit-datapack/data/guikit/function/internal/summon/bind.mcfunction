# macro: $(uid)     as player
# Keeps the resolved container definition for this owner while the menu is open (widget/pad reads it).
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:cont bound.u$(uid) set from storage guikit:ctx cdef
