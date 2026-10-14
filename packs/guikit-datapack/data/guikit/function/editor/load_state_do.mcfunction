# macro: $(pid)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
data remove storage guikit:ed cur
$data modify storage guikit:ed cur set from storage guikit:ed p$(pid)
execute unless data storage guikit:ed cur run data modify storage guikit:ed cur set value {screen:"home",page:0,list_page:0,menu:"-",slot:-1}
