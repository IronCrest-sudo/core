execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute as @a[tag=guikit.dialog] at @s run function guikit:editor/show_dialog_as
tag @a remove guikit.dialog
