# macro: $(menu) $(page)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute if data storage guikit:lib menus.$(menu).pages[$(page)] run return 0
$data modify storage guikit:lib menus.$(menu).pages append value {widgets:[]}
function guikit:editor/edit/ensure_page_do with storage guikit:ed cur
