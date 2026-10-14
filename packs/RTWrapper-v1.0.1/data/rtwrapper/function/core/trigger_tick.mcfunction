# Polls every registered trigger objective for every online player once per tick,
# firing enabled ones whose score is non-zero for that player, then applying reset_mode.
execute unless score #rtwrapper.gate.1 vortaforge.gate matches 0 unless score #rtwrapper.version vortaforge.gate matches 1 run return 0
execute unless score #rtwrapper.gate.2 vortaforge.gate matches 0 unless score #rtwrapper.permit vortaforge.gate matches 1 run return 0
execute if data storage rtwrapper:triggers registry[0] as @a at @s run data modify storage rtwrapper:runtime trigger_poll set value {index:0}
execute if data storage rtwrapper:triggers registry[0] as @a at @s run function rtwrapper:core/trigger/poll_step with storage rtwrapper:runtime trigger_poll
