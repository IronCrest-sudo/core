# guikit :: internal/indicator/step   as player   recursive, one state per call
# Reads score #ind_i / #ind_n / #ind_val guikit.tmp, storage guikit:ind items (list).
# Stops as soon as #ind_found guikit.tmp is set by internal/indicator/test.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute if score #ind_found guikit.tmp matches 1 run return 0
execute unless score #ind_i guikit.tmp < #ind_n guikit.tmp run return 0
execute store result storage guikit:ind i int 1 run scoreboard players get #ind_i guikit.tmp
function guikit:internal/indicator/apply with storage guikit:ind
scoreboard players add #ind_i guikit.tmp 1
function guikit:internal/indicator/step
