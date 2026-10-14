# macro: $(n) $(page) $(slot)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:w id set value "p$(n)_$(page)_$(slot)"
