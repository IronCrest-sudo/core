# macro: $(i)     as player   same weight resolution as internal/random/sum_pick
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
data remove storage guikit:rwd cur
$data modify storage guikit:rwd cur set from storage guikit:rwd items[$(i)]
execute unless data storage guikit:rwd cur.weight run data modify storage guikit:rwd cur.weight set value 1
execute store result score #rwd_w guikit.tmp run data get storage guikit:rwd cur.weight
execute if score #rwd_w guikit.tmp matches ..0 run scoreboard players set #rwd_w guikit.tmp 1
scoreboard players operation #rwd_hi guikit.tmp = #rwd_lo guikit.tmp
scoreboard players operation #rwd_hi guikit.tmp += #rwd_w guikit.tmp
scoreboard players remove #rwd_hi guikit.tmp 1
execute if score #rwd_roll guikit.tmp >= #rwd_lo guikit.tmp if score #rwd_roll guikit.tmp <= #rwd_hi guikit.tmp run function guikit:internal/random/pick_run with storage guikit:rwd cur
execute if score #rwd_roll guikit.tmp >= #rwd_lo guikit.tmp if score #rwd_roll guikit.tmp <= #rwd_hi guikit.tmp run scoreboard players set #rwd_done guikit.tmp 1
scoreboard players operation #rwd_lo guikit.tmp = #rwd_hi guikit.tmp
scoreboard players add #rwd_lo guikit.tmp 1
