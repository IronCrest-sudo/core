# macro: $(n) $(page) $(slot)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$data modify storage guikit:ed widget.key set value "m$(n)_$(page)_$(slot)"
