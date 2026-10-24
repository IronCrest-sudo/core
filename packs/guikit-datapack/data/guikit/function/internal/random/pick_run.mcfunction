# guikit :: internal/random/pick_run   as player at player   storage guikit:rwd cur = {weight,[cmd],[msg]}
# `cmd` reuses the existing guikit:internal/btn/cmd macro ($(cmd) can be "function ns:name"
# to run several commands, same convention as the cmd widget / internal/btn/click).
execute unless score #guikit.open vortaforge.gate matches 1 run return 0
execute if entity @s[type=minecraft:player] unless entity @s[tag=guikit.consented] unless score #guikit.gate.3 vortaforge.gate matches 0 run return 0
execute if data storage guikit:rwd cur.cmd run function guikit:internal/btn/cmd with storage guikit:rwd cur
execute if data storage guikit:rwd cur.msg run tellraw @s [{"text":"[GUI] ","color":"gray"},{"nbt":"cur.msg","storage":"guikit:rwd","interpret":false}]
