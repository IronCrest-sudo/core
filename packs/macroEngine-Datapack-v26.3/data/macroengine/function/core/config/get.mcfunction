# macroengine:core/config/get
# Reads one runtime config value.
# INPUT  macroengine:engine config_in.key   (reload_warn, tick_rate, hud_rate, admin_rate, log_level)
# OUTPUT macroengine:output result          the value (removed first, so a stale value never survives a miss)
# RETURN 1 when the key exists, 0 otherwise.
data remove storage macroengine:output result
execute if data storage macroengine:engine config_in{key:"reload_warn"} run data modify storage macroengine:output result set from storage macroengine:engine config.reload_warn
execute if data storage macroengine:engine config_in{key:"tick_rate"} run data modify storage macroengine:output result set from storage macroengine:engine config.tick_rate
execute if data storage macroengine:engine config_in{key:"hud_rate"} run data modify storage macroengine:output result set from storage macroengine:engine config.hud_rate
execute if data storage macroengine:engine config_in{key:"admin_rate"} run data modify storage macroengine:output result set from storage macroengine:engine config.admin_rate
execute if data storage macroengine:engine config_in{key:"log_level"} run data modify storage macroengine:output result set from storage macroengine:engine config.log_level
execute if data storage macroengine:output result run return 1
return 0
