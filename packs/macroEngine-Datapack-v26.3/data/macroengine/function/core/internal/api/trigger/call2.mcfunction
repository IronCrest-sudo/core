# macroengine:api/trigger/internal/call2 [MACRO]
# No permission gate — runs $(cmd) unconditionally, admins are only notified.

execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
$$(cmd)
