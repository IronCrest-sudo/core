# ============================================================
# macroengine:systems/uuid/internal/match_fire [MACRO]
# Runs the uuid/match callback.
#
# Call: function macroengine:core/internal/systems/uuid/match_fire with storage macroengine:input {}
# $(func) = macroengine:input func field
# ============================================================
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$data modify storage macroengine:engine _dispatch.func set value "$(func)"
function #macroengine:internal/dispatch
