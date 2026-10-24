# guikit :: runtime/welcome     once per player
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
tag @s add guikit.welcomed
tellraw @s [{"text":"[guikit] ","color":"gold"},{"text":"/trigger guikit.open","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger guikit.open"}},{"text":" opens the menu. ","color":"gray"},{"text":"/trigger guikit.last","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger guikit.last"}},{"text":" reopens the last menu, ","color":"gray"},{"text":"guikit.close","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger guikit.close"}},{"text":" closes it.","color":"gray"}]
