# macro: $(pred)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute if predicate $(pred) run scoreboard players set #cond guikit.tmp 1
