# RTWrapper trigger-module bootstrap. Idempotent - safe to call every /reload.
execute unless score #rtwrapper.gate.1 vortaforge.gate matches 0 unless score #rtwrapper.version vortaforge.gate matches 1 run return 0
scoreboard objectives add rtw.status dummy
execute unless data storage rtwrapper:triggers registry run data modify storage rtwrapper:triggers registry set value []
