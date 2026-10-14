execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute as @a[tag=guikit.xdialog] run dialog show @s guikit:extras
tag @a remove guikit.xdialog
