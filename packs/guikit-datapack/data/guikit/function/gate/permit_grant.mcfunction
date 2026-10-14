# Gate 2 - run as the player who typed /trigger guikit.permit set 1.
scoreboard players set #guikit.permit vortaforge.gate 1
tellraw @a [{"text":"[guikit] Approved by ","color":"green"},{"selector":"@s"},{"text":". An operator can revoke with /function guikit:gate/revoke","color":"gray"}]
scoreboard players reset @s guikit.permit
