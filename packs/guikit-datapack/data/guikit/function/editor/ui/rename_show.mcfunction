execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute as @a[tag=guikit.rdialog] run dialog show @s guikit:rename_icon
tag @a remove guikit.rdialog
