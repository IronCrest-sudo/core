execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:editor/load_state
function guikit:editor/save_state
tag @s add guikit.preview
schedule function guikit:editor/preview_scheduled 2t
