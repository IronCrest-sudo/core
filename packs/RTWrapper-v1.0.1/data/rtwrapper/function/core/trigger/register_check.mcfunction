# Macro: called with storage rtwrapper:api trigger (fields: objective, action, reset_mode).
# Fails (no-op) if the objective is already registered.
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$execute if data storage rtwrapper:triggers registry[{objective:"$(objective)"}] run return fail
function rtwrapper:core/trigger/register_apply with storage rtwrapper:api trigger
