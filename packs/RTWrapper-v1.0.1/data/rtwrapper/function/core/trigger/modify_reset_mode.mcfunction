# Macro: called with storage rtwrapper:api trigger (fields: objective, reset_mode).
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$data modify storage rtwrapper:triggers registry[{objective:"$(objective)"}].reset_mode set from storage rtwrapper:api trigger.reset_mode
