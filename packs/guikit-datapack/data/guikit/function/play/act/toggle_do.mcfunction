# macro: $(pid) $(key)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute store success score #flip guikit.tmp unless score p$(pid)_$(key) guikit.var matches 1
$scoreboard players set p$(pid)_$(key) guikit.var 0
$execute if score #flip guikit.tmp matches 1 run scoreboard players set p$(pid)_$(key) guikit.var 1
