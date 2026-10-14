# macro: $(id)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ed pending.alias set from storage guikit:reg menus."guikit:m/$(id)".alias
