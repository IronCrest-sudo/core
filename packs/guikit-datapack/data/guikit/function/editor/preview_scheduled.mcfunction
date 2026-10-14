execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute as @a[tag=guikit.preview] at @s run function guikit:editor/preview_do
tag @a remove guikit.preview
