# guikit :: internal/btn/clear_cur
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
data remove storage guikit:btn cur
