# guikit :: play/act/random   as player at player   called by play/act for kind:"random"
# storage guikit:work w.rewards = [{weight, cmd, msg}, ...]   (weight: positive int, default 1
# if missing/invalid; ties go to whichever reward comes first in the list)
# Picks one reward by cumulative weight out of a 0..total-1 roll — same semantics as
# guigen's `random` widget, just resolved at click time instead of at build time.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute unless data storage guikit:work w.rewards run return 0
data modify storage guikit:rwd items set from storage guikit:work w.rewards
execute store result score #rwd_n guikit.tmp run data get storage guikit:rwd items
execute unless score #rwd_n guikit.tmp matches 1.. run return 0

# pass 1 — total weight
scoreboard players set #rwd_total guikit.tmp 0
scoreboard players set #rwd_i guikit.tmp 0
function guikit:internal/random/sum_step
execute unless score #rwd_total guikit.tmp matches 1.. run return 0

# roll 0..total-1 (reuses the existing dice primitive, guikit:internal/roll)
scoreboard players operation #rwd_hi guikit.tmp = #rwd_total guikit.tmp
scoreboard players remove #rwd_hi guikit.tmp 1
execute store result storage guikit:rwd max int 1 run scoreboard players get #rwd_hi guikit.tmp
function guikit:internal/roll with storage guikit:rwd
scoreboard players operation #rwd_roll guikit.tmp = #roll guikit.tmp
data remove storage guikit:rwd max
scoreboard players reset #roll guikit.tmp

# pass 2 — find the bucket containing the roll and run it
scoreboard players set #rwd_i guikit.tmp 0
scoreboard players set #rwd_lo guikit.tmp 0
scoreboard players set #rwd_done guikit.tmp 0
function guikit:internal/random/pick_step
data remove storage guikit:rwd items
data remove storage guikit:rwd cur
