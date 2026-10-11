# macroengine:core/config/set
# Sets one runtime config value and applies it at once. Only the keys below exist; an unknown
# key changes nothing. Input and key are plain data, nothing is pasted into a command.
#
# INPUT  macroengine:engine config_in.key    one of: reload_warn, tick_rate, hud_rate, admin_rate, log_level
#        macroengine:engine config_in.value  a number (reload_warn: 0 = off, 1 or more = on)
# RETURN 1 when the key is known and the value was applied, 0 otherwise.
#
# Usage:
#   data modify storage macroengine:engine config_in set value {key:"hud_rate",value:5}
#   function macroengine:core/config/set
scoreboard players set #cfg_known macroengine.tmp 0
execute unless data storage macroengine:engine config_in.value run return 0
execute store result score #cfg_in macroengine.tmp run data get storage macroengine:engine config_in.value
execute if data storage macroengine:engine config_in{key:"tick_rate"} run scoreboard players set #cfg_known macroengine.tmp 1
execute if data storage macroengine:engine config_in{key:"tick_rate"} store result storage macroengine:engine config.tick_rate int 1 run scoreboard players get #cfg_in macroengine.tmp
execute if data storage macroengine:engine config_in{key:"hud_rate"} run scoreboard players set #cfg_known macroengine.tmp 1
execute if data storage macroengine:engine config_in{key:"hud_rate"} store result storage macroengine:engine config.hud_rate int 1 run scoreboard players get #cfg_in macroengine.tmp
execute if data storage macroengine:engine config_in{key:"admin_rate"} run scoreboard players set #cfg_known macroengine.tmp 1
execute if data storage macroengine:engine config_in{key:"admin_rate"} store result storage macroengine:engine config.admin_rate int 1 run scoreboard players get #cfg_in macroengine.tmp
execute if data storage macroengine:engine config_in{key:"log_level"} run scoreboard players set #cfg_known macroengine.tmp 1
execute if data storage macroengine:engine config_in{key:"log_level"} store result storage macroengine:engine config.log_level int 1 run scoreboard players get #cfg_in macroengine.tmp
execute if data storage macroengine:engine config_in{key:"reload_warn"} run scoreboard players set #cfg_known macroengine.tmp 1
execute if data storage macroengine:engine config_in{key:"reload_warn"} if score #cfg_in macroengine.tmp matches ..0 run data modify storage macroengine:engine config.reload_warn set value 0b
execute if data storage macroengine:engine config_in{key:"reload_warn"} if score #cfg_in macroengine.tmp matches 1.. run data modify storage macroengine:engine config.reload_warn set value 1b
execute if score #cfg_known macroengine.tmp matches 0 run return 0
function macroengine:core/config/apply
return 1
