# macro: $(i)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
data remove storage guikit:cnd cur
$data modify storage guikit:cnd cur set from storage guikit:cnd items[$(i)]
