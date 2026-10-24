# macro: $(matches)     as player   storage guikit:ind cur = {matches, [item], [name], [lore]}
# On a hit: marks #ind_found and overwrites storage guikit:work w's item/name/lore from cur.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
$execute unless score #ind_val guikit.tmp matches $(matches) run return 0
scoreboard players set #ind_found guikit.tmp 1
execute if data storage guikit:ind cur.item run data modify storage guikit:work w.item set from storage guikit:ind cur.item
execute if data storage guikit:ind cur.name run data modify storage guikit:work w.name set from storage guikit:ind cur.name
execute if data storage guikit:ind cur.lore run data modify storage guikit:work w.lore set from storage guikit:ind cur.lore
