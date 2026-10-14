# Gate 2 - operator approve (same result as a player's /trigger, for servers that approve via function).
scoreboard players set #guikit.permit vortaforge.gate 1
tellraw @a {"text":"[guikit] Approved by an operator.","color":"green"}
