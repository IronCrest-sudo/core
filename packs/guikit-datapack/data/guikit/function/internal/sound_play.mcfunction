# macro: $(sound) $(volume) $(pitch)     as player, at player
# `ui` category so it follows the client's "Master" slider only, not music/blocks/hostile.
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
$playsound $(sound) ui @s ~ ~ ~ $(volume) $(pitch)
