execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute store result score #tab guikit.tmp run data get storage guikit:work w.to
execute if score @s guikit.page = #tab guikit.tmp if data storage guikit:work w.active_item run data modify storage guikit:work w.item set from storage guikit:work w.active_item
execute if score @s guikit.page = #tab guikit.tmp run data modify storage guikit:work w.name set value {text:"Current page",color:"green",italic:false}
