# macro: $(count)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:w lore append value {text:"$(count) menus",color:"white",italic:false}
