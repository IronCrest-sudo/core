# macro: $(ctype)
# Leaves storage guikit:ctx cdef unset when the name is not in the registry.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ctx cdef set from storage guikit:reg containers."$(ctype)"
