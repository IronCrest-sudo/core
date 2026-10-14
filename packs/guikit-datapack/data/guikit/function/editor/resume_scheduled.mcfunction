# scheduled — chest must not open on the same tick a dialog closes
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute as @a[tag=guikit.resume] at @s run function guikit:editor/resume
tag @a remove guikit.resume
