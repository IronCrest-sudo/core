# macro: $(pid) $(n) $(page) $(slot) $(end)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$scoreboard players set p$(pid)_c$(n)_$(page)_$(slot) guikit.var $(end)
