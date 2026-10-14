# macro: $(adv)
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$execute if entity @s[advancements={$(adv)=true}] run scoreboard players set #cond guikit.tmp 1
