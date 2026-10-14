# open the list, or redraw it. #keep 1 means browse/open must not wipe guikit.bpage.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[tag=guikit.m.browse] run function guikit:core/redraw
execute if entity @s[tag=guikit.m.browse] run return run scoreboard players set #keep guikit.tmp 0
function guikit:browse/open
scoreboard players set #keep guikit.tmp 0
