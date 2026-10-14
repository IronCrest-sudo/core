# macro: $(page)     page is an integer we stored
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
data remove storage guikit:work src
$data modify storage guikit:work src set from storage guikit:work menu.pages[$(page)].widgets
execute unless data storage guikit:work src run data modify storage guikit:work src set value []
