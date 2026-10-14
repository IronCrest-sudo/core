execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
tag @s remove rtwrapper.debug
tellraw @s [{"text":"[RTWrapper] debug listener removed","color":"gold"}]
