# macroengine:api/gamerule/internal/call_on_false [MACRO]
# Calls the gr_on_false callback. Called by dispatch only.
execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$function $(gr_on_false)
