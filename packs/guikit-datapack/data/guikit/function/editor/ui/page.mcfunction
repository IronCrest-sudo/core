# macro: $(page) $(kind)     kind is a fixed dialog option: page | tab
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
function guikit:editor/load_state
function guikit:editor/ui/begin_widget
data modify storage guikit:ed widget.kind set value "$(kind)"
data modify storage guikit:ed widget.item set value "minecraft:arrow"
data modify storage guikit:ed widget.name set value {text:"Go to page",italic:false}
execute if data storage guikit:ed widget{kind:"tab"} run data modify storage guikit:ed widget.active_item set value "minecraft:lime_dye"
execute if data storage guikit:ed widget{kind:"tab"} run data modify storage guikit:ed widget.name set value {text:"Page tab",italic:false}
data modify storage guikit:ed widget.lore set value []
function guikit:editor/ui/apply_hand
$execute store result storage guikit:ed widget.to int 1 run scoreboard players set #to guikit.tmp $(page)
function guikit:editor/edit/upsert
function guikit:editor/save_state
function guikit:editor/schedule_resume
