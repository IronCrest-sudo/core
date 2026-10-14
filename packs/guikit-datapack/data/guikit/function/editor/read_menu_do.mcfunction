# macro: $(menu)     menu id is m<number>
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
data remove storage guikit:work menu
$data modify storage guikit:work menu set from storage guikit:lib menus.$(menu)
