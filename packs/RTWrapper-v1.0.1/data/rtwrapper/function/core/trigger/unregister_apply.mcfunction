# Macro: called with storage rtwrapper:api trigger (field: objective).
execute unless score #rtwrapper.open vortaforge.gate matches 1 run return 0
$data remove storage rtwrapper:triggers registry[{objective:"$(objective)"}]
