# guikit :: play/indicator_visual   as player   called by play/draw_one for kind:"indicator"
# storage guikit:work w = {slot,kind:"indicator",obj:"<objective>",item,name,lore,
#                           states:[{matches:"<score range>", item, name, lore}, ...]}
# w.item/w.name/w.lore (already on the widget) are the fallback when no state's `matches`
# contains the live score. States are tried in list order; first match wins.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute unless data storage guikit:work w.states run return 0
execute unless data storage guikit:work w.obj run return 0
data modify storage guikit:ind obj set from storage guikit:work w.obj
function guikit:internal/indicator/read_score with storage guikit:ind
data remove storage guikit:ind obj
data modify storage guikit:ind items set from storage guikit:work w.states
execute store result score #ind_n guikit.tmp run data get storage guikit:ind items
execute unless score #ind_n guikit.tmp matches 1.. run return 0
scoreboard players set #ind_i guikit.tmp 0
scoreboard players set #ind_found guikit.tmp 0
function guikit:internal/indicator/step
data remove storage guikit:ind items
data remove storage guikit:ind cur
