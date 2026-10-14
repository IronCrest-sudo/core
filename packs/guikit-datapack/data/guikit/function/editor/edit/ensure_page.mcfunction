# appends blank pages until pages[page] exists. $(menu) $(page)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:editor/edit/ensure_page_do with storage guikit:ed cur
