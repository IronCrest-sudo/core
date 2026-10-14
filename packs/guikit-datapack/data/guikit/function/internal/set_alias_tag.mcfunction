# macro: $(alias)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$tag @s add guikit.m.$(alias)
