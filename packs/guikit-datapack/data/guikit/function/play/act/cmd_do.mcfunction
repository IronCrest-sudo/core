# macro: $(cmd)     stored by an operator; runs at function permission level
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute as @s at @s run $(cmd)
