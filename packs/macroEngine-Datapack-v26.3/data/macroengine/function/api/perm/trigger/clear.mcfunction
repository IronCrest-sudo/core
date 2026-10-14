execute unless score #macroengine.open vortaforge.gate matches 1 run return 0
execute if data storage macroengine:engine modules{perm:0b} run return 0
$data remove storage macroengine:engine perm_triggers.$(name)