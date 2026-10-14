execute unless score #guikit.open vortaforge.gate matches 1 run return 0
function guikit:internal/safe_clear
scoreboard players set @s guikit.dirty 1
