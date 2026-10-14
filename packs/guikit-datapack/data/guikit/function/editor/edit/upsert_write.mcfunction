# macro: $(menu) $(page)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:lib menus.$(menu).pages[$(page)].widgets set from storage guikit:work out
