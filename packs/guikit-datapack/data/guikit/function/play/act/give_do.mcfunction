# macro: $(give) $(count)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$give @s $(give) $(count)
