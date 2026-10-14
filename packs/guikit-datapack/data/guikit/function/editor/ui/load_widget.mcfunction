# Copy the widget in cur.slot into guikit:ed widget. #ok = 1 if that slot has one.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
scoreboard players set #ok guikit.tmp 0
function guikit:editor/read_menu
execute store result storage guikit:work page int 1 run data get storage guikit:ed cur.page
function guikit:editor/edit/load_src with storage guikit:work
function guikit:editor/ui/load_widget_loop
