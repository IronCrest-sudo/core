execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
scoreboard players set #debug rtw.config 0
data modify storage rtwrapper:runtime config.debug set value 0b
tellraw @s [{"text":"[RTWrapper] debug off","color":"gold"}]
