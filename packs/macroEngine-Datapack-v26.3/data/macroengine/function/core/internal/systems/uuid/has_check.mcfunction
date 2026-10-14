# ============================================================
# macroengine:systems/uuid/internal/has_check [MACRO FUNCTION]
# Checks key existence in the cache
#
# Call: function macroengine:core/internal/systems/uuid/has_check with storage macroengine:input
# $(key) = name of the key to check
# ============================================================
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$execute if data storage macroengine:engine uuid_cache.$(key) run scoreboard players set $uuid.has macroengine.tmp 1
