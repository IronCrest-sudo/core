execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute store result storage guikit:ctx pid int 1 run scoreboard players get @s guikit.pid
function guikit:editor/save_state_do with storage guikit:ctx
