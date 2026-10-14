execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
scoreboard players set #silent rtw.config 1
data modify storage rtwrapper:runtime config.silent set value 1b
tellraw @s [{"text":"[RTWrapper] silent on","color":"gold"}]
