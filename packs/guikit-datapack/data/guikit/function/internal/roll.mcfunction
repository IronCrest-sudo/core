# macro: $(max)   inclusive upper bound, e.g. max:99 -> 0..99 (100 outcomes)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute store result score #roll guikit.tmp run random value 0..$(max)
