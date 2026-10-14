# macro: $(menu)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:lib menus.$(menu).published set value 1b
