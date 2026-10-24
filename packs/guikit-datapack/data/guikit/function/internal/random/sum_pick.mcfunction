# macro: $(i)     as player   loads rewards[$(i)].weight (default 1) into #rwd_w, adds it to the total
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
data remove storage guikit:rwd cur
$data modify storage guikit:rwd cur set from storage guikit:rwd items[$(i)]
execute unless data storage guikit:rwd cur.weight run data modify storage guikit:rwd cur.weight set value 1
execute store result score #rwd_w guikit.tmp run data get storage guikit:rwd cur.weight
execute if score #rwd_w guikit.tmp matches ..0 run scoreboard players set #rwd_w guikit.tmp 1
scoreboard players operation #rwd_total guikit.tmp += #rwd_w guikit.tmp
