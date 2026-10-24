# guikit :: internal/random/sum_step   as player   recursive, one reward per call
# Accumulates into #rwd_total guikit.tmp.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute unless score #rwd_i guikit.tmp < #rwd_n guikit.tmp run return 0
execute store result storage guikit:rwd i int 1 run scoreboard players get #rwd_i guikit.tmp
function guikit:internal/random/sum_pick with storage guikit:rwd
scoreboard players add #rwd_i guikit.tmp 1
function guikit:internal/random/sum_step
