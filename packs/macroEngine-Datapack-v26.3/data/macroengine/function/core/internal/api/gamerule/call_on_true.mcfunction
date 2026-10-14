# macroengine:api/gamerule/internal/call_on_true [MACRO]
# Calls the gr_on_true callback. Called by dispatch only.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$function $(gr_on_true)
