# guikit :: runtime/sync     register every saved menu into guikit:reg
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
data modify storage guikit:work order set from storage guikit:lib order
function guikit:runtime/sync_step
