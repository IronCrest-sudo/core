# macro: $(min) $(max)
# Shared numeric range check for player NBT values. Uses two open-ended ranges for compatibility.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
scoreboard players set #cond guikit.tmp 1
$execute unless score #cval guikit.tmp matches $(min).. run scoreboard players set #cond guikit.tmp 0
$execute unless score #cval guikit.tmp matches ..$(max) run scoreboard players set #cond guikit.tmp 0
