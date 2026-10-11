# macroengine:core/config/apply
# Copies the runtime config in macroengine:engine config to the scores the engine reads.
# Called after every load and by core/config/set. Values are clamped, so a bad value in storage
# can never stop the tick or divide by zero.
#
#   config.tick_rate   -> #vortacraftmc.packs.macroengine.config.tick.rate (macroengine.meta)   min 1
#   config.hud_rate    -> #hud_rate   (macroengine.tick)                                         min 1
#   config.admin_rate  -> #admin_rate (macroengine.tick)                                         min 1
#   config.log_level   -> #macroengine.log_level (macroengine.log_level)                         0..4
#   config.reload_warn is read directly by core/internal/load/main
execute store result score #cfg_v macroengine.tmp run data get storage macroengine:engine config.tick_rate
execute if score #cfg_v macroengine.tmp matches ..0 run scoreboard players set #cfg_v macroengine.tmp 1
scoreboard players operation #vortacraftmc.packs.macroengine.config.tick.rate macroengine.meta = #cfg_v macroengine.tmp
execute store result storage macroengine:engine config.tick_rate int 1 run scoreboard players get #cfg_v macroengine.tmp

execute store result score #cfg_v macroengine.tmp run data get storage macroengine:engine config.hud_rate
execute if score #cfg_v macroengine.tmp matches ..0 run scoreboard players set #cfg_v macroengine.tmp 1
scoreboard players operation #hud_rate macroengine.tick = #cfg_v macroengine.tmp
execute store result storage macroengine:engine config.hud_rate int 1 run scoreboard players get #cfg_v macroengine.tmp

execute store result score #cfg_v macroengine.tmp run data get storage macroengine:engine config.admin_rate
execute if score #cfg_v macroengine.tmp matches ..0 run scoreboard players set #cfg_v macroengine.tmp 1
scoreboard players operation #admin_rate macroengine.tick = #cfg_v macroengine.tmp
execute store result storage macroengine:engine config.admin_rate int 1 run scoreboard players get #cfg_v macroengine.tmp

execute store result score #cfg_v macroengine.tmp run data get storage macroengine:engine config.log_level
execute if score #cfg_v macroengine.tmp matches ..-1 run scoreboard players set #cfg_v macroengine.tmp 0
execute if score #cfg_v macroengine.tmp matches 5.. run scoreboard players set #cfg_v macroengine.tmp 4
scoreboard players operation #macroengine.log_level macroengine.log_level = #cfg_v macroengine.tmp
execute store result storage macroengine:engine config.log_level int 1 run scoreboard players get #cfg_v macroengine.tmp
